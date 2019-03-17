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
 
. $HOME/bin/fpc-versions.sh

if [ -d $HOME/bin ] ; then
  export PATH=$HOME/bin:$PATH
fi

export TMP=$HOME/tmp
export TEMP=$TMP
export TMPDIR=$TMP

ulimit -t 3600

LOCKFILE=/home/fpcdevel/pas/lock
OLDLOCKFILE=/home/fpcdevel/pas/last-lock

ENDIAN=`readelf -h /bin/sh | grep endian`
MACHINE=`uname -n`
MUTT=/home/fpcdevel/bin/mutt

function run_testsuite {
  localtestslog=$1
  if [ "${localtestslog}" = "" ] ; then
    localtestslog=$testslog
  fi
  echo "Using FPC=\"$TEST_FPC\" for tests"
  echo "Using TEST_OPT=\"$TEST_OPT\" for tests"
  echo "Using FPC=\"$TEST_FPC\" for tests" >> $localtestslog
  echo "Using TEST_OPT=\"$TEST_OPT\" for tests" >> $localtestslog
  make -C ../rtl distclean > /dev/null
  make -C ../packages distclean > /dev/null
  make TEST_FPC="$TEST_FPC" TEST_OPT="$TEST_OPT" distclean allexectests \
    uploadrun DB_SSH_EXTRA="-i ~/.ssh/freepascal" 1>> $localtestslog 2>&1
  res=$?
  echo "Finished tests, res=$res"
  echo "Finished tests, res=$res" >> $localtestslog
  if [ $res -ne 0 ]; then
    echo "Tests failed $res"
    attach="$attach -a ${localtestslog}"
  fi
}

function dover {
srcdir=$1
export FPCVERSION=$2
log=~/logs/fullcycle-${FPCVERSION}.log
cyclelog=~/logs/cycle-${FPCVERSION}.log
alllog=~/logs/all-${FPCVERSION}.log
testslog=~/logs/tests-${FPCVERSION}.log
export FPCBASEDIR=~/pas/fpc-${FPCVERSION}
attach=
res=0
svnup_option="--accept=theirs-conflict"

{
echo "Start date `date +%Y-%m-%d-%H-%M`"

echo "ENDIAN is $ENDIAN, MACHINE is $MACHINE"

if [ "${ENDIAN//big/}" != "${ENDIAN}" ] ; then
  echo "Big endian machine"
  # fpcmips32 machine
  ENDIAN=big
  FPCEXE=ppcmips
  export LANG=en_US.utf8
else
  echo "Little endian machine"
  ENDIAN=little
  FPCEXE=ppcmipsel
  if [ "${MACHINE}" = "n16" ] ; then
    # fpcmipsel32 machine
    export LANG=en_GB.utf8
  else
    # gcc42 alias gccmips machine
    export LANG=en_US.utf8
    # older version of svn doesn't support theirs-conflict
    svnup_option="--non-interactive"
  fi
fi
if [ "${PATH//pas\/fpc/}" == "${PATH}" ] ; then
  echo "Adding $FPCBASEDIR/bin to PATH"
  export PATH=$FPCBASEDIR/bin:~/bin:$PATH
else
  echo "Start PATH is $PATH"
fi

if [ "X$RELEASEVERSION" != "X" ] ; then
  if [ -f $HOME/pas/fpc-$RELEASEVERSION/bin/$FPCEXE ] ; then
    FPCRELEASEBIN=$HOME/pas/fpc-$RELEASEVERSION/bin/$FPCEXE
  fi
fi

cd $srcdir
svn cleanup
svn up $svnup_option

cd $srcdir/fpcsrc/compiler


FPCBIN=`which $FPCEXE`
echo "Using binary $FPCBIN"

echo "Date before cycle `date +%Y-%m-%d-%H-%M`"
if [ "$1" == "skip" ] ; then
  echo "Skipping cycle"
  shift
else
  echo "Starting cycle"
  {
  make distclean > /dev/null
  make cycle DEBUG=1 FPC=$FPCBIN OPT=-n
  res=$?
  if [ $res -ne 0 ] ; then
    echo "Cycle failed, res=$res, trying again with $FPCRELEASEBIN"
    make distclean cycle DEBUG=1 FPC=$FPCRELEASEBIN OPT=-n
    res=$?
  fi
  if [ $res -ne 0 ] ; then
    echo "Cycle with release fpc failed, res=$res"
  else
    make install DEBUG=1 FPC=`pwd`/$FPCEXE OPT=-n PREFIX=$FPCBASEDIR
    res=$?
    if [ $res -eq 0 ] ; then
      make -C ../rtl/linux install FPC=`pwd`/$FPCEXE OPT=-n PREFIX=$FPCBASEDIR
      res=$?
    fi
  fi ; } 1> $cyclelog 2>&1
fi

if [ $res -ne 0 ] ; then
  echo "Starting cycle failed"
  attach="-a $cyclelog"
else
  export PATH="$HOME/pas/fpc-$FPCVERSION/bin:$PATH"
  FPCBIN=`which $FPCEXE`
  echo "Using new binary $FPCBIN"
  cd ..
  if [ "$1" == "skipinstall" ] ; then
    echo "Skipping install"
    shift
  else
    repeat=1
    # -O2 option is still buggy, we need to use FPCCPUOPT=-O-, OBSOLETE?
    FPCCPUOPT=-O2
    while [ $repeat -eq 1 ] ; do
      make distclean > /dev/null
      ADDOPT="FPCCPUOPT=$FPCCPUOPT"
      echo "Starting make all install DEBUG=1 FPC=$FPCBIN PREFIX=$FPCBASEDIR $ADDOPT OPT=-n OVERRIDEVERSIONCHECK=1 1> $alllog 2>&1"
      make all install DEBUG=1 FPC=$FPCBIN PREFIX=$FPCBASEDIR $ADDOPT OPT=-n OVERRIDEVERSIONCHECK=1 1> $alllog 2>&1
      res=$?
      if [ $res -ne 0 ] ; then
        echo "WARNING: make all failed, trying by sub-directories"
        for dir in rtl packages utils ; do
          echo "Starting make -C $dir install DEBUG=1 FPC=$FPCBIN PREFIX=$FPCBASEDIR OPT="-n $FPCCPUOPT" OVERRIDEVERSIONCHECK=1 1>> $alllog 2>&1"
          make -C $dir install DEBUG=1 FPC=$FPCBIN PREFIX=$FPCBASEDIR OPT="-n $FPCCPUOPT" OVERRIDEVERSIONCHECK=1 1>> $alllog 2>&1
          res=$?
          if [ $res -ne 0 ] ; then
            echo "make install in $dir failed, res=$res"
          fi
        done
      fi
      if [ $res -eq 0 ] ; then
        repeat=0
      else
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
      attach="$attach -a $alllog"
    fi
  fi
  cd ./tests
  { 
  echo "Date before tests `date +%Y-%m-%d-%H-%M`"
  ulimit -t 999
  export FPC=$FPCBIN
  export TEST_USER=muller
  LIBGCC_PATH=`gcc -print-libgcc-file-name`
  LIBGCC_DIR=`dirname $LIBGCC_PATH`
  if [ "$LIBGCC_DIR" != "" ] ; then
    export TEST_OPT="$TEST_OPT -Fl${LIBGCC_DIR}"
  fi
  BASE_TEST_OPT="$TEST_OPT"
  TEST_FPC=~/pas/fpc-$FPCVERSION/bin/$FPCEXE
  # rm -f ${testslog}-default
  # run_testsuite ${testslog}-default
  TEST_OPT="$BASE_TEST_OPT -Cg"
  rm -f ${testslog}-Cg
  run_testsuite ${testslog}-Cg
  TEST_OPT="$BASE_TEST_OPT -O1"
  # rm -f ${testslog}-O1
  # run_testsuite ${testslog}-O1
  TEST_OPT="$BASE_TEST_OPT -O2"
  rm -f ${testslog}-O2
  run_testsuite ${testslog}-O2
  echo "Tests finished";
  }
fi;
echo "Date at end `date +%Y-%m-%d-%H-%M`"
} 1> $log 2>&1

FPC_VERSION=`$FPCBIN -iV`
FPC_DATE=`$FPCBIN -iD`

$MUTT -s "Free Pascal results on $MACHINE for $ENDIAN mips $script script result $FPC_VERSION $FPC_DATE" -i $log $attach -- pierre@freepascal.org < /dev/null
}

