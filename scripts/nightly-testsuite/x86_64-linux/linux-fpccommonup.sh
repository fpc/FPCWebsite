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

if [ -z "$MAKE" ] ; then
  export MAKE=make
fi

if [ "$HOSTNAME" == "CFARM-IUT-TLSE3" ] ; then
  export HOSTNAME=gcc21
fi

if [ "$HOSTNAME" == "gcc21" ] ; then
  export do_run_tests=1
  export MAKE_J_OPT="-j 5"
elif [ "$HOSTNAME" == "gcc20" ] ; then
  export do_run_tests=1
  export MAKE_J_OPT="-j 5"
elif [ "$HOSTNAME" == "gcc121" ] ; then
  export do_run_tests=1
  export MAKE_J_OPT="-j 15"
elif [ "$HOSTNAME" == "gcc123" ] ; then
  export do_run_tests=1
  export MAKE_J_OPT="-j 15"
else
  export do_run_tests=0
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

DATE="date +%Y-%m-%d-%H-%M-%S"
TODAY=`date +%Y-%m-%d`
FPCRELEASEVERSION=$RELEASEVERSION

export PATH=/home/${USER}/pas/fpc-${FPCRELEASEVERSION}/bin:/home/${USER}/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

if [ -z "$SVNDIRNAME" ] ; then
  if [ "x$FIXES" == "x1" ] ; then
    SVNDIRNAME=$FIXESDIRNAME
    if [ -z "$SVNDIRNAME" ] ; then
      SVNDIRNAME=fixes
    fi
  else
    SVNDIRNAME=$TRUNKDIRNAME
    if [ -z "$SVNDIRNAME" ] ; then
      SVNDIRNAME=trunk
    fi
  fi
fi

cd ~/pas/${SVNDIRNAME}

function add_log ()
{
  log_string=$1
  echo "##`$DATE`: $log_string" >> $report
  if [ -n "$currentlog" ] ; then
    echo "##`$DATE`: $log_string" >> $currentlog
  fi
}
function set_log ()
{
  currentlog=$1
}

STARTDIR=`pwd`
export report=`pwd`/report${SUFFIX}.txt 
export svnlog=`pwd`/svnlog${SUFFIX}.txt 
export cleanlog=`pwd`/cleanlog${SUFFIX}.txt 
export makelog=`pwd`/makelog${SUFFIX}.txt 

echo "Starting $0 on $HOSTNAME" > $report
Start_version=`$FPCBIN -iV`
Start_date=`$FPCBIN -iD`
add_log "Start $FPCBIN version is ${Start_version} ${Start_date}"
add_log "PATH=$PATH"
#ulimit -d 65536 -s 8192 -t 2400  1>> $report 2>&1
ulimit -t 2400  1>> $report 2>&1
add_log "Updating svn in `pwd`"
svn cleanup 1> $cleanlog 2>&1
svn up --accept theirs-conflict 1>> $svnlog 2>&1

if [ -d fpcsrc ]; then
  cd fpcsrc
fi

set_log $cleanlog
add_log "Start $MAKE distclean `$DATE`"
${MAKE} distclean $MAKEDEBUG OPT="-n $NEEDED_OPT" FPC=$FPCBIN 1>> ${cleanlog} 2>&1
makeres=$?
add_log "End $MAKE distclean; result=${makeres}"
set_log $makelog
add_log "Start $MAKE all `$DATE`"
${MAKE} all $MAKEDEBUG OPT="-n $NEEDED_OPT" FPC=$FPCBIN 1>> ${makelog} 2>&1
makeres=$?
add_log "End $MAKE all `$DATE`, res=$makeres"
if [ $makeres -ne 0 ] ; then
  add_log "${MAKE} distclean all failed result=${makeres}"
  tail -30 ${makelog} >> $report
  make_all_success=0
else
  add_log "Ending $MAKE distclean all; result=${makeres}"
  make_all_success=1
fi

if [ ! -f ./compiler/$FPCBIN ] ; then
  # Try a simple cycle in compiler subdirectory
  add_log "Start $MAKE -C compiler distclean cycle  `$DATE`"
  ${MAKE} -C compiler distclean cycle $MAKEDEBUG OPT="-n $NEEDED_OPT" FPC=$FPCBIN >> ${makelog} 2>&1
  makeres=$?
  add_log "End $MAKE -C compiler distclean cycle  `$DATE`, result=$makeres"
fi

if [ -f ./compiler/$FPCBIN ] ; then
  Build_version=`./compiler/$FPCBIN -iV`
  Build_date=`./compiler/$FPCBIN -iD`
  NewBinary=1
  add_log "New binary ./compiler/$FPCBIN, version=$Build_version, date=$Build_date"
