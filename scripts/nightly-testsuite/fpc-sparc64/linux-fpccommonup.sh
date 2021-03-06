#!/bin/bash

. $HOME/bin/fpc-versions.sh

NATIVE_OPT64=""
ASTARGET=""

# echo "Running 32bit sparc fpc on sparc64 machine, needs special options"
NATIVE_OPT32="-ao-32 -XPsparc-linux-"
if [ -d /lib32 ] ; then
  NATIVE_OPT32="$NATIVE_OPT32 -Fl/lib32"
fi
if [ -d /usr/lib32 ] ; then
  NATIVE_OPT32="$NATIVE_OPT32 -Fl/usr/lib32"
fi
if [ -d /usr/sparc64-linux-gnu/lib32 ] ; then
  NATIVE_OPT32="$NATIVE_OPT32 -Fl/usr/sparc64-linux-gnu/lib32"
fi
if [ -d /usr/local/lib32 ] ; then
  NATIVE_OPT32="$NATIVE_OPT32 -Fl/usr/local/lib32"
fi
if [ -d $HOME/lib32 ] ; then
  NATIVE_OPT32="$NATIVE_OPT32 -Fl$HOME/gnu/lib32"
fi
if [ -d $HOME/lib32 ] ; then
  NATIVE_OPT32="$NATIVE_OPT32 -Fl$HOME/lib32"
fi
if [ -d $HOME/local/lib32 ] ; then
  NATIVE_OPT32="$NATIVE_OPT32 -Fl$HOME/local/lib32"
fi

export gcc_libs_64=` gcc -m64 -print-search-dirs | sed -n "s;libraries: =;;p" | sed "s;:; ;g" | xargs realpath -m | sort | uniq | xargs  ls -1d 2> /dev/null `
NATIVE_OPT64="$NATIVE_OPT64 "
if [ -n "$gcc_libs_64" ] ; then
  for dir in $gcc_libs_64 ; do
    if [ -d "$dir" ] ; then
      if [ "${NATIVE_OPT64/-Fl${dir} /}" == "$NATIVE_OPT64" ] ; then
        NATIVE_OPT64="$NATIVE_OPT64 -Fl$dir "
      fi
    fi
  done
fi
SPARC64_GCC_DIR=` gcc -m64 -print-libgcc-file-name | xargs dirname`
if [ -d "$SPARC64_GCC_DIR" ] ; then
  if [ "${NATIVE_OPT64/-Fl${SPARC64_GCC_DIR} /}" == "$NATIVE_OPT64" ] ; then
    NATIVE_OPT64="$NATIVE_OPT64 -Fl$SPARC64_GCC_DIR "
  fi
fi

export gcc_libs_32=` gcc -m32 -print-search-dirs | sed -n "s;libraries: =;;p" | sed "s;:; ;g" | xargs realpath -m | sort | uniq | xargs  ls -1d 2> /dev/null `
NATIVE_OPT32="$NATIVE_OPT32 "
if [ -n "$gcc_libs_32" ] ; then
  for dir in $gcc_libs_32 ; do
    if [ -d "$dir" ] ; then
      if [ "${NATIVE_OPT32/-Fl${dir} /}" == "$NATIVE_OPT32" ] ; then
	# We don't want the directories that are also for 64-bit
        if [ "${NATIVE_OPT64/-Fl${dir} /}" == "$NATIVE_OPT64" ] ; then
          NATIVE_OPT32="$NATIVE_OPT32-Fl$dir "
        fi
      fi
    fi
  done
fi
SPARC32_GCC_DIR=` gcc -m32 -print-libgcc-file-name | xargs dirname`
if [ -d "$SPARC32_GCC_DIR" ] ; then
  if [ "${NATIVE_OPT32/-Fl${SPARC32_GCC_DIR} /}" == "$NATIVE_OPT32" ] ; then
    NATIVE_OPT32="$NATIVE_OPT32 -Fl$SPARC32_GCC_DIR "
  fi
fi

# Set main variables
if [ -z "$MAKE" ] ; then
  MAKE=make
fi

if [ -z "$MAKEOPT" ] ; then
  MAKEOPT=""
fi

export MAKE

if [ -z "$HOSTNAME" ] ; then
  HOSTNAME=`uname -n`
fi

set -u 