function wait_for_lock ()
{
  while [ -e $LOCKFILE ] ; do
    sleep 60
  done
  echo "new-fullcycle.sh started at `date`" > $LOCKFILE
}

function release_lock ()
{
  echo "new-fullcycle.sh ended at `date`" >> $LOCKFILE
  mv -f $LOCKFILE $OLDLOCKFILE
}

wait_for_lock

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
  $HOME/bin/makesnapshot-fixes.sh
fi
if [ $skiptrunk -eq 0 ] ; then
  $HOME/bin/makesnapshot-trunk.sh
fi

if [ -f ~/pas/trunk/fpcsrc/tests/do-checks.txt ] ; then
  doit=`cat ~/pas/trunk/fpcsrc/tests/do-checks.txt`
  if [ "X$doit" == "Xyes" ] ; then
    export PATH=~/pas/fpc-$TRUNKVERSION/bin:$PATH
    $HOME/bin/check-optimizations.sh
    rm ~/pas/trunk/fpcsrc/tests/do-checks.txt
    echo "no" >  ~/pas/trunk/fpcsrc/tests/do-checks.txt
  fi
fi

if [ -f ~/pas/fixes/fpcsrc/tests/do-checks.txt ] ; then
  doit=`cat ~/pas/fixes/fpcsrc/tests/do-checks.txt`
  if [ "X$doit" == "Xyes" ] ; then
    export PATH=~/pas/fpc-$FIXESVERSION/bin:$PATH
    export FIXES=1
    $HOME/bin/check-optimizations.sh
    rm ~/pas/fixes/fpcsrc/tests/do-checks.txt
    echo "no" >  ~/pas/fixes/fpcsrc/tests/do-checks.txt
  fi
fi

cd $HOME/scripts
(
  svn cleanup
  svn up ) > $HOME/logs/svn-scripts.log 2>&1

release_lock
