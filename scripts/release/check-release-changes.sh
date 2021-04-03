#!/usr/bin/env bash

PREVIOUS_RELEASE=3.2.0
TEST_RELEASE=3.2.2rc1

if [ -z "$FPC" ] ; then
  FPC=`which fpc`
fi

if [ -z "$MAKE" ] ; then
  MAKE=`which gmake`
  if [ -z "$MAKE" ] ; then
    MAKE=`which make`
  fi
  if [ -z "$MAKE" ] ; then
    echo "Make utility not found"
    exit
  fi
  if [ -z "$MAKE_OPT" ] ; then
    MAKE_OPT=" -j 8"
  fi
fi

if [ -n "$FPC" ] ; then
  DEFAULT_OS=`$FPC -iTO`
  DEFAULT_CPU=`$FPC -iTP`
else
  echo "No fpc found and FPC variable not set, exiting"
  exit
fi

if [ -n "$FPC" ] ; then
  FULLFPC=`which $FPC`
  FPCBASE=`basename $FULLFPC`
  if [ "${FPCBASE/fpc/}" != "$FPCBASE" ] ; then
    FULLCPUFPC=`$FULLFPC -PB`
    if [ -f "$FULLCPUFPC" ] ; then
      FULLFPC="$FULLCPUFPC"
      FPCBASE=`basename $FULLFPC`
    fi
  fi
fi

if [ ! -f "$FULLFPC" ] ; then
  echo "No full binary found"
  exit
else
  echo "Using FULLFPC=\"$FULLFPC\""
fi

set -u

FPC_VERSION=`$FULLFPC -iV`
FPC_DATE=`$FULLFPC -iD`
FPC_FULLVERSION=`$FULLFPC -iW`

if [ "$FPC_FULLVERSION" == "$PREVIOUS_RELEASE" ] ; then
  echo "Using $FULLFPC as previous release compiler"
  TEST_RELEASE_COMPILER="$FULLFPC"
  TEST_NEW_COMPILER="`pwd`/../compiler/$FPCBASE"
  
  if [ -f "$TEST_NEW_COMPILER" ] ; then
    echo "Using $TEST_NEW_COMPILER as new release compiler"
  else
    echo "Trying to compile new compiler"
    cyclelog=`pwd`/cycle-compiler.log
    $MAKE -C ../compiler rtlclean distclean rtl cycle OPT="-n" FPC="$TEST_RELEASE_COMPILER" > $cyclelog 2>&1
    makeres=$?
    if [ $makeres -ne 0 ] ; then
      echo "Cycling failed, see $cyclelog"
      exit
    fi
  fi
elif [ "$FPC_FULLVERSION" == "$TEST_RELEASE" ] ; then
  echo "Need to find release compiler"
  ALL_FPC=`which -a $FPCBASE` 
  for f in $ALL_FPC ; do
    ver=`$f -iW`
    if [ "$ver " != "$PREVIOUS_RELEASE" ] ; then
      echo "Skipping $f, version is $ver, while we are looking for $PREVIOUS_RELEASE"
      continue
    else
      TEST_RELEASE_COMPILER="$f"
      TEST_NEW_COMPILER="$FULLFPC"
      break
    fi 
  done
else
  echo "$FULLFPC is full version $FPC_FULLVERSION, which is neither $PREVIOUS_RELEASE, nor $TEST_RELEASE"
  exit
fi

RELEASE_VERSION=`$TEST_RELEASE_COMPILER -iV`
RELEASE_DATE=`$TEST_RELEASE_COMPILER -iD`
RELEASE_FULLVERSION=`$TEST_RELEASE_COMPILER -iW`
NEW_VERSION=`$TEST_NEW_COMPILER -iV`
NEW_DATE=`$TEST_NEW_COMPILER -iD`
NEW_FULLVERSION=`$TEST_NEW_COMPILER -iW`

NEW_OS=`$TEST_NEW_COMPILER -iTO`
NEW_CPU=`$TEST_NEW_COMPILER -iTP`
RELEASE_OS=`$TEST_RELEASE_COMPILER -iTO`
RELEASE_CPU=`$TEST_RELEASE_COMPILER -iTP`

if [ "$NEW_OS" != "$RELEASE_OS" ] ; then
  echo "Different target OS"
  exit
fi
if [ "$NEW_CPU" != "$RELEASE_CPU" ] ; then
  echo "Different target CPU"
  exit
fi

NEW_FULL_TARGET=$NEW_CPU-$NEW_OS

function run_one_testsuite ()
{
  TEST_FPC="$1"
  TEST_OPT="$2"
  TEST_VER="$3"
  testlogsuffix="$4"
  MAKE_EXTRA="$5"
  cleanlog=`pwd`/clean-$testlogsuffix.log
  testlog=`pwd`/test-$testlogsuffix.log
  echo "Running $MAKE distclean in rtl and packages"
  $MAKE -C ../rtl distclean > $cleanlog 2>&1
  $MAKE -C ../packages distclean >> $cleanlog 2>&1
  ulimit -t 240
  echo "Running $MAKE full TEST_OPT=\"$TEST_OPT\" TEST_FPC=\"$TEST_FPC\""
  $MAKE $MAKE_OPT full $MAKE_EXTRA TEST_OPT="$TEST_OPT" TEST_FPC="$TEST_FPC" > $testlog 2>&1
  makeres=$?
  if [ $makeres -ne 0 ] ; then
    echo "$MAKE full  TEST_OPT=\"$TEST_OPT\" TEST_FPC=\"$TEST_FPC\" failed, see $testlog "
  else
    for f in log longlog faillist ; do
      if [ -f "output/$NEW_FULL_TARGET/$f" ] ; then
        cp -fp "output/$NEW_FULL_TARGET/$f" $f-$testlogsuffix
      else
        echo "Warning: file output/$NEW_FULL_TARGET/$f not found"
      fi
    done 
  fi
}

index=0

function run_and_compare_tests ()
{
  GLOBAL_TEST_OPT="$1"
  GLOBAL_MAKE_EXTRA="$2"
  let index++
  globalsuffix="${GLOBAL_TEST_OPT// /_}"
  run_one_testsuite "$TEST_RELEASE_COMPILER" "$GLOBAL_TEST_OPT" "$RELEASE_VERSION" "prev$index-$globalsuffix" "$GLOBAL_MAKE_EXTRA"
  run_one_testsuite "$TEST_NEW_COMPILER" "$GLOBAL_TEST_OPT" "$NEW_VERSION" "new$index-$globalsuffix" "$GLOBAL_MAKE_EXTRA"
  faillist_prev=faillist-prev$index-$globalsuffix
  faillist_new=faillist-new$index-$globalsuffix
  faillist_diff=faillist-diff$index-$globalsuffix
  diff $faillist_prev $faillist_new > $faillist_diff
  diffres=$?
  if [ $diffres -eq 0 ] ; then
    echo "No testsuite result difference between $RELEASE_FULLVERSION and $NEW_FULLVERSION"
  else
    echo "There are testsuite result differences between $RELEASE_FULLVERSION and $NEW_FULLVERSION"
    cat $faillist_diff
  fi
}
  
run_and_compare_tests "-n"
run_and_compare_tests "-n" RELEASE=1