if [ "${HOSTNAME}" == "gcc202" ]; then
  export HOST_PC=gcc202
  export USER=pierre
  export ASTARGET=-32
  export NEEDED_OPT="$NATIVE_OPT32"
  export MAKEOPT="BINUTILSPREFIX=sparc-linux-"
  # Set until I find out how to cross-compile GDB for sparc32
  export NOGDB=1
  export DO_TESTS=1
  export DO_SNAPSHOTS=1
elif [ "${HOSTNAME}" == "stadler" ]; then
  export HOST_PC=fpc-sparc64
  export USER=pierre
  export ASTARGET=-32
  export NEEDED_OPT="$NATIVE_OPT32"
  export MAKEOPT="BINUTILSPREFIX=sparc-linux-"
  # Set until I find out how to cross-compile GDB for sparc32
  export NOGDB=1
  export DO_TESTS=1
elif [ "${HOSTNAME}" == "ravirin" ]; then
  export HOST_PC=new-fpc-sparc64
  export USER=pierre
  export ASTARGET=-32
  export NEEDED_OPT="$NATIVE_OPT32"
  export MAKEOPT="BINUTILSPREFIX=sparc-linux-"
  # Set until I find out how to cross-compile GDB for sparc32
  export NOGDB=1
  export DO_TESTS=1
elif [ "${HOSTNAME}" == "deb4g" ]; then
  export HOST_PC=fpc-sparc64-T5
  export USER=pierre
  export ASTARGET=-32
  export NEEDED_OPT="$NATIVE_OPT32"
  export MAKEOPT="BINUTILSPREFIX=sparc-linux-"
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

if [ -z "${FPCBIN:-}" ]; then
  FPCBIN=ppcsparc
fi

# Use Free Pascal Release Version from fpc-versions script
FPCRELEASEVERSION=$RELEASEVERSION

export PATH=${HOME}/pas/fpc-${FPCRELEASEVERSION}${BINDIRSUFFIX:-}/bin:${HOME}/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

CPU_TARGET=`$FPCBIN -iTP`

if [ "$CPU_TARGET" == "sparc64" ] ; then
  LOGSUFFIX=-64
else
  LOGSUFFIX=-32
fi

DATE="date +%Y-%m-%d-%H-%M"
DATESTR=`$DATE`
if [ "x${FIXES:-}" == "x1" ] ; then
  SVNDIR=fixes
else
  SVNDIR=trunk
fi

cd ~/pas/${SVNDIR}

LOGDIR="$HOME/logs/$SVNDIR"

if [ ! -d "$LOGDIR" ] ; then
  mkdir -p "$LOGDIR"
fi

export report=$LOGDIR/report-${DATESTR}${LOGSUFFIX}.txt
export makelog=$LOGDIR/make-${DATESTR}${LOGSUFFIX}.txt
export testslog=$LOGDIR/tests-${DATESTR}${LOGSUFFIX}.txt

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
echo "On host ${HOSTNAME}" >> $report
if [ "X${NEEDED_OPT:=}" != "X" ]; then
  echo "Using needed opt \"$NEEDED_OPT\"" >> $report
  export OPT="$NEEDED_OPT ${OPT:-}"
fi

NEW_PPC_BIN=`pwd`/compiler/$FPCBIN

${MAKE} distclean all DEBUG=1 OPT="$OPT" ASTARGET="$ASTARGET" $MAKEOPT FPC=$FPCBIN 1> ${makelog} 2>&1
makeres=$?
if [ $makeres -ne 0 ] ; then
  echo "${MAKE} distclean all failed result=${makeres}" >> $report
  tail -30 ${makelog} >> $report
else
  echo "Ending make distclean all; result=${makeres}" >> $report
  if [ ! -f $NEW_PPC_BIN ] ; then
    echo "No new $NEW_PPC_BIN, aborting" >> $report
    exit
  fi
  Build_version=`$NEW_PPC_BIN -iV 2> /dev/null`
  Build_date=`$NEW_PPC_BIN -iD 2> /dev/null`

  echo "New $FPCBIN version is ${Build_version} ${Build_date}" >> $report

  echo "Starting make install" >> $report
  echo "`$DATE`" >> $report
  ${MAKE} DEBUG=1 install OPT="$OPT" $MAKEOPT INSTALL_PREFIX=~/pas/fpc-${Build_version} FPC=$NEW_PPC_BIN 1>> ${makelog} 2>&1
  makeres=$?
