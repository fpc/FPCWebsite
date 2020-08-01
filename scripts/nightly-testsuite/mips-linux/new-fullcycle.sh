#!/bin/bash

script=$0

if [ "X$1" == "Xskipfixes" ] ; then
  skipfixes=1
  shift
else
  skipfixes=0
fi

if [ "X$1" == "Xskiptrunk" ] ; then
  skiptrunk=1
  shift
else
  skiptrunk=0
fi

if [ "$1" == "skip" ] ; then
  skip=1
  shift
else
  skip=0
fi

if [ "$1" == "skipinstall" ] ; then
  skipinstall=1
  shift
else
  skipinstall=0
fi

. $HOME/bin/fpc-versions.sh

set -u

export TMP=$HOME/tmp
export TEMP=$TMP
export TMPDIR=$TMP
erase_fpmake=0
more_tests=0

ulimit -t 3600

function decho ()
{
  echo "`date +%Y-%m-%d-%H:%M`: $*"
}

ENDIAN=`readelf -h /bin/sh | grep endian`
MACHINE=`uname -n`

if [ "$MACHINE" = "erpro8-fsf1" ] ; then
  MACHINE=gccmips64
  erase_fpmake=1
  more_tests=1
fi

if [ "$MACHINE" = "erpro8-fsf2" ] ; then
  MACHINE=gccmipsel64
  erase_fpmake=1
  more_tests=1
fi

if [ "$MACHINE" = "gcc24" ] ; then
  MACHINE=gccmipsel64-alt
  erase_fpmake=1
  more_tests=1
fi


BASEDIR=$HOME/pas
HOMEBIN=$HOME/bin
REQUIRED_OPT=""
export TEST_HOSTNAME=$MACHINE

if [ "${ENDIAN//big/}" != "${ENDIAN}" ] ; then
  # fpcmips32 machine
  ENDIAN=big
  FPCEXE=ppcmips
  SRC_CPU=mips
  if [ "${MACHINE}" = "wndr3800" ] ; then
    export LANG=en_US.utf8
  fi
  if [ "${MACHINE}" = "gccmips64" ] ; then
    export LANG=en_US.utf8
    svnup_option="--non-interactive"
    REQUIRED_OPT="$REQUIRED_OPT -k-m -kelf32btsmip"
    o32_libgcc=`gcc -mabi=32 -print-libgcc-file-name`
    o32_libgcc_dir=`dirname $o32_libgcc`
    if [ -d "$o32_libgcc_dir" ] ; then
      REQUIRED_OPT+=" -Fl$o32_libgcc_dir"
    fi
    if [ -d "/usr/lib32" ] ; then
      REQUIRED_OPT+=" -Fl/usr/lib32"
    fi
    if [ -d "/lib32" ] ; then
      REQUIRED_OPT+=" -Fl/lib32"
    fi
    if [ -d "/usr/lib/mips-linux-gnu" ] ; then
      REQUIRED_OPT+=" -Fl/usr/lib/mips-linux-gnu"
    fi
    BASEDIR=$HOME/pas/mips
    FIXESDIR=$BASEDIR/$FIXESDIRNAME
    TRUNKDIR=$BASEDIR/$TRUNKDIRNAME
    if [ -d $HOME/bin/native-mips ] ; then
      HOMEBIN=$HOME/bin/native-mips
    fi
    export PACKDIR=$HOME/tmp/$MACHINE/fpc-pack-$SRC_CPU
  fi
else
  ENDIAN=little
  FPCEXE=ppcmipsel
  SRC_CPU=mipsel
  if [ "${MACHINE}" = "n16" ] ; then
    # fpcmipsel32 machine
    export LANG=en_GB.utf8
  fi
  if [[ ( "${MACHINE}" = "gccmipsel64" ) || ( "${MACHINE}" == "gccmipsel64-alt" ) ]] ; then
    # gcc23 alias gccmipsel64 machine
    export LANG=en_US.utf8
    # We need to specify the linker emulation
    REQUIRED_OPT="$REQUIRED_OPT -k-m -kelf32ltsmip"
    o32_libgcc=`gcc -mabi=32 -print-libgcc-file-name`
    o32_libgcc_dir=`dirname $o32_libgcc`
    if [ -d "$o32_libgcc_dir" ] ; then
      REQUIRED_OPT+=" -Fl$o32_libgcc_dir"
    fi
    if [ -d "/usr/libo32" ] ; then
      REQUIRED_OPT+=" -Fl/usr/libo32"
    fi
    if [ -d "/libo32" ] ; then
      REQUIRED_OPT+=" -Fl/libo32"
    fi
    # older version of svn doesn't support theirs-conflict
    svnup_option="--non-interactive"
    BASEDIR=$HOME/pas/mipsel
    FIXESDIR=$BASEDIR/$FIXESDIRNAME
    TRUNKDIR=$BASEDIR/$TRUNKDIRNAME
    if [ -d $HOME/bin/native-mipsel ] ; then
      HOMEBIN=$HOME/bin/native-mipsel
    fi
    export PACKDIR=$HOME/tmp/$MACHINE/fpc-pack-$SRC_CPU
  fi