else
  NewBinary=0
  add_log "No new binary ./compiler/$FPCBIN"
fi

if [ -z "$MAKE_TESTS_TARGET" ] ; then
  # Default $MAKE tests target is 'fulldb' 
  # which also means upload to testuite database
  # export with value full to avoid upload
  MAKE_TESTS_TARGET=fulldb
fi

if [ $NewBinary -eq 1 ] ; then
  add_log "New $FPCBIN version is ${Build_version} ${Build_date}"
  NEW_UNITDIR=`./compiler/$FPCBIN -iTP`-`./compiler/$FPCBIN -iTO`

  # Register system.ppu state
  if [ -f /home/${USER}/pas/fpc-${Build_version}/bin/ppudump ] ; then
    add_log "system ppu checksums stored to $STARTDIR/${NEW_UNITDIR}-system.ppu-log1"
    /home/${USER}/pas/fpc-${Build_version}/bin/ppudump rtl/units/${NEW_UNITDIR}/system.ppu | grep -E "(^Analysing|Checksum)" > $STARTDIR/${NEW_UNITDIR}-system.ppu-log1 2>&1
  fi

  add_log "Start $MAKE installsymlink in compiler dir"
  ${MAKE} -C compiler $MAKEDEBUG installsymlink INSTALL_PREFIX=~/pas/fpc-${Build_version} OPT="-n $NEEDED_OPT" FPC=`pwd`/compiler/$FPCBIN 1>> ${makelog} 2>&1
  makeres=$?
  if [ $makeres -ne 0 ] ; then
    add_log "End ${MAKE} -C compiler installsymlink failed res=${makeres}"
  else
    add_log "End $MAKE -C compiler installsymlink res=$makeres"
  fi

  if [ $make_all_success -eq 1 ] ; then
    add_log "Start $MAKE install"
    ${MAKE} $MAKEDEBUG install INSTALL_PREFIX=~/pas/fpc-${Build_version} OPT="-n $NEEDED_OPT" FPC=`pwd`/compiler/$FPCBIN 1>> ${makelog} 2>&1
    makeres=$?
    add_log "End ${MAKE} install failed `$DATE`, res=${makeres}"
  else
    add_log "Skipping ${MAKE} install, because '$MAKE all' failed `$DATE`, res=${makeres}"
    makeres=1
  fi

  if [ $makeres -ne 0 ] ; then
    for dir in rtl compiler packages utils ; do
      add_log "Start $MAKE install in dir $dir"
      ${MAKE} -C ./$dir install $MAKEDEBUG INSTALL_PREFIX=~/pas/fpc-${Build_version} OPT="-n $NEEDED_OPT" FPC=`pwd`/compiler/$FPCBIN 1>> ${makelog} 2>&1
      makeres=$?
      add_log "End $MAKE -C ./$dir install;`$DATE` result=${makeres}"
    done
  else
    add_log "Ending $MAKE install;`$DATE` result=${makeres}"i
  fi

  # fullinstall in compiler
  add_log "Start $MAKE fullinstall in compiler"
  ${MAKE} -C compiler $MAKEDEBUG cycle installsymlink fullinstallsymlink INSTALL_PREFIX=~/pas/fpc-${Build_version} OPT="-n $NEEDED_OPT" FPC=~/pas/fpc-${Build_version}/bin/$FPCBIN 1>> ${makelog} 2>&1
  makeres=$?
  add_log "End $MAKE fullinstall; result=${makeres}"

  # Check if system.ppu changed
  if [ -f /home/${USER}/pas/fpc-${Build_version}/bin/ppudump ] ; then
    add_log "New system ppu checksums stored to $STARTDIR/${NEW_UNITDIR}-system.ppu-log2"
    /home/${USER}/pas/fpc-${Build_version}/bin/ppudump rtl/units/${NEW_UNITDIR}/system.ppu | grep -E "(^Analysing|Checksum)" > $STARTDIR/${NEW_UNITDIR}-system.ppu-log2 2>&1
    cmp  $STARTDIR/${NEW_UNITDIR}-system.ppu-log1 $STARTDIR/${NEW_UNITDIR}-system.ppu-log2 > $STARTDIR/${NEW_UNITDIR}-system.ppu-logdiffs
    cmpres=$?
    if [ $cmpres -ne 0 ] ; then
      add_log "ppudump output for system.ppu changed"
      cat rtl/units/${NEW_UNITDIR}/system.ppu-logdiffs >> $report
      add_log "Cleaning packages to be sure"
      ${MAKE} -C packages distclean FPC=$NEW_PPC_BIN 1>> ${makelog} 2>&1
      add_log "Reinstalling packages as system.ppu has changed"
      ${MAKE} -C packages $MAKEDEBUG install INSTALL_PREFIX=~/pas/fpc-${Build_version} OPT="-n $NEEDED_OPT" FPC=/home/${USER}/pas/fpc-${Build_version}/bin/$FPCBIN 1>> ${makelog} 2>&1
    fi
  fi
  # Add new bin dir as first in PATH
  export PATH=/home/${USER}/pas/fpc-${Build_version}/bin:${PATH}
  add_log "Using new PATH=\"${PATH}\""
  NEWFPC=`which $FPCBIN`
  add_log "Using new binary \"${NEWFPC}\""

  NEW_UNITDIR=`$NEWFPC -iTP`-`$NEWFPC -iTO`

  (
  cd ~/pas/$SVNDIRNAME
  if [ -d fpcsrc ] ; then
    cd fpcsrc
  fi

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
    logdir=~/logs/$SVNDIRNAME/$TODAY/$NEW_UNITDIR/opts-${DIR_OPT}
    testslog=~/pas/$SVNDIRNAME/tests-${NEW_UNITDIR}-${DIR_OPT}.txt 
    cleantestslog=~/pas/$SVNDIRNAME/clean-${NEW_UNITDIR}-${DIR_OPT}.txt 
    set_log $testslog
    add_log "Starting $MAKE -C ../rtl distclean"
    TIME=`date +%H-%M-%S`
    ${MAKE} -C ../rtl distclean $MAKE_OPTS FPC=${NEWFPC} OPT="$NEDDED_OPT" > $cleantestslog 2>&1
    add_log "Starting $MAKE -C ../packages distclean"
    ${MAKE} -C ../packages distclean $MAKE_OPTS FPC=${NEWFPC} OPT="$NEDDED_OPT" >> $cleantestslog 2>&1
    add_log  "Starting $MAKE distclean"
    ${MAKE} distclean $MAKE_OPTS TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
      TEST_FPC=${NEWFPC} FPC=${NEWFPC} TEST_OPT="$TEST_OPT" OPT="$NEEDED_OPT" TEST_USE_LONGLOG=1 \
      DB_SSH_EXTRA=" -i ~/.ssh/freepascal" >> $cleantestslog 2>&1
    add_log "${MAKE} $MAKE_J_OPT $MAKE_TESTS_TARGET $MAKE_OPTS TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
      TEST_FPC=${NEWFPC} FPC=${NEWFPC} TEST_OPT=\"$TEST_OPT\" OPT=\"$NEEDED_OPT\" TEST_USE_LONGLOG=1 \
      DB_SSH_EXTRA=\" -i ~/.ssh/freepascal\" "
    ${MAKE} $MAKE_J_OPT $MAKE_TESTS_TARGET $MAKE_OPTS TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
      TEST_FPC=${NEWFPC} FPC=${NEWFPC} TEST_OPT="$TEST_OPT" OPT="$NEEDED_OPT" TEST_USE_LONGLOG=1 \
      DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1> $testslog 2>&1
    testsres=$?
    add_log "Ending $MAKE distclean $MAKE_TESTS_TARGET; result=${testsres}"
    if [ $testsres -ne 0 ] ; then
      add_log "Last 30 lines of testslog"
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
	if [ -d output-${SVNDIRNAME}-${DIR_OPT} ] ; then
	  rm -Rf output-${SVNDIRNAME}-${DIR_OPT}
	fi
	cp -Rf output output-${SVNDIRNAME}-${DIR_OPT}
      fi
    fi
  }

  cp ${svnlog} ~/pas/$SVNDIRNAME/svnlog-${NEW_UNITDIR}.txt
  cp ${makelog} ~/pas/$SVNDIRNAME/makelog-${NEW_UNITDIR}.txt

  if [ $do_run_tests -eq 1 ] ; then
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
    if [ "X${SVNDIRNAME}" != "X${SVNDIRNAME//trunk//}" ] ; then
      run_tests "-gh"
      # This freezes on trwsync and tw3695 tests
      # run_tests "-ghc"
    fi
  fi

  # Cleanup

  if [ ${testsres} -eq 0 ]; then
    cd ~/pas/$SVNDIRNAME
    ${MAKE} distclean 1>> ${cleanlog} 2>&1
  fi

  if [ $cleantests -eq 1 ] ; then
    cd ~/pas/$SVNDIRNAME
    if [ -d fpcsrc ] ; then
      cd fpcsrc
    fi
    cd tests
    rm -Rf output* 1>> ${cleanlog} 2>&1
  fi

  ) >> $report 2>&1

fi # NewBinary -eq 1

mutt -x -s "Free Pascal results on ${HOST_PC} ${NEW_UNITDIR} ${Build_version} ${Build_date}" \
     -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log


