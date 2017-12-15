#!/bin/bash

. $HOME/bin/fpc-versions.sh

# Set main variables
export MAKE=make
if [ "${HOSTNAME}" == "stadler" ]; then
  export HOST_PC=fpc-sparc64
  export USER=pierre
  export ASTARGET=-32
  # We should try to use automatic output of gcc 
  export gcc_libs_32=` gcc -m32 -print-search-dirs | sed -n "s;libraries: =;;p" | sed "s;:; ;g" | xargs realpath -m | sort | uniq | xargs  ls -1d 2> /dev/null `
  export NEEDED_OPT="-ao-32 -Fo/usr/lib32 -Fl/usr/lib32 -Fl/usr/sparc64-linux-gnu/lib32 -Fl/home/pierre/local/lib32"
  # Set until I find out how to cross-compile GDB for sparc32
  export NOGDB=1
  export DO_TESTS=1
elif [ "${HOSTNAME}" == "deb4g" ]; then
  export HOST_PC=fpc-sparc64-T5
  export USER=pierre
  export ASTARGET=-32
  export NEEDED_OPT="-ao-32 -Fo/usr/lib32 -Fl/usr/lib32 -Fl/usr/sparc64-linux-gnu/lib32 -Fl/home/pierre/local/lib32"
  # Set until I find out how to cross-compile GDB for sparc32
  export NOGDB=1
  export DO_TESTS=0
else
  HOST_PC=${HOSTNAME}
  export DO_TESTS=0
fi

if [ "X$USER" == "X" ]; then
  USER=$LOGNAME
fi

if [ "X$FPCBIN" == "X" ]; then
  FPCBIN=ppcsparc
fi

DATE="date +%Y-%m-%d-%H-%M"
# Use Free Pascal Release Version from fpc-versions script
FPCRELEASEVERSION=$RELEASEVERSION

export PATH=/home/${USER}/pas/fpc-${FPCRELEASEVERSION}/bin:/home/${USER}/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

if [ "x$FIXES" == "x1" ] ; then
  SVNDIR=fixes
else
  SVNDIR=trunk
fi

cd ~/pas/${SVNDIR}

export report=`pwd`/report.txt
export makelog=`pwd`/make.txt
export testslog=`pwd`/tests.txt

echo "Starting $0" > $report
START_PPC_BIN=`which $FPCBIN 2> /dev/null`
Start_version=`$START_PPC_BIN -iV 2> /dev/null`
Start_date=`$START_PPC_BIN -iD 2> /dev/null`
echo "Start $FPCBIN version is ${Start_version} ${Start_date}" >> $report
echo "Start bin is $START_PPC_BIN" >> $report
echo "Start time `$DATE`" >> $report
echo "PATH=$PATH" >> $report
# ulimit -d 65536 -s 8192 -t 2400  1>> $report 2>&1
ulimit -s 8192 -t 2400  1>> $report 2>&1
svn cleanup 1>> $report 2>&1
svn up --accept theirs-conflict 1>> $report 2>&1

if [ -d fpcsrc ]; then
  cd fpcsrc
fi

echo "Starting make distclean all" >> $report
echo "Start make `$DATE`" >> $report
if [ "X$NEEDED_OPT" != "X" ]; then
  echo "Using needed opt \"$NEEDED_OPT\"" >> $report
  export OPT="$NEEDED_OPT $OPT"
fi

${MAKE} distclean all DEBUG=1 OPT="$OPT" ASTARGET="$ASTARGET" 1> ${makelog} 2>&1
makeres=$?
if [ $makeres -ne 0 ] ; then
  echo "${MAKE} distclean all failed result=${makeres}" >> $report
  tail -30 ${makelog} >> $report
else
  echo "Ending make distclean all; result=${makeres}" >> $report
fi


NEW_PPC_BIN=./compiler/$FPCBIN

if [ ! -f $NEW_PPC_BIN ] ; then
  echo "No new $NEW_PPC_BIN, aborting" >> $report
  exit
fi

Build_version=`$NEW_PPC_BIN -iV 2> /dev/null`
Build_date=`$NEW_PPC_BIN -iD 2> /dev/null`