fi

export HOMEBIN
export BASEDIR

MUTT=$HOMEBIN/mutt
SRC_OS=linux
SRC_FULL=${SRC_CPU}-${SRC_OS}
LOCKFILE=$BASEDIR/lock
OLDLOCKFILE=$BASEDIR/last-lock
if [ -z "$FIXESDIR" ] ; then
  FIXESDIR=$BASEDIR/$FIXESDIRNAME
fi
if [ -z "$TRUNKDIR" ] ; then
  TRUNKDIR=$BASEDIR/$TRUNKDIRNAME
fi
export FIXESDIR
export TRUNKDIR
if [ -d "$HOMEBIN" ] ; then
  export PATH=$HOMEBIN:$PATH
fi

function run_testsuite {
  TEST_OPT="$1"
  localtestslog="$2"
  if [ "${localtestslog}" = "" ] ; then
    localtestslog=$testslog
  fi
  decho "Using FPC=\"$TEST_FPC\" for tests"
  decho "Using TEST_OPT=\"$TEST_OPT\" for tests"
  decho "Using FPC=\"$TEST_FPC\" for tests" > $localtestslog
  decho "Using TEST_OPT=\"$TEST_OPT\" for tests" >> $localtestslog
  decho "Distcleaning rtl" >> $localtestslog
  make -C ../rtl distclean > /dev/null 2>> $localtestslog
  res=$?
  decho "Finished distcleaning rtl, res=$res" >> $localtestslog
  decho "Distcleaning packages" >> $localtestslog
  make -C ../packages distclean > /dev/null 2>> $localtestslog
  res=$?
  decho "Finished distcleaning packages, res=$res" >> $localtestslog
  decho "Starting 'make distclean testprep'" >> $localtestslog
  make TEST_FPC="$TEST_FPC" TEST_OPT="$TEST_OPT" distclean testprep 1>> $localtestslog 2>&1
  res=$?
  if [ $res -ne 0 ] ; then
    decho "testprep failed with TEST_OPT=\"$TEST_OPT\"" >> $localtestslog
    decho "Using TEST_OPT=\"-n -gl\" for testprep" >> $localtestslog
    decho "2nd try: Distcleaning rtl" >> $localtestslog
    make -C ../rtl distclean > /dev/null 2>> $localtestslog
    res=$?
    decho "2nd try: Finished distcleaning rtl, res=$res" >> $localtestslog
    decho "2nd try: Distcleaning packages" >> $localtestslog
    make -C ../packages distclean > /dev/null 2>> $localtestslog
    res=$?
    decho "2nd try: Finished distcleaning packages, res=$res" >> $localtestslog
    make TEST_FPC="$TEST_FPC" TEST_OPT="-n -gl" distclean testprep 1>> $localtestslog 2>&1
    res=$?
    if [ $res -ne 0 ] ; then
      decho "testprep also failed with TEST_OPT=\"-n -gl\"" >> $localtestslog
      return
    fi
  else
    decho "Ending 'make distclean testprep' successfully" >> $localtestslog
  fi
  (
  ulimit -t 90
  decho "Using time limit:`ulimit -t` for $TEST_OPT tests"
  make TEST_FPC="$TEST_FPC" TEST_OPT="$TEST_OPT" allexectests 1>> $localtestslog 2>&1
  res=$?
  decho "Finished TEST_OPT=\"$TEST_OPT\" allexectests, res=$res"
  echo "Finished TEST_OPT=\"$TEST_OPT\" allexectests, res=$res" >> $localtestslog
  if [ $res -ne 0 ]; then
    decho "Tests TEST_OPT=\"$TEST_OPT\" failed $res"
    attach="$attach -a ${localtestslog}"
  else
    echo "Uploading test results for TEST_OPT=\"$TEST_OPT\""
    make TEST_FPC="$TEST_FPC" TEST_OPT="$TEST_OPT" \
      uploadrun DB_SSH_EXTRA="-i ~/.ssh/freepascal" 1>> $localtestslog 2>&1
    uploadres=$?
    echo "Upload finished test results for TEST_OPT=\"$TEST_OPT\", res=$uploadres"
  fi
  )
  cp output/$SRC_FULL/faillist ${localtestslog}-faillist
  cp output/$SRC_FULL/log ${localtestslog}-log
  cp output/$SRC_FULL/longlog ${localtestslog}-longlog
}