fi


if [ $makeres -ne 0 ] ; then
  echo "${MAKE} install failed ${makeres}" >> $report
  ${MAKE} -C ./compiler rtlclean distclean cycle $MAKEOPT FPC=$FPCBIN 1>> ${makelog} 2>&1
  makeres=$?
  echo "Ending make -C ./compiler cycle; result=${makeres}" >> $report
  if [ ! -f $NEW_PPC_BIN ] ; then
    echo "No new $NEW_PPC_BIN, aborting" >> $report
    exit
  fi
  Build_version=`$NEW_PPC_BIN -iV 2> /dev/null`
  Build_date=`$NEW_PPC_BIN -iD 2> /dev/null`

  ${MAKE} -C ./compiler rtlinstall installsymlink $MAKEOPT INSTALL_PREFIX=~/pas/fpc-${Build_version} FPC=$NEW_PPC_BIN 1>> ${makelog} 2>&1
  makeres=$?
  echo "Ending make -C ./compiler installsymlink; result=${makeres}" >> $report
  Build_version=`$NEW_PPC_BIN -iV 2> /dev/null`
  Build_date=`$NEW_PPC_BIN -iD 2> /dev/null`

  echo "New $FPCBIN version is ${Build_version} ${Build_date}" >> $report

  for dir in packages utils ide ; do
    echo "Starting install in dir $dir" >> $report
    ${MAKE} -C ./$dir install $MAKEOPT INSTALL_PREFIX=~/pas/fpc-${Build_version} FPC=$NEWFPCBIN 1>> ${makelog} 2>&1
    makeres=$?
    echo "Ending make -C ./$dir install; result=${makeres}" >> $report
  done
else
  echo "Ending make install; result=${makeres}" >> $report
fi

# Add new bin dir as first in PATH
export PATH=${HOME}/pas/fpc-${Build_version}/bin:${PATH}
echo "Using new PATH=\"${PATH}\"" >> $report
NEWFPC=`which $FPCBIN`
echo "Using new binary \"${NEWFPC}\"" >> $report

NEW_OS_TARGET=`$NEWFPC -iTO`
NEW_CPU_TARGET=`$NEWFPC -iTP`
NEW_FULL_TARGET=${NEW_CPU_TARGET}-${NEW_OS_TARGET}

