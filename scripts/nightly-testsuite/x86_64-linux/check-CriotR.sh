#!/usr/bin/env bash

ulimit -t 2400

COMMON_OPT="-gl"
libgcc64=`gcc -m64 -print-libgcc-file-name`
if [ -f "$libgcc64" ] ; then
  COMMON_OPT64="-Fl`dirname $libgcc64`"
fi
libgcc32=`gcc -m32 -print-libgcc-file-name`
if [ -f "$libgcc32" ] ; then
  COMMON_OPT32="-Fl`dirname $libgcc32`"
fi

i386_gnu_ld=`which i386-linux-ld`
if [ -f "$i386_gnu_ld" ] ; then
  MAKE_EXTRA32="BINUTILSPREFIX=i386-linux-"
  TEST_BINUTILSPREFIX32=i386-linux-
fi

entrydir=`pwd`

function run_tests ()
{
  TEST_FPC=$1
  TEST_FULL_FPC=`which $TEST_FPC`
  TEST_OPT="$COMMON_OPT $2"
  OPT="$COMMON_OPT $3"
  FPC_CPU_TARGET=`fpc -iTP`
  if [ "$FPC_CPU_TARGET" == "x86_64" ] ; then
    OPT="$OPT $COMMON_OPT64"
  fi
  if [ "$FPC_CPU_TARGET" == "i386" ] ; then
    OPT="$OPT $COMMON_OPT32"
  fi
  TEST_CPU_TARGET=`$TEST_FULL_FPC -iTP`
  if [ "$TEST_CPU_TARGET" == "x86_64" ] ; then
    TEST_OPT="$TEST_OPT $COMMON_OPT64"
    MAKE_EXTRA="$MAKE_EXTRA64"
    TEST_BINUTILSPREFIX="$TEST_BINUTILSPREFIX64"
  fi
  if [ "$TEST_CPU_TARGET" == "i386" ] ; then
    TEST_OPT="$TEST_OPT $COMMON_OPT32"
    MAKE_EXTRA="$MAKE_EXTRA32"
    TEST_BINUTILSPREFIX="$TEST_BINUTILSPREFIX32"
  fi
  TEST_OS_TARGET=`$TEST_FULL_FPC -iTO`
  cd $entrydir
  echo "Running tests for $TEST_CPU_TARGET-$TEST_OS_TARGET using $TEST_FULL_FPC"
  make -C .. distclean TEST_FPC=$TEST_FULL_FPC FPC=fpc > fpcsrc-distclean-$TEST_FPC.log 2>&1
  make distclean TEST_FPC=$TEST_FULL_FPC FPC=fpc > tests-distclean-$TEST_FPC.log 2>&1
  make -C ../rtl clean all FPC=fpc OPT="$OPT" $MAKE_EXTRA > rtl-fpcsrc-$TEST_FPC.log 2>&1
  make -C ../packages clean fpmake  FPC=fpc OPT="$OPT" $MAKE_EXTRA > packages-fpmake-$TEST_FPC.log 2>&1
  make -j 5 full TEST_FPC=$TEST_FULL_FPC TEST_OPT="$TEST_OPT" TEST_BINUTILSPREFIX=$TEST_BINUTILSPREFIX $MAKE_EXTRA FPC=fpc OPT="$OPT" > full-$TEST_FPC.log 2>&1
  if [ -d output/$TEST_CPU_TARGET-$TEST_OS_TARGET ] ; then
    cd output/$TEST_CPU_TARGET-$TEST_OS_TARGET
    mv faillist ../../faillist-$TEST_FPC
    mv log ../../log-$TEST_FPC
    mv longlog ../../longlog-$TEST_FPC
    cd $entrydir
  else
   echo "directory output/$TEST_CPU_TARGET-$TEST_OS_TARGET doesn't exist"
  fi
}