function dover {
srcdir=$1
export FPCVERSION=$2
log=~/logs/fullcycle-${SRC_CPU}-${FPCVERSION}.log
cyclelog=~/logs/cycle-${SRC_CPU}-${FPCVERSION}.log
testslog=~/logs/tests-${SRC_CPU}-${FPCVERSION}.log
export FPCBASEDIR=$BASEDIR/fpc-${FPCVERSION}
attach=
res=0
svnup_option="--accept=theirs-conflict"

{
echo "Start date `date +%Y-%m-%d-%H-%M`"

decho "ENDIAN is $ENDIAN, MACHINE is $MACHINE"

if [ "${PATH//$HOMEBIN/}" == "${PATH}" ] ; then
  decho "Adding $HOMEBIN to PATH"
  export PATH=$HOMEBIN:$PATH
fi
decho "Start PATH is $PATH"

if [ "X$RELEASEVERSION" != "X" ] ; then
  if [ -f $BASEDIR/fpc-$RELEASEVERSION/bin/$FPCEXE ] ; then
    FPCRELEASEBIN=$BASEDIR/fpc-$RELEASEVERSION/bin/$FPCEXE
  fi
fi

cd $srcdir
svn cleanup
svn up $svnup_option

cd $srcdir

if [ -d fpcsrc ] ; then
  cd fpcsrc
fi

if [ $erase_fpmake -eq 1 ] ; then
  fpmake_list=`find . -name fpmake`
  echo "Erasing existing fpmake $fpmake_list"
  if [ -n "$fpmake_list" ] ; then
    for f in $fpmake_list ; do
      rm -f $f
    done
  fi
fi

cd compiler


FPCBIN=`which $FPCEXE`
if [ ! -f "$FPCBIN" ] ; then
  FPCBIN="$FPCRELEASEBIN"
fi
decho "Using binary $FPCBIN"

decho "Date before cycle `date +%Y-%m-%d-%H-%M`"
if [ $skip -eq 1 ] ; then
  decho "Skipping cycle"
else
  decho "Starting cycle"
  {
  make distclean > /dev/null
  make cycle DEBUG=1 FPC=$FPCBIN OPT="-n $REQUIRED_OPT"
  res=$?
  if [ $res -ne 0 ] ; then
    decho "Cycle failed, res=$res, trying again with $FPCRELEASEBIN"
    make distclean cycle DEBUG=1 FPC=$FPCRELEASEBIN OPT="-n $REQUIRED_OPT"
    res=$?
  else
    decho "Cycle finished successfully"
  fi
  if [ $res -ne 0 ] ; then
    decho "Cycle with release fpc failed, res=$res"
  else
    make install DEBUG=1 FPC=`pwd`/$FPCEXE OPT="-n $REQUIRED_OPT" INSTALL_PREFIX=$FPCBASEDIR
    res=$?
    if [ $res -eq 0 ] ; then
      # Removing the DEBUG=1 generates a problem for cpall.o and syscall.o
      # Until this is fixed also use DEBUG=1 here
      make -C ../rtl/linux clean install DEBUG=1 FPC=`pwd`/$FPCEXE OPT="-n $REQUIRED_OPT" INSTALL_PREFIX=$FPCBASEDIR
      res=$?
    fi
  fi ; } 1> $cyclelog 2>&1
fi

if [ $res -ne 0 ] ; then
  decho "Starting cycle failed"
  attach="-a $cyclelog"
else
  export PATH="$BASEDIR/fpc-$FPCVERSION/bin:$PATH"
  FPCBIN=`which $FPCEXE`
  decho "Using new binary $FPCBIN"
  cd ..
  if [ $skipinstall -eq 1 ] ; then
    decho "Skipping install"
  else
    repeat=1
    # -O2 option is still buggy, we need to use FPCCPUOPT=-O-, OBSOLETE?
    FPCCPUOPT=-O2
    while [ $repeat -eq 1 ] ; do
      alllog=~/logs/all-${FPCCPUOPT}-${SRC_CPU}-${FPCVERSION}.log
      echo "Starting with $FPCCPUOPT=$FPCCPUOPT" > $alllog
      make distclean FPC=$FPCBIN > /dev/null
      res=$?
      if [ $res -ne 0 ] ; then
        echo "Warning: make distclean failed, res=$res" >> $alllog
      fi
      ADDOPT="FPCCPUOPT=$FPCCPUOPT"
      decho "Starting make all install DEBUG=1 FPC=$FPCBIN INSTALL_PREFIX=$FPCBASEDIR $ADDOPT OPT=-n OVERRIDEVERSIONCHECK=1 1>> $alllog 2>&1"
      make all install DEBUG=1 FPC=$FPCBIN INSTALL_PREFIX=$FPCBASEDIR $ADDOPT OPT="-n $REQUIRED_OPT" OVERRIDEVERSIONCHECK=1 1>> $alllog 2>&1
      res=$?
      allres=$res
      if [ $res -ne 0 ] ; then
        decho "WARNING: make all failed, trying by sub-directories"
        for dir in rtl packages packages/ide utils ; do
          trial=1
          ok_trial=0
          max_trial=5
          while [ $trial -lt $max_trial ] ; do
            if [ $trial -eq 1 ] ; then
              decho "Starting make -C $dir distclean DEBUG=1 FPC=$FPCBIN INSTALL_PREFIX=$FPCBASEDIR OPT="-n $FPCCPUOPT" OVERRIDEVERSIONCHECK=1 1>> $alllog 2>&1"
              make -C $dir distclean DEBUG=1 FPC=$FPCBIN INSTALL_PREFIX=$FPCBASEDIR OPT="-n $REQUIRED_OPT $FPCCPUOPT" OVERRIDEVERSIONCHECK=1 1>> $alllog 2>&1
            fi
            decho "Starting make -C $dir install DEBUG=1 FPC=$FPCBIN INSTALL_PREFIX=$FPCBASEDIR OPT="-n $FPCCPUOPT" OVERRIDEVERSIONCHECK=1 1>> $alllog 2>&1"
            make -C $dir install DEBUG=1 FPC=$FPCBIN INSTALL_PREFIX=$FPCBASEDIR OPT="-n $REQUIRED_OPT $FPCCPUOPT" OVERRIDEVERSIONCHECK=1 1>> $alllog 2>&1
            res=$?
            if [ $res -ne 0 ] ; then
              decho "make install in $dir failed, res=$res, trial=$trial, retrying"
              let trial++
            else
              let ok_trial=$trial
              let trial=$max_trial
            fi
          done
          if [ $res -ne 0 ] ; then
            decho "make -C $dir  with $ADDOPT failed $trial times"
            let allres++
          else
            decho "make -C $dir succeeded after $ok_trial trials"
          fi
        done
      fi
      if [ $allres -eq 0 ] ; then
        decho "make succeeded with FPCCPUOPT=\"$FPCCPUOPT\""
        repeat=0
      else
        decho "make failed with FPCCPUOPT=\"$FPCCPUOPT\""
        if [ "$FPCCPUOPT" == "-O2" ] ; then
          FPCCPUOPT=-O1
        elif [ "$FPCCPUOPT" == "-O1" ] ; then
          FPCCPUOPT=-O-
        else
          repeat=0
        fi
      fi
    done
    if [ $res -ne 0 ] ; then
      decho "make failed with FPCCPUOPT=\"$FPCCPUOPT\""
      attach="$attach -a $alllog"
    fi
  fi
  if [ $res -eq 0 ] ; then
    cd ./tests
    echo "Date before tests `date +%Y-%m-%d-%H-%M`"
    export FPC=$FPCBIN
    export TEST_USER=muller
    LIBGCC_PATH=`gcc -print-libgcc-file-name`
    LIBGCC_DIR=`dirname $LIBGCC_PATH`
    if [ "$LIBGCC_DIR" != "" ] ; then
      export TEST_OPT="$TEST_OPT -Fl${LIBGCC_DIR}"
    fi
    BASE_TEST_OPT="$TEST_OPT $REQUIRED_OPT"
    TEST_FPC=$BASEDIR/fpc-$FPCVERSION/bin/$FPCEXE
    # rm -f ${testslog}-default
    # run_testsuite "$TEST_OPT" ${testslog}-default
    TEST_OPT="$BASE_TEST_OPT -Cg"
    rm -f ${testslog}-Cg
    run_testsuite "$TEST_OPT" ${testslog}-Cg

    if [ $more_tests -eq 1 ] ; then
      TEST_OPT="$BASE_TEST_OPT -O1"
      rm -f ${testslog}-O1
      run_testsuite "$TEST_OPT" ${testslog}-O1
    fi
    TEST_OPT="$BASE_TEST_OPT -O2"
    rm -f ${testslog}-O2
    run_testsuite "$TEST_OPT" ${testslog}-O2
    if [ $more_tests -eq 1 ] ; then
      TEST_OPT="$BASE_TEST_OPT -O4"
      rm -f ${testslog}-O4
      run_testsuite "$TEST_OPT" ${testslog}-O4
    fi
    echo "Tests finished";
  fi
fi;
echo "Limits at end:`ulimit -a`"
echo "Date at end `date +%Y-%m-%d-%H-%M`"
} 1> $log 2>&1

FPC_VERSION=`$FPCBIN -iV`
FPC_DATE=`$FPCBIN -iD`

$MUTT -s "Free Pascal results on $MACHINE for $ENDIAN mips $script script result $FPC_VERSION $FPC_DATE" -i $log $attach -- pierre@freepascal.org < /dev/null
}

