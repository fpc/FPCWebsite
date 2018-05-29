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
  run_tests=1
elif [ "$HOSTNAME" == "gcc20" ] ; then
  run_tests=1
else
  run_tests=0
fi

HOST_PC=${HOSTNAME}

cleantests=0
if [ "$HOSTNAME" == "gcc20" ] ; then
  cleantests=1
fi

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

STARTDIR=`pwd`
export report=`pwd`/report${SUFFIX}.txt 
export svnlog=`pwd`/svnlog${SUFFIX}.txt 
export cleanlog=`pwd`/cleanlog${SUFFIX}.txt 
export makelog=`pwd`/makelog${SUFFIX}.txt 

echo "Starting $0" > $report
Start_version=`$FPCBIN -iV`
Start_date=`$FPCBIN -iD`
echo "Start $FPCBIN version is ${Start_version} ${Start_date}" >> $report
echo "##Start time `$DATE`" >> $report
echo "PATH=$PATH" >> $report
echo "##Start time `$DATE`" > $svnlog
#ulimit -d 65536 -s 8192 -t 2400  1>> $report 2>&1
ulimit -t 2400  1>> $report 2>&1
svn cleanup 1> $cleanlog 2>&1
svn up --accept theirs-conflict 1>> $svnlog 2>&1

if [ -d fpcsrc ]; then
  cd fpcsrc
fi

echo "Starting make distclean all" >> $report
echo "##Start make distclean `$DATE`" >> $report
echo "Starting make distclean all" >> $cleanlog
echo "##Start make distclean `$DATE`" >> $cleanlog
${MAKE} distclean $MAKEDEBUG OPT="-n $NEEDED_OPT" FPC=$FPCBIN 1>> ${cleanlog} 2>&1
echo "##Start make all `$DATE`" >> $report
echo "##Start make all `$DATE`" > $makelog
${MAKE} all $MAKEDEBUG OPT="-n $NEEDED_OPT" FPC=$FPCBIN 1>> ${makelog} 2>&1
makeres=$?
echo "##End make all `$DATE`, res=$res" >> $report
echo "##End make all `$DATE`, res=$res" >> $makelog
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
NEW_UNITDIR=`./compiler/$FPCBIN -iTP`-`./compiler/$FPCBIN -iTO`

# Register system.ppu state
if [ -f /home/${USER}/pas/fpc-${Build_version}/bin/ppudump ] ; then
  echo "system ppu checksums stored to $STARTDIR/${NEW_UNITDIR}-system.ppu-log1" >> $report
  /home/${USER}/pas/fpc-${Build_version}/bin/ppudump rtl/units/${NEW_UNITDIR}/system.ppu | grep -E "(^Analysing|Checksum)" > $STARTDIR/${NEW_UNITDIR}-system.ppu-log1 2>&1
fi

echo "Starting make installsymlink in compiler dir" >> $report
echo "##`$DATE`" >> $report
echo "Starting make installsymlink in compiler dir" >> $makelog
echo "##`$DATE`" >> $makelog
${MAKE} -C compiler $MAKEDEBUG installsymlink INSTALL_PREFIX=~/pas/fpc-${Build_version} OPT="-n $NEEDED_OPT" FPC=`pwd`/compiler/$FPCBIN 1>> ${makelog} 2>&1
makeres=$?
if [ $makeres -ne 0 ] ; then
  echo "${MAKE} -C compiler installsymlink failed ${makeres}" >> $report
fi

echo "Starting make install" >> $report
echo "##`$DATE`" >> $report
echo "Starting make install" >> $makelog
echo "##`$DATE`" >> $makelog
${MAKE} $MAKEDEBUG install INSTALL_PREFIX=~/pas/fpc-${Build_version} OPT="-n $NEEDED_OPT" FPC=`pwd`/compiler/$FPCBIN 1>> ${makelog} 2>&1
makeres=$?

if [ $makeres -ne 0 ] ; then
  echo "${MAKE} install failed ${makeres}" >> $report
  for dir in rtl compiler packages utils ide ; do
    echo "Starting make install in dir $dir" >> $report
    echo "##`$DATE`" >> $report
    echo "Starting make install in dir $dir" >> $makelog
    echo "##`$DATE`" >> $makelog
    ${MAKE} -C ./$dir install $MAKEDEBUG INSTALL_PREFIX=~/pas/fpc-${Build_version} OPT="-n $NEEDED_OPT" FPC=`pwd`/compiler/$FPCBIN 1>> ${makelog} 2>&1
    makeres=$?
    echo "Ending make -C ./$dir install; result=${makeres}" >> $report
    echo "##`$DATE`" >> $report
    echo "##`$DATE`" >> $makelog
  done
