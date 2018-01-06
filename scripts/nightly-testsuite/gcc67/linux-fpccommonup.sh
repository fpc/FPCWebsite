#!/bin/bash

. $HOME/bin/fpc-versions.sh 

# Limit resources (64mb data, 8mb stack, 40 minutes)

if [ "X$FPCBIN" == "X" ] ; then
  FPCBIN=ppcx64
fi

if [ "X$FPCBIN" == "Xppc386" ] ; then
  NEEDED_OPT="-Fl/usr/lib32 -Fl/usr/local/lib32 -Fl/lib32"
  SUFFIX=-32
else
  NEEDED_OPT=
  SUFFIX=-64
fi

export MAKE=make
if [ "$HOSTNAME" == "CFARM-IUT-TLSE3" ] ; then
  export HOSTNAME=gcc21
fi
HOST_PC=${HOSTNAME}


if [ "$USER" == "" ]; then
  USER=$LOGNAME
fi

if [ "X$USE_DEBUG" == "X1" ] ; then
  MAKEDEBUG="DEBUG=1"
else
  MAKEDEBUG=
fi

DATE="date +%Y-%m-%d-%H-%M"
TODAY=`date +%Y-%m-%d`
FPCRELEASEVERSION=$RELEASEVERSION

export PATH=/home/${USER}/pas/fpc-${FPCRELEASEVERSION}/bin:/home/${USER}/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

if [ "x$FIXES" == "x1" ] ; then
  SVNDIR=fixes
else
  SVNDIR=trunk
fi

cd ~/pas/${SVNDIR}

export report=`pwd`/report${SUFFIX}.txt 
export report2=`pwd`/report2${SUFFIX}.txt 
export svnlog=`pwd`/svnlog${SUFFIX}.txt 
export makelog=`pwd`/makelog${SUFFIX}.txt 

echo "Starting $0" > $report
Start_version=`$FPCBIN -iV`
Start_date=`$FPCBIN -iD`
echo "Start $FPCBIN version is ${Start_version} ${Start_date}" >> $report
echo "Start time `$DATE`" >> $report
echo "PATH=$PATH" >> $report
echo "Start time `$DATE`" > $svnlog
#ulimit -d 65536 -s 8192 -t 2400  1>> $report 2>&1
ulimit -t 2400  1>> $report 2>&1
svn cleanup 1>> $svnlog 2>&1
svn up --accept theirs-conflict 1>> $svnlog 2>&1

if [ -d fpcsrc ]; then
  cd fpcsrc
fi

echo "Starting make distclean all" >> $report
echo "Start make `$DATE`" >> $report
${MAKE} distclean all $MAKEDEBUG OPT="-n $NEEDED_OPT" FPC=$FPCBIN 1> ${makelog} 2>&1
makeres=$?
if [ $makeres -ne 0 ] ; then
  echo "${MAKE} distclean all failed result=${makeres}" >> $report
  tail -30 ${makelog} >> $report
else
  echo "Ending make distclean all; result=${makeres}" >> $report
fi

if [ ! -f ./compiler/$FPCBIN ] ; then
  # Try a simple cycle in compiler subdirectory
  ${MAKE} -C compiler distclean cycle $MAKEDEBUG OPT="-n $NEEDED_OPT" FPC=$FPCBIN >> ${makelog} 2>&1
fi

if [ -f ./compiler/$FPCBIN ] ; then
  Build_version=`./compiler/$FPCBIN -iV`
  Build_date=`./compiler/$FPCBIN -iD`
  NewBinary=1
else
  NewBinary=0
  echo "No new binary ./compiler/$FPCBIN" >> $report
fi

if [ $NewBinary -eq 1 ] ; then
echo "New $FPCBIN version is ${Build_version} ${Build_date}" >> $report

echo "Starting make install" >> $report
echo "`$DATE`" >> $report
${MAKE} $MAKEDEBUG install INSTALL_PREFIX=~/pas/fpc-${Build_version} OPT="-n $NEEDED_OPT" FPC=./compiler/$FPCBIN 1>> ${makelog} 2>&1
makeres=$?

if [ $makeres -ne 0 ] ; then
  echo "${MAKE} install failed ${makeres}" >> $report
  for dir in rtl compiler packages utils ide ; do
    echo "Starting install in dir $dir" >> $report
    ${MAKE} -C ./$dir install INSTALL_PREFIX=~/pas/fpc-${Build_version} OPT="-n $NEEDED_OPT" FPC=`pwd`/compiler/$FPCBIN 1>> ${makelog} 2>&1
    makeres=$?
    echo "Ending make -C ./$dir install; result=${makeres}" >> $report
  done
else
  echo "Ending make install; result=${makeres}" >> $report