function set_lock ()
{
  echo "new-fullcycle.sh started at `date`" > $LOCKFILE
}

function release_lock ()
{
  echo "new-fullcycle.sh ended at `date`" >> $LOCKFILE
  mv -f $LOCKFILE $OLDLOCKFILE
}

function handle_debug_trap ()
{
  echo "`date `: DEBUG $*" >> $LOCKFILE
}

function handle_trap ()
{
  echo "Signal ${1:-} recieved" >> $LOCKFILE
  release_lock
  exit
}

set_lock

trap  handle_trap SIGINT
trap  handle_trap SIGQUIT
trap  handle_trap SIGTERM
trap  handle_debug_trap DEBUG

TEST_OPT=""
ORIGPATH=${PATH}
if [ $skipfixes -eq 0 ] ; then
  dover $FIXESDIR $FIXESVERSION
fi

TEST_OPT=""
# restore previous PATH
export PATH=${ORIGPATH}
if [ $skiptrunk -eq 0 ] ; then
  dover $TRUNKDIR $TRUNKVERSION
fi

export PATH=${ORIGPATH}

if [ $skipfixes -eq 0 ] ; then
  $HOMEBIN/makesnapshot-fixes.sh
fi
if [ $skiptrunk -eq 0 ] ; then
  $HOMEBIN/makesnapshot-trunk.sh
