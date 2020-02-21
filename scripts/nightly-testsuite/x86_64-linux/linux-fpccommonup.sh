#!/bin/bash

. $HOME/bin/fpc-versions.sh 

# Evaluate all arguments containing an equal sign
# as variable definition, stop as soon as
# one argument does not contain an equal sign
while [ "$1" != "" ] ; do
  if [ "${1/=/_}" != "$1" ] ; then
    eval export "$1"
    shift
  else
    break
  fi
done

if [ -z "$USER" ]; then
  USER=$LOGNAME
fi

if [ "X$USE_DEBUG" == "X1" ] ; then
  MAKEDEBUG="DEBUG=1"
else
  MAKEDEBUG=
fi

if [ -z "$FPCBIN" ] ; then
  FPCBIN=ppcx64
fi

if [ -z "$MAKE" ] ; then
  export MAKE=make
fi

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

if [ -z "$NEEDED_OPT" ] ; then
  NEEDED_OPT=
fi

if [ -z "$MAKE_TESTS_TARGET" ] ; then
  # Default $MAKE tests target is 'fulldb' 
  # which also means upload to testuite database
  # export with value full to avoid upload
  MAKE_TESTS_TARGET=fulldb
fi

export HOSTNAME=${HOSTNAME//.*/}

current_log=

set -u

FPCRELEASEVERSION=$RELEASEVERSION
# Prepend release binary path and local $HOME/bin to PATH
export PATH=${HOME}/pas/fpc-${FPCRELEASEVERSION}/bin:${HOME}/bin:$PATH

# Limit resources (64mb data, 8mb stack, 40 minutes)

add_to_log=""

if [ "X$FPCBIN" == "Xppc386" ] ; then
  NEEDED_OPT="$NEEDED_OPT -Xd"
  if [ -d "/usr/lib32" ] ; then
    NEEDED_OPT="$NEEDED_OPT -Fl/usr/lib32"
  fi
  if [ -d "/usr/local/lib32" ] ; then
    NEEDED_OPT="$NEEDED_OPT -Fl/usr/local/lib32"
  fi
  if [ -d "/lib32" ] ; then
    NEEDED_OPT="$NEEDED_OPT -Fl/lib32"
  fi
  gnu_ld_version=`ld --version 2> /dev/null`
  if [ "${gnu_ld_version/2.31.1/}" != "$gnu_ld_version" ] ; then
    add_to_log="Warning: this GNU linker has a bug for i386 emulation"
    gnu_i386_linux_ld_version=`i386-linux-ld --version 2> /dev/null`
    if [ -z "$gnu_i386_linux_ld_version" ] ; then
      echo "$add_to_log Unable to find i386-linux-ld"
      exit
    elif [ "${gnu_i386_linux_ld_version/2.31.1/}" != "$gnu_i386_linux_ld_version" ] ; then
      add_to_log="$add_to_log Warning: this GNU i386-linux linker has a bug for i386 emulation"
    else
      add_to_log="$add_to_log Using i386-linux-ld instead"
      export BINUTILSPREFIX=i386-linux-
      NEEDED_OPT="$NEEDED_OPT -XP$BINUTILSPREFIX"
    fi
  fi
  SUFFIX=-32
  export FPCFPMAKE=`which ppcx64`
  # Avoid usage of ppc386 to compile fpmake,
  # as this hangs on exit
  export FPCFPMAKENEW=`which ppcx64`
else
  NEEDED_OPT=
  SUFFIX=-64
fi

if [ "$HOSTNAME" == "CFARM-IUT-TLSE3" ] ; then
  export HOSTNAME=gcc21
fi

MAKE_J_OPT=""

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

DATE="date +%Y-%m-%d-%H-%M-%S"
TODAY=`date +%Y-%m-%d`

if [ -d "$HOME/pas/${SVNDIRNAME}" ] ; then
  cd "$HOME/pas/${SVNDIRNAME}"
else
  echo "Directory $HOME/pas/${SVNDIRNAME} not found, skipping"
  exit
fi

currentlog=""

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

function gen_ppu_log ()
{
  dir="$1"
  ppufilename="$2"
  ppusuff="$3"
  ppu="$dir/$ppufilename"
  logfile="$logdir/${ppufilename}${ppusuff}$SUFFIX"
  if [ -f ${HOME}/pas/fpc-${Build_version}/bin/ppudump ] ; then
    echo "${HOME}/pas/fpc-${Build_version}/bin/ppudump $ppu > $logfile" >> $makelog
    ${HOME}/pas/fpc-${Build_version}/bin/ppudump "$ppu" > $logfile 2>&1
    grep -E "(^Analysing|Checksum)" $logfile > ${logfile}-short 2>&1
  fi
}

function gen_ppu_diff ()
{
  ppufilename="$1"
  ppusuff1="$2"
  ppusuff2="$3"
  ppu1="$logdir/$ppufilename$ppusuff1${SUFFIX}"
  ppu2="$logdir/$ppufilename$ppusuff2${SUFFIX}"
  difffile="$logdir/${ppufilename}.ppudiffs${SUFFIX}"
  echo "diff -c \"${ppu1}\" \"${ppu2}\" > ${difffile}" >> $makelog
  diff -c "${ppu1}" "${ppu2}" > ${difffile} 2>&1 
  diffres=$?
  if [ $diffres -ne 0 ] ; then
    echo "ppudump output changed for $ppufilename" >> $report
    wc -l "${difffile}" >> $report
    echo "First 99 lines of ${difffile}" >> $report
    head -99 "${difffile}" >> $report
    echo "End of first 99 lines of ${difffile}" >> $report
    echo "Cleaning packages to be sure" >> $report
    make -C packages distclean FPC=$NEW_PPC_BIN 1>> ${makelog} 2>&1
  fi
}

STARTDIR=`pwd`
export logdir=$HOME/logs/$SVNDIRNAME
export report=$logdir/report${SUFFIX}.txt 
export svnlog=$logdir/svnlog${SUFFIX}.txt 
export cleanlog=$logdir/cleanlog${SUFFIX}.txt 
export makelog=$logdir/makelog${SUFFIX}.txt 

set_log $report
echo "Starting $0 on $HOSTNAME" > $report
if [ -n "${add_to_log}" ] ; then
  add_log "${add_to_log}"
fi

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

start_dir=`pwd`

function remove_all_fpmake_binaries ()
{
  # Remove any existing fpmake binary
  add_log "Looking for existing fpmake binaries"
  fpmake_binaries=`find . -name fpmake 2> /dev/null`
  if [ -n "$fpmake_binaries" ] ; then
    add_log "fpmake binaries found: $fpmake_binaries"
    for bin in $fpmake_binaries ; do
      rm -Rf $bin
    done
  else
    add_log "No fpmake binaries found"
  fi
}

set_log $cleanlog
remove_all_fpmake_binaries
add_log "Start $MAKE distclean"
${MAKE} distclean $MAKEDEBUG OPT="-n $NEEDED_OPT" FPC=$FPCBIN 1>> ${cleanlog} 2>&1
makeres=$?
add_log "End $MAKE distclean; result=${makeres}"
set_log $makelog
add_log "Start $MAKE all"
${MAKE} all $MAKEDEBUG OPT="-n $NEEDED_OPT" FPC=$FPCBIN 1>> ${makelog} 2>&1
makeres=$?
add_log "End $MAKE all, res=$makeres"
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
  add_log "Start $MAKE -C compiler distclean cycle"
  ${MAKE} -C compiler distclean cycle $MAKEDEBUG OPT="-n $NEEDED_OPT" FPC=$FPCBIN >> ${makelog} 2>&1
  makeres=$?
  add_log "End $MAKE -C compiler distclean cycle, result=$makeres"
fi

if [ -f ./compiler/$FPCBIN ] ; then
  NEW_PPC_BIN=`pwd`/compiler/$FPCBIN
  Build_version=`$NEW_PPC_BIN -iV`
  Build_date=`$NEW_PPC_BIN -iD`
  NEW_OS_TARGET=`$NEW_PPC_BIN -iTO`
  NEW_CPU_TARGET=`$NEW_PPC_BIN -iTP`
  NEW_UNITDIR=${NEW_CPU_TARGET}-${NEW_OS_TARGET}

  NewBinary=1
  add_log "New binary $NEW_PPC_BIN, version=$Build_version, date=$Build_date, OS=$NEW_OS_TARGET, CPU=$NEW_CPU_TARGET"
else
  NewBinary=0
  Build_version=`$FPCBIN -iV`
  Build_date=`$FPCBIN -iD`
  NEW_OS_TARGET=`$FPCBIN -iTO`
  NEW_CPU_TARGET=`$FPCBIN -iTP`
  NEW_UNITDIR=${NEW_CPU_TARGET}-${NEW_OS_TARGET}

  add_log "No new binary ./compiler/$FPCBIN"
fi

if [ $NewBinary -eq 1 ] ; then
  add_log "New $FPCBIN version is ${Build_version} ${Build_date}"

  # Register system, objpas and sysutils ppu state
  gen_ppu_log rtl/units/${NEW_UNITDIR} system.ppu -log1
  gen_ppu_log rtl/units/${NEW_UNITDIR} objpas.ppu -log1
  gen_ppu_log rtl/units/${NEW_UNITDIR} sysutils.ppu -log1

  add_log "Start $MAKE installsymlink in compiler dir"
  ${MAKE} -C compiler $MAKEDEBUG installsymlink INSTALL_PREFIX=~/pas/fpc-${Build_version} OPT="-n $NEEDED_OPT" FPC=$NEW_PPC_BIN 1>> ${makelog} 2>&1
  makeres=$?
  if [ $makeres -ne 0 ] ; then
    add_log "End ${MAKE} -C compiler installsymlink failed res=${makeres}"
  else
    add_log "End $MAKE -C compiler installsymlink res=$makeres"
  fi

  if [ $make_all_success -eq 1 ] ; then
    add_log "Start $MAKE install"
    ${MAKE} $MAKEDEBUG install INSTALL_PREFIX=~/pas/fpc-${Build_version} OPT="-n $NEEDED_OPT" FPC=$NEW_PPC_BIN 1>> ${makelog} 2>&1
    makeres=$?
    add_log "End ${MAKE} install, res=${makeres}"
  else
    add_log "Skipping ${MAKE} install, because '$MAKE all' failed, res=${makeres}"
    makeres=1
  fi

  if [ $makeres -ne 0 ] ; then
    if [ -n "$FPCFPMAKE" ] ; then
      remove_all_fpmake_binaries
      add_log "Compiling rtl with $FPCFPMAKE"
      ${MAKE} -C ./rtl FPC="$FPCFPMAKE" OPT="-n" >> ${makelog} 2>&1
      add_log "Compiling bootstrap with $FPCFPMAKE"
      ${MAKE} -C ./packages/fpmkunit bootstrap OPT="-n" FPC="$FPCFPMAKE" >> ${makelog} 2>&1
    fi
    for dir in rtl compiler packages utils ; do
      add_log "Start $MAKE install in dir $dir"
      ${MAKE} -C ./$dir install $MAKEDEBUG INSTALL_PREFIX=~/pas/fpc-${Build_version} OPT="-n $NEEDED_OPT" FPC=$NEW_PPC_BIN 1>> ${makelog} 2>&1
      makeres=$?
      add_log "End $MAKE -C ./$dir install; result=${makeres}"
    done
  else
    add_log "Ending $MAKE install; result=${makeres}"
  fi

  # fullinstall in compiler
  add_log "Start $MAKE fullinstall in compiler"
  NEW_PPC_BIN=~/pas/fpc-${Build_version}/bin/$FPCBIN
  ${MAKE} -C compiler $MAKEDEBUG cycle installsymlink fullinstallsymlink INSTALL_PREFIX=~/pas/fpc-${Build_version} OPT="-n $NEEDED_OPT" FPC=$NEW_PPC_BIN 1>> ${makelog} 2>&1
  makeres=$?
  add_log "End $MAKE fullinstall; result=${makeres}"
  if [ $makeres -ne 0 ] ; then
    add_log "Generating all cross-compilers failed, see $makelog for details"
    add_log "Recompiling rtl"
    ${MAKE} -C compiler $MAKEDEBUG rtlclean rtl OPT="-n $NEEDED_OPT" INSTALL_PREFIX=~/pas/fpc-${Build_version} FPC=$NEW_FPC_BIN >> $makelog 2>&1
    makeres=$?
    if [ $makeres -ne 0 ] ; then
      add_log "Generating new native compiler failed, see $makelog for details"
    fi
    for cpu in $cpu_list ; do
      add_log "Compiling compiler for $cpu"
      ${MAKE} -C compiler $MAKEDEBUG $cpu ${cpu}_exe_install OPT="-n $NEEDED_OPT" INSTALL_PREFIX=~/pas/fpc-${Build_version} FPC=$NEW_FPC_BIN >> $makelog 2>&1
      makeres=$?
      if [ $makeres -ne 0 ] ; then
        add_log "Generating $cpu cross-compiler failed, see $makelog for details"
      fi
    done
  fi
  # Register system, objpas and sysutils new ppu state
  gen_ppu_log rtl/units/${NEW_UNITDIR} system.ppu -log2
  gen_ppu_log rtl/units/${NEW_UNITDIR} objpas.ppu -log2
  gen_ppu_log rtl/units/${NEW_UNITDIR} sysutils.ppu -log2

  # Compare system, objpas and sysutils old versus new ppu state
  gen_ppu_diff system.ppu -log1 -log2
  gen_ppu_diff objpas.ppu -log1 -log2
  gen_ppu_diff sysutils.ppu -log1 -log2

  # Add new bin dir as first in PATH
  export PATH=${HOME}/pas/fpc-${Build_version}/bin:${PATH}
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
    if [ $# -ge 1 ] ; then
      MIN_OPT="$1"
      DIR_OPT=${MIN_OPT// /}
      TEST_OPT="$NEEDED_OPT $1"
    else
      MIN_OPT=""
      DIR_OPT=""
      TEST_OPT=""
    fi

    if [ $# -ge 2 ] ; then
      MAKE_OPTS="$2"
    else
      MAKE_OPTS=""
    fi
    logdir=~/logs/$SVNDIRNAME/$TODAY/$NEW_UNITDIR/opts-${DIR_OPT}
    testslog=~/pas/$SVNDIRNAME/tests-${NEW_UNITDIR}-${DIR_OPT}.txt 
    cleantestslog=~/pas/$SVNDIRNAME/clean-${NEW_UNITDIR}-${DIR_OPT}.txt 
    set_log $testslog
    add_log "Starting $MAKE -C ../rtl distclean"
    TIME=`date +%H-%M-%S`
    remove_all_fpmake_binaries
    ${MAKE} -C ../rtl distclean $MAKE_OPTS FPC=${NEWFPC} OPT="$NEEDED_OPT" > $cleantestslog 2>&1
    add_log "Starting $MAKE -C ../packages distclean"
    ${MAKE} -C ../packages distclean $MAKE_OPTS FPC=${NEWFPC} OPT="$NEEDED_OPT" >> $cleantestslog 2>&1
    add_log  "Starting $MAKE distclean"
    ${MAKE} distclean $MAKE_OPTS TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
      TEST_FPC=${NEWFPC} FPC=${NEWFPC} TEST_OPT="$TEST_OPT" OPT="$NEEDED_OPT" TEST_USE_LONGLOG=1 \
      DB_SSH_EXTRA=" -i ~/.ssh/freepascal" >> $cleantestslog 2>&1
    add_log "${MAKE} $MAKE_J_OPT $MAKE_TESTS_TARGET $MAKE_OPTS TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
      TEST_FPC=${NEWFPC} FPC=${NEWFPC} TEST_OPT=\"$TEST_OPT\" OPT=\"$NEEDED_OPT\" TEST_USE_LONGLOG=1 \
      DB_SSH_EXTRA=\" -i ~/.ssh/freepascal\" "
    ${MAKE} $MAKE_J_OPT $MAKE_TESTS_TARGET $MAKE_OPTS TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
      TEST_FPC=${NEWFPC} FPC=${NEWFPC} TEST_OPT="$TEST_OPT" OPT="$NEEDED_OPT" TEST_USE_LONGLOG=1 \
      FPCFPMAKE=$FPCFPMAKE FPCFPMAKENEW=$FPCFPMAKENEW \ 
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