echo "New $FPCBIN version is ${Build_version} ${Build_date}" >> $report

echo "Starting make install" >> $report
echo "`$DATE`" >> $report
${MAKE} DEBUG=1 install OPT="$OPT" INSTALL_PREFIX=~/pas/fpc-${Build_version} 1>> ${makelog} 2>&1
makeres=$?

if [ $makeres -ne 0 ] ; then
  echo "${MAKE} install failed ${makeres}" >> $report
  for dir in rtl compiler packages utils ide ; do
    echo "Starting install in dir $dir" >> $report
    ${MAKE} -C ./$dir install INSTALL_PREFIX=~/pas/fpc-${Build_version} 1>> ${makelog} 2>&1
    makeres=$?
    echo "Ending make -C ./$dir install; result=${makeres}" >> $report
  done
else
  echo "Ending make install; result=${makeres}" >> $report
fi

# Add new bin dir as first in PATH
export PATH=/home/${USER}/pas/fpc-${Build_version}/bin:${PATH}
echo "Using new PATH=\"${PATH}\"" >> $report
NEWFPC=`which $FPCBIN`
echo "Using new binary \"${NEWFPC}\"" >> $report

NEW_OS_TARGET=`$NEWFPC -iTO`
NEW_CPU_TARGET=`$NEWFPC -iTP`
NEW_FULL_TARGET=${NEW_CPU_TARGET}-${NEW_OS_TARGET}

if [ $DO_TESTS -eq 1 ] ; then

cd tests
#Limit resources (64mb data, 8mb stack, 4 minutes)

#ulimit -d 65536 -s 8192 -t 240
ulimit -s 8192 -t 240

TEST_OPT="$NEEDED_OPT"
echo "Starting make distclean fulldb" >> $report
echo "`$DATE`" >> $report
${MAKE} -j 16 distclean fulldb TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
  TEST_OPT="$TEST_OPT" OPT="$NEEDED_OPT" TEST_FPC=${NEWFPC} FPC=${NEWFPC} \
  DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1> $testslog 2>&1
testsres=$?
echo "Ending make distclean fulldb; result=${testsres}" >> $report
echo "`$DATE`" >> $report

tail -30 $testslog >> $report
mv $testslog ${testslog}-bare

TEST_OPT="-Cg $NEEDED_OPT"
echo "Starting make clean fulldb with TEST_OPT=${TEST_OPT}" >> ${report}
echo "`$DATE`" >> $report
${MAKE} -j 16 distclean fulldb TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
  TEST_OPT="${TEST_OPT}" OPT="$NEEDED_OPT" TEST_FPC=${NEWFPC} FPC=${NEWFPC} \
  DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1> $testslog 2>&1
testsres=$?
echo "Ending make distclean fulldb with TEST_OPT=${TEST_OPT}; result=${testsres}" >> $report
echo "`$DATE`" >> $report

tail -30 $testslog >> $report
mv $testslog ${testslog}-Cg

TEST_OPT="-O2 $NEEDED_OPT"
echo "Starting make clean fulldb with TEST_OPT=${TEST_OPT}" >> ${report}
echo "`$DATE`" >> $report
${MAKE} -j 16 distclean fulldb TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
  TEST_OPT="${TEST_OPT}" OPT="$NEEDED_OPT" TEST_FPC=${NEWFPC} FPC=${NEWFPC} \
  DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1> $testslog 2>&1
testsres=$?
echo "Ending make distclean fulldb with TEST_OPT=${TEST_OPT}; result=${testsres}" >> $report
echo "`$DATE`" >> $report

tail -30 $testslog >> $report
mv $testslog ${testslog}-O2


mutt -x -s "Free Pascal results for ${NEW_FULL_TARGET} on ${HOST_PC}, with option ${TEST_OPT}, ${Build_version} ${Build_date}" \
     -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log

fi 

# Cleanup

if [ "${testsres}" == "0" ]; then
  cd ~/pas/trunk
  ${MAKE} distclean 1>> ${makelog} 2>&1
  if [ -d fpcsrc ] ; then
    cd fpcsrc
  fi
  cd tests
  ${MAKE} distclean TEST_FPC=fpc 1>> ${makelog} 2>&1
fi