fi

if [ -f $BASEDIR/trunk/fpcsrc/tests/do-checks.txt ] ; then
  doit=`cat $BASEDIR/trunk/fpcsrc/tests/do-checks.txt`
  if [ "X$doit" == "Xyes" ] ; then
    export PATH=$BASEDIR/fpc-$TRUNKVERSION/bin:$PATH
    $HOMEBIN/check-optimizations.sh
    rm $BASEDIR/trunk/fpcsrc/tests/do-checks.txt
    echo "no" >  $BASEDIR/trunk/fpcsrc/tests/do-checks.txt
  fi
fi

if [ -f $BASEDIR/fixes/fpcsrc/tests/do-checks.txt ] ; then
  doit=`cat $BASEDIR/fixes/fpcsrc/tests/do-checks.txt`
  if [ "X$doit" == "Xyes" ] ; then
    export PATH=$BASEDIR/fpc-$FIXESVERSION/bin:$PATH
    export FIXES=1
    $HOMEBIN/check-optimizations.sh
    rm $BASEDIR/fixes/fpcsrc/tests/do-checks.txt
    echo "no" >  $BASEDIR/fixes/fpcsrc/tests/do-checks.txt
  fi
fi

cd $HOME/scripts
(
  svn cleanup
  svn up ) > $HOME/logs/svn-scripts$SRC_FULL.log 2>&1

release_lock
