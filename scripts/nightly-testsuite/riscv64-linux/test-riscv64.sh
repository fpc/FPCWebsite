#!/usr/bin/env bash

NATIVE_CPU=`uname -m`

if [ "$NATIVE_CPU" == "riscv64" ] ; then
  NATIVE_FPC=ppcrv64
  NATIVE_BINUTILS=
else
  NATIVE_FPC=ppcx64
  NATIVE_BINUTILS=
fi

verbose=0
try_upload=1

BRANCH=trunk

cd $HOME/pas/$BRANCH
if [ -d fpcsrc ] ; then
  cd fpcsrc
fi
cd tests

TEST_FPC=ppcrv64
CPU_TARGET=`$TEST_FPC -iTP`
OS_TARGET=`$TEST_FPC -iTO`
FULL_TARGET=$CPU_TARGET-$OS_TARGET
GNU_TARGET_DIR="$FULL_TARGET-gnu"
COMMON_TEST_OPT=""

if [ "$NATIVE_CPU" != "$CPU_TARGET" ] ; then
  TARGET_SYSROOT="$HOME/sys-root/$FULL_TARGET"
  TEST_BINUTILSPREFIX=$FULL_TARGET-
  export QEMU_LD_PREFIX=$HOME/sys-root/$FULL_TARGET/
  SUBDIR=riscv64-on-x86_64
  native_riscv=0
else
  TARGET_SYSROOT=""
  TEST_BINUTILSPREFIX=""
  SUBDIR=riscv64-native
  native_riscv=1
fi

if [[ ( -z "$TARGET_SYSROOT" ) || ( -d "$TARGET_SYSROOT" ) ]] ; then
  if [ -d "$TARGET_SYSROOT/lib" ] ; then
    COMMON_TEST_OPT+=" -Fl$TARGET_SYSROOT/lib"
    COMMON_TEST_OPT+=" -k-rpath-link=$TARGET_SYSROOT/lib -k-L -k$TARGET_SYSROOT/lib"
  fi
  if [ -d "$TARGET_SYSROOT/usr/lib" ] ; then
    COMMON_TEST_OPT+=" -Fl$TARGET_SYSROOT/usr/lib"
    COMMON_TEST_OPT+=" -k-rpath-link=$TARGET_SYSROOT/usr/lib -k-L -k$TARGET_SYSROOT/usr/lib"
  fi
  if [ -d "$TARGET_SYSROOT/lib/$GNU_TARGET_DIR" ] ; then
    COMMON_TEST_OPT+=" -Fl$TARGET_SYSROOT/lib/$GNU_TARGET_DIR"
    COMMON_TEST_OPT+=" -k-rpath-link=$TARGET_SYSROOT/lib/$GNU_TARGET_DIR -k-L -k$TARGET_SYSROOT/lib/$GNU_TARGET_DIR"
  fi
  if [ -d "$TARGET_SYSROOT/usr/lib/$GNU_TARGET_DIR" ] ; then
    COMMON_TEST_OPT+=" -Fl$TARGET_SYSROOT/usr/lib/$GNU_TARGET_DIR"
    COMMON_TEST_OPT+=" -k-rpath-link=$TARGET_SYSROOT/usr/lib/$GNU_TARGET_DIR -k-L -k$TARGET_SYSROOT/usr/lib/$GNU_TARGET_DIR"
  fi
  if [ -d "$TARGET_SYSROOT/usr/lib/gcc/$GNU_TARGET_DIR/9" ] ; then
    COMMON_TEST_OPT+=" -Fl$TARGET_SYSROOT/usr/lib/gcc/$GNU_TARGET_DIR/9"
    COMMON_TEST_OPT+=" -k-rpath-link=$TARGET_SYSROOT/usr/lib/gcc/$GNU_TARGET_DIR/9 -k-L -k$TARGET_SYSROOT/usr/lib/gcc/$GNU_TARGET_DIR/9"
  fi
  if [ -n "$TARGET_SYSROOT" ] ; then
    COMMON_TEST_OPT+=" -Xd -k--sysroot=$TARGET_SYSROOT -k-nostdlib"
  else
    COMMON_TEST_OPT+=" -vx"
  fi
fi

MAKE_J_OPT="-j 8"
BASELOGDIR=$HOME/logs/$BRANCH/$SUBDIR

if [ ! -d "$BASELOGDIR" ] ; then
  mkdir -p "$BASELOGDIR"
fi

GLOBAL_LOCK=`pwd`/lock
GLOBAL_LOCK_RUNNING=`pwd`/.lock