else
  echo "Ending make install; result=${makeres}" >> $report
  echo "##`$DATE`" >> $report
  echo "Ending make install; result=${makeres}" >> $makelog
  echo "##`$DATE`" >> $makelog
fi

# fullinstall in compiler
echo "Starting make fullinstall in compiler" >> $report
echo "##`$DATE`" >> $report
echo "Starting make fullinstall in compiler" >> $makelog
echo "##`$DATE`" >> $makelog
${MAKE} -C compiler $MAKEDEBUG cycle install fullinstall INSTALL_PREFIX=~/pas/fpc-${Build_version} OPT="-n $NEEDED_OPT" FPC=~/pas/fpc-${Build_version}/bin/$FPCBIN 1>> ${makelog} 2>&1

# Check if system.ppu changed
if [ -f /home/${USER}/pas/fpc-${Build_version}/bin/ppudump ] ; then
  echo "New system ppu checksums stored to $STARTDIR/${NEW_UNITDIR}-system.ppu-log2" >> $report
  /home/${USER}/pas/fpc-${Build_version}/bin/ppudump rtl/units/${NEW_UNITDIR}/system.ppu | grep -E "(^Analysing|Checksum)" > $STARTDIR/${NEW_UNITDIR}-system.ppu-log2 2>&1
  cmp  $STARTDIR/${NEW_UNITDIR}-system.ppu-log1 $STARTDIR/${NEW_UNITDIR}-system.ppu-log2 > $STARTDIR/${NEW_UNITDIR}-system.ppu-logdiffs
  cmpres=$?
  if [ $cmpres -ne 0 ] ; then
    echo "ppudump output for system.ppu changed" >> $report
    echo "ppudump output for system.ppu changed" >> $makelog
    cat rtl/units/${NEW_UNITDIR}/system.ppu-logdiffs >> $report
    echo "Cleaning packages to be sure" >> $report
    echo "Cleaning packages to be sure" >> $makelog
    ${MAKE} -C packages distclean FPC=$NEW_PPC_BIN 1>> ${makelog} 2>&1
    echo "Reinstalling packages as system.ppu has changed" >> $report
    echo "Reinstalling packages as system.ppu has changed" >> $makelog
    ${MAKE} -C packages $MAKEDEBUG install INSTALL_PREFIX=~/pas/fpc-${Build_version} OPT="-n $NEEDED_OPT" FPC=/home/${USER}/pas/fpc-${Build_version}/bin/$FPCBIN 1>> ${makelog} 2>&1
  fi
fi
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
  cleantestslog=~/pas/$SVNDIR/clean-${NEW_UNITDIR}-${DIR_OPT}.txt 

  echo "Starting make distclean fulldb" >> $report
  echo "${MAKE} -j 5 distclean fulldb $MAKE_OPTS TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
    TEST_FPC=${NEWFPC} FPC=${NEWFPC} TEST_OPT=\"$TEST_OPT\" OPT=\"$NEEDED_OPT\" TEST_USE_LONGLOG=1 \
    DB_SSH_EXTRA=\" -i ~/.ssh/freepascal\" " >> $report
  echo "`$DATE`" >> $report
  TIME=`date +%H-%M-%S`
  ${MAKE} -C ../rtl distclean $MAKE_OPTS FPC=${NEWFPC} OPT="$NEDDED_OPT" > $cleantestslog 2>&1
  ${MAKE} -C ../packages distclean $MAKE_OPTS FPC=${NEWFPC} OPT="$NEDDED_OPT" >> $cleantestslog 2>&1
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
    if [ ${cleantests} -ne 1 ] ; then
      if [ -d output-${SVNDIR}-${DIR_OPT} ] ; then
        rm -Rf output-${SVNDIR}-${DIR_OPT}
      fi
      cp -Rf output output-${SVNDIR}-${DIR_OPT}
    fi
  fi
}

cp ${svnlog} ~/pas/$SVNDIR/svnlog-${NEW_UNITDIR}.txt
cp ${makelog} ~/pas/$SVNDIR/makelog-${NEW_UNITDIR}.txt

if [ $run_tests -eq 1 ] ; then
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
  ${MAKE} distclean 1>> ${cleanlog} 2>&1
fi

if [ $cleantests -eq 1 ] ; then
  cd ~/pas/$SVNDIR
  if [ -d fpcsrc ] ; then
    cd fpcsrc
  fi
  cd tests
    rm -Rf output* 1>> ${cleanlog} 2>&1
  fi
fi

)

fi # NewBinary -eq 1

mutt -x -s "Free Pascal results on ${HOST_PC} ${NEW_UNITDIR} ${Build_version} ${Build_date}" \
     -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log