if [ $DO_TESTS -eq 1 ] ; then
  if [ "$NEW_CPU_TARGET" == "sparc" ] ; then
    export TEST_BINUTILSPREFIX=sparc-linux-
  fi
  cd tests
  #Limit resources (64mb data, 8mb stack, 4 minutes)

  #ulimit -d 65536 -s 8192 -t 240
  ulimit -s 8192 -t 2400

  TEST_OPT="$NEEDED_OPT"
  echo "Starting make distclean" >> $report
  echo "`$DATE`" >> $report
  ${MAKE} -C ../rtl distclean > /dev/null 2>&1
  ${MAKE} -C ../packages distclean > /dev/null 2>&1
  ${MAKE} distclean TEST_USER=${USER} TEST_HOSTNAME=${HOST_PC} \
    TEST_OPT="$TEST_OPT" OPT="$NEEDED_OPT" TEST_FPC=${NEWFPC} FPC=${NEWFPC} \
    DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1> /dev/null 2>&1
  echo "Starting make fulldb" >> $report
  echo "`$DATE`" >> $report
  ${MAKE} -j 16 fulldb TEST_USER=${USER} TEST_HOSTNAME=${HOST_PC} $MAKEOPT \
    TEST_OPT="$TEST_OPT" OPT="$NEEDED_OPT" TEST_FPC=${NEWFPC} FPC=${NEWFPC} \
    DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1> $testslog 2>&1
  testsres=$?
  echo "Ending make distclean fulldb; result=${testsres}" >> $report
  echo "`$DATE`" >> $report
  # Just keep last sent file to database
  TARFILE=`ls -1 fpc*.tar.gz 2> /dev/null`
  if [ -n "$TARFILE" ] ; then
    mv fpc*.tar.gz  ${LOGDIR}/fpc-${NEW_FULL_TARGET}-bare.tar.gz
  else
    echo "No fpc*.tar.gz found" >> $report
  fi

  tail -30 $testslog >> $report
  mv $testslog ${testslog}-bare

  TEST_OPT="-Cg $NEEDED_OPT"
  echo "Starting make distclean with TEST_OPT=${TEST_OPT}" >> ${report}
  echo "`$DATE`" >> $report
  ${MAKE} -C ../rtl distclean > /dev/null 2>&1
  ${MAKE} -C ../packages distclean > /dev/null 2>&1
  ${MAKE} distclean TEST_USER=${USER} TEST_HOSTNAME=${HOST_PC} \
    TEST_OPT="$TEST_OPT" OPT="$NEEDED_OPT" TEST_FPC=${NEWFPC} FPC=${NEWFPC} \
    DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1> /dev/null 2>&1
  echo "Starting make fulldb with TEST_OPT=${TEST_OPT}" >> ${report}
  echo "`$DATE`" >> $report
  ${MAKE} -j 16 fulldb TEST_USER=${USER} TEST_HOSTNAME=${HOST_PC} \
    TEST_OPT="${TEST_OPT}" OPT="$NEEDED_OPT" TEST_FPC=${NEWFPC} FPC=${NEWFPC} \
    DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1> $testslog 2>&1
  testsres=$?
  echo "Ending make distclean fulldb with TEST_OPT=${TEST_OPT}; result=${testsres}" >> $report
  echo "`$DATE`" >> $report
  # Just keep last sent file to database
  TARFILE=`ls -1 fpc*.tar.gz 2> /dev/null`
  if [ -n "$TARFILE" ] ; then
    mv fpc*.tar.gz  ${LOGDIR}/fpc-${NEW_FULL_TARGET}-Cg.tar.gz
  else
    echo "No fpc*.tar.gz found" >> $report
  fi

  tail -30 $testslog >> $report
  mv $testslog ${testslog}-Cg

  TEST_OPT="-O2 $NEEDED_OPT"
  echo "Starting make distclean with TEST_OPT=${TEST_OPT}" >> ${report}
  echo "`$DATE`" >> $report
  ${MAKE} -C ../rtl distclean > /dev/null 2>&1
  ${MAKE} -C ../packages distclean > /dev/null 2>&1
  ${MAKE} distclean TEST_USER=${USER} TEST_HOSTNAME=${HOST_PC} \
    TEST_OPT="$TEST_OPT" OPT="$NEEDED_OPT" TEST_FPC=${NEWFPC} FPC=${NEWFPC} \
    DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1> /dev/null 2>&1
  echo "Starting make fulldb with TEST_OPT=${TEST_OPT}" >> ${report}
  echo "`$DATE`" >> $report
  ${MAKE} -j 16 fulldb TEST_USER=${USER} TEST_HOSTNAME=${HOST_PC} \
    TEST_OPT="${TEST_OPT}" OPT="$NEEDED_OPT" TEST_FPC=${NEWFPC} FPC=${NEWFPC} \
    DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1> $testslog 2>&1
  testsres=$?
  echo "Ending make distclean fulldb with TEST_OPT=${TEST_OPT}; result=${testsres}" >> $report
  echo "`$DATE`" >> $report
  # Just keep last sent file to database
  TARFILE=`ls -1 fpc*.tar.gz 2> /dev/null`
  if [ -n "$TARFILE" ] ; then
    mv fpc*.tar.gz  ${LOGDIR}/fpc-${NEW_FULL_TARGET}-O2.tar.gz
  else
    echo "No fpc*.tar.gz found" >> $report
  fi

  tail -30 $testslog >> $report
  mv $testslog ${testslog}-O2

  mutt -x -s "Free Pascal results for ${NEW_FULL_TARGET} on ${HOST_PC}, ${Build_version} ${Build_date}" \
       -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log

fi 

# Cleanup

# if [ "${testsres}" == "0" ]; then
  cd ~/pas/${SVNDIR}
  ${MAKE} distclean 1>> ${makelog} 2>&1
  if [ -d fpcsrc ] ; then
    cd fpcsrc
  fi
  cd tests
  ${MAKE} distclean TEST_FPC=fpc 1>> ${makelog} 2>&1
# fi