function checkres ()
{
  if [ $res -ne 0 ] ; then
    echo "make failed for $*, res=$res"
    exit
  fi
}

  if [ ! -d ../compiler ] ; then
    echo "$0 must be started in tests directory"
    exit
  fi
  if [ -z "$INSTALL_PREFIX" ] ; then
    FPC_VERSION=`ppcx64 -iV`
    export INSTALL_PREFIX=$HOME/pas/fpc-$FPC_VERSION
  fi
  make_line="make -C ../compiler distclean cycle OPT=\"-n $COMMON_OPT $COMMON_OPT64\" CPU_TARGET=x86_64"
  echo "Starting $make_line"
  make -C ../compiler distclean cycle OPT="-n $COMMON_OPT $COMMON_OPT64" CPU_TARGET=x86_64 > ppcx64-cycle.log 2>&1
  res=$?
  checkres $make_line

  make_line="make -C ../compiler installsymlink OPT=\"-n $COMMON_OPT $COMMON_OPT64\" FPC=`pwd`/../compiler/ppcx64"
  echo "Starting $make_line"
  make -C ../compiler installsymlink OPT="-n $COMMON_OPT $COMMON_OPT64" FPC=`pwd`/../compiler/ppcx64 > ppcx64-installsymlink.log 2>&1
  res=$?
  checkres $make_line

  make_line="make -C ../compiler distclean cycle OPT=\"-n $COMMON_OPT $COMMON_OPT64\" LOCALOPT=\"$COMMON_OPT -CriotR\" FPC=ppcx64"
  echo "Starting $make_line"
  make -C ../compiler distclean cycle OPT="-n $COMMON_OPT $COMMON_OPT64" LOCALOPT="$COMMON_OPT -CriotR" FPC=ppcx64 > ppcx64-cycle-CriotR.log 2>&1
  res=$?
  checkres $make_line

  FPCVERSION=`../compiler/ppcx64 -iV`
  INSTALL_PREFIX=$HOME/pas/fpc-$FPCVERSION
  cp ../compiler/ppcx64 $INSTALL_PREFIX/bin/ppcx64-CriotR 
  run_tests ppcx64
  run_tests ppcx64-CriotR

  make_line="make -C ../compiler distclean cycle OPT=\"$COMMON_OPT $COMMON_OPT32\" $MAKE_EXTRA32 CPU_TARGET=i386"
  echo "Starting $make_line"
  make -C ../compiler distclean cycle OPT="-n $COMMON_OPT $COMMON_OPT32" $MAKE_EXTRA32 CPU_TARGET=i386 > ppc386-cycle.log 2>&1
  res=$?
  checkres $make_line

  cp_line='cp ../compiler/ppc386 $INSTALL_PREFIX/bin/ppc386'
  cp ../compiler/ppc386 $INSTALL_PREFIX/bin/ppc386
  res=$?
  checkres $cp_line

  make_line='make -C ../compiler distclean cycle OPT="$COMMON_OPT $COMMON_OPT32" $MAKE_EXTRA32 LOCALOPT="$COMMON_OPT -CriotR" FPC=ppc386'
  echo "Starting $make_line"
  make -C ../compiler distclean cycle OPT="-n $COMMON_OPT $COMMON_OPT32" $MAKE_EXTRA32 LOCALOPT="$COMMON_OPT -CriotR" FPC=ppc386 > ppc386-cycle-CriotR.log 2>&1
  res=$?
  checkres $make_line

  FPCVERSION=`../compiler/ppc386 -iV`
  cp_line='cp ../compiler/ppc386 $INSTALL_PREFIX/bin/ppc386-CriotR'
  cp ../compiler/ppc386 $INSTALL_PREFIX/bin/ppc386-CriotR
  res=$?
  checkres $cp_line

  run_tests ppc386 "-Fl/usr/lib32 -Fl/usr/local/lib32 -Fl/lib32 -Xd"
  run_tests ppc386-CriotR "-Fl/usr/lib32 -Fl/usr/local/lib32 -Fl/lib32 -Xd"
  wc faillist-*