pgid=`ps -p $$ -o pgid | grep -v  "PGID" | sed "s: ::g" `
echo "pgid=$pgid"
sleep_amount=240
running=1
echo $running > $GLOBAL_LOCK_RUNNING

function decho ()
{
  newtime=`date +%Y-%m-%d_%H-%M`
  echo "$newtime: $*" 
  echo "$newtime: $*" >> $GLOBAL_LOCK
}

function kill_runaway_tests ()
{
  decho "Starting kill_runaway_tests"
  pslist_before="`ps -o pgid,pid | grep \"^ *$pgid \" | sed \"s;^ *$pgid ; ;\" `"
  while [ $running -eq 1 ] ; do
    sleep $sleep_amount
    pslist_after="`ps -o pgid,pid | grep \"^ *$pgid \" | sed \"s;^ *$pgid ; ;\" `"
    if [ $verbose -eq 1 ] ; then
      decho "pslist_after=$pslist_after"
    fi
    for pid in $pslist_after ; do
      if [ $pid -eq $pgid ] ; then
        continue
      fi
      pid_details=`ps -fp $pid`
      if [ "${pid_details/qemu-riscv64-static \.\/t/}" != "$pid_details" ] ; then
        if [ "${pslist_before/$pid/}" != "$pslist_before" ] ; then
  	  decho "kill_runaway_tests $pid: $pid_details"
          kill -TERM $pid
          sleep $wait_amount
        fi
      fi
    done
    pslist_before="$pslist_after"
    running=`cat $GLOBAL_LOCK_RUNNING`
  done
  decho "Finishing kill_runaway_tests"
}


function run_tests ()
{
  decho "run_tests $1"  
  TEST_OPT="$1 $COMMON_TEST_OPT"
  TESTS_SUFFIX="${1// /_}"
  preplog=$BASELOGDIR/prep-tests-$TESTS_SUFFIX.log
  testslog=$BASELOGDIR/tests-$TESTS_SUFFIX.log
  TESTLOGDIR=$BASELOGDIR/riscv64-$TESTS_SUFFIX
  make $MAKE_J_OPT distclean TEST_FPC=$TEST_FPC TEST_OPT="$TEST_OPT" FPC=$NATIVE_FPC TEST_BINUTILSPREFIX=$TEST_BINUTILSPREFIX > $preplog 2>&1
  make $MAKE_J_OPT -C ../rtl distclean FPC=$NATIVE_FPC >> $preplog 2>&1
  make $MAKE_J_OPT -C ../packages distclean FPC=$NATIVE_FPC >> $preplog 2>&1
  make $MAKE_J_OPT -C ../rtl all FPC=$NATIVE_FPC >> $preplog 2>&1
  make $MAKE_J_OPT -C ../packages fpmake FPC=$NATIVE_FPC >> $preplog 2>&1

  make $MAKE_J_OPT full TEST_FPC=$TEST_FPC TEST_OPT="$TEST_OPT" FPC=$NATIVE_FPC TEST_BINUTILSPREFIX=$TEST_BINUTILSPREFIX > $testslog 2>&1
  testres=$?
  if [ $testres -ne 0 ] ; then
    decho "full failed, res=$testres"
  fi
  if [ ! -d $TESTLOGDIR ] ; then
    mkdir -p $TESTLOGDIR
  fi
  cp output/$FULL_TARGET/longlog $TESTLOGDIR/ 
  cp output/$FULL_TARGET/log $TESTLOGDIR/ 
  cp output/$FULL_TARGET/faillist $TESTLOGDIR/ 
  if [ $try_upload -eq 1 ] ; then
    # Try upload
    make $MAKE_J_OPT uploadrun TEST_FPC=$TEST_FPC TEST_OPT="$TEST_OPT" FPC=$NATIVE_FPC \
	    TEST_COMMENT="$1" DB_SSH_EXTRA="-i ~/.ssh/freepascal"  TEST_BINUTILSPREFIX=$TEST_BINUTILSPREFIX >> $testslog 2>&1
  fi
}

rm -f $GLOBAL_LOCK
decho "Starting $0"

kill_runaway_tests &

if [ "X$1" == "X" ] ; then
  run_tests "-O-"
  run_tests "-O1"
  run_tests "-O2"
  run_tests "-O3"
  run_tests "-O4"
else
  run_tests "$1"
fi

running=0
echo $running > $GLOBAL_LOCK_RUNNING
sleep $wait_amount
decho "Ending $0"

mv -f $GLOBAL_LOCK $GLOBAL_LOCK-last 