fi

# fullinstall in compiler
${MAKE} -C compiler $MAKEDEBUG fullinstall INSTALL_PREFIX=~/pas/fpc-${Build_version} OPT="-n $NEEDED_OPT" FPC=~/pas/fpc-${Build_version}/bin/$FPCBIN 1>> ${makelog} 2>&1

# All cross-compilers (without DEBUG set)
${MAKE} -C compiler cycle install fullcycle fullinstall INSTALL_PREFIX=~/pas/fpc-${Build_version} OPT="-n $NEEDED_OPT" 1>> ${makelog} 2>&1

# Add new bin dir as first in PATH
export PATH=/home/${USER}/pas/fpc-${Build_version}/bin:${PATH}
echo "Using new PATH=\"${PATH}\"" >> $report
NEWFPC=`which $FPCBIN`
echo "Using new binary \"${NEWFPC}\"" >> $report

NEW_UNITDIR=`$NEWFPC -iTP`-`$NEWFPC -iTO`

(
cd tests
# Limit resources (64mb data, 8mb stack, 4 minutes)
testsres=0

ulimit -s 8192 -t 240 >> $report 2>&1

function run_tests ()
{
  MIN_OPT="$1"
  DIR_OPT=${MIN_OPT// /}
  TEST_OPT="$NEEDED_OPT $1"
  MAKE_OPTS="$2"
  logdir=~/logs/$SVNDIR/$TODAY/$NEW_UNITDIR/opts-${DIR_OPT}
  testslog=~/pas/$SVNDIR/tests-${NEW_UNITDIR}-${DIR_OPT}.txt 

  echo "Starting make distclean fulldb" >> $report
  echo "${MAKE} -j 5 distclean fulldb $MAKE_OPTS TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
    TEST_FPC=${NEWFPC} FPC=${NEWFPC} TEST_OPT=\"$TEST_OPT\" OPT=\"$NEEDED_OPT\" TEST_USE_LONGLOG=1 \
    DB_SSH_EXTRA=\" -i ~/.ssh/freepascal\" " >> $report
  echo "`$DATE`" >> $report
  TIME=`date +%H-%M-%S`
  ${MAKE} -j 5 distclean fulldb $MAKE_OPTS TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
    TEST_FPC=${NEWFPC} FPC=${NEWFPC} TEST_OPT="$TEST_OPT" OPT="$NEEDED_OPT" TEST_USE_LONGLOG=1 \
    DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1> $testslog 2>&1
  testsres=$?
  echo "Ending make distclean fulldb; result=${testsres}" >> $report
  echo "`$DATE`" >> $report
  if [ $testsres -ne 0 ] ; then
    echo "Last 30 lines of testslog" >> $report
    tail -30 $testslog >> $report
  else
    if [ ! -d $logdir ] ; then
      mkdir -p $logdir
    fi
    cp output/$NEW_UNITDIR/faillist $logdir/faillist-$TIME
    cp output/$NEW_UNITDIR/log $logdir/log-$TIME 
    cp output/$NEW_UNITDIR/longlog $logdir/longlog-$TIME
    cp ${testslog} $logdir/tests-${DIR_OPT}-$TIME
    if [ -d output-${SVNDIR}-${DIR_OPT} ] ; then
      rm -Rf output-${SVNDIR}-${DIR_OPT}
    fi
    cp -Rf output output-${SVNDIR}-${DIR_OPT}
  fi
}

cp ${svnlog} ~/pas/$SVNDIR/svnlog-${NEW_UNITDIR}.txt
cp ${makelog} ~/pas/$SVNDIR/makelog-${NEW_UNITDIR}.txt

if [ "X$HOST_PC" == "Xgcc20" ] ; then
  run_tests ""
  run_tests "-Cg"
  run_tests "-O4"
  run_tests "-gwl"
  run_tests "-Cg -gwl"
  run_tests "-O4 -gwl"
  run_tests "-Cg -O4"
  run_tests "-Criot"
  run_tests "-Cg -O4 -Criot"
  # also test with TEST_BENCH
  run_tests "-Cg -O2" "TEST_BENCH=1"
  if [ "X${SVNDIR}" != "X${SVNDIR//trunk//}" ] ; then
    run_tests "-gh"
    # This freezes on trwsync and tw3695 tests
    # run_tests "-ghc"
  fi
fi

# Cleanup

if [ ${testsres} -eq 0 ]; then
  cd ~/pas/$SVNDIR
  ${MAKE} distclean 1>> ${makelog} 2>&1
fi

)

fi # NewBinary -eq 1

mutt -x -s "Free Pascal results on ${HOST_PC} ${NEW_UNITDIR} ${Build_version} ${Build_date}" \
     -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log


