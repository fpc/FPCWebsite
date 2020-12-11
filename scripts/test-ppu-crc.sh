#!/usr/bin/env bash

if [ -z "$FPC" ] ; then
  FPC=`fpc -PB`
  FPC=`basename $FPC`
fi

if [ -z "$MAKE" ] ; then
  MAKE=`which gmake`
  if [ -z "$MAKE" ] ; then
    MAKE=make
  fi
fi

function help ()
{
  echo "This script is ment to try to debug PPU issues by using"
  echo "special macros enabling debug code related to generation"
  echo "of PPU files and issues about changes in the three checksums"
  echo "computed for PPU files: interface, implementation, and indirect CRC"
  echo "You must start this script inside compiler directory"
  echo "It will test cycle with different options, and check if there are"
  echo "PPU related problems that can be highlighted by this debug code"
}

STARTDIR="`pwd`"

STARTDIRNAME=`basename "$STARTDIR"`

if [ "$STARTDIRNAME" != "compiler" ] ; then
  help
  exit
fi

debug_compiler_list=""

function generate_debug_compilers ()
{
echo "Using FPC=$FPC and MAKE=$MAKE to test CRC problems"

FPC_SOURCE_CPU=`$FPC -iSP`
FPC_TARGET_CPU=`$FPC -iTP`

if [ "$FPC_SOURCE_CPU" != "$FPC_TARGET_CPU" ] ; then
  MAKE_EXTRA="CPU_SOURCE=$FPC_TARGET_CPU"
else
  MAKE_EXTRA=""
fi

BASE_OPTS="-n -gwl -CriotR"
CRC_EXTRA_OPTS="-dDEBUG_PPU -dDEBUG_UNIT_CRC_CHANGES -dTest_Double_checksum -dTest_Double_checksum_write"
echo "Starting with first cycle: $MAKE cycle OPT=\"$BASE_OPTS\" FPC=$FPC $MAKE_EXTRA"
LOGFILE=$STARTDIR/log-CriotR.log
$MAKE distclean OPT="$BASE_OPTS" FPC=$FPC > $LOGFILE 2>&1
$MAKE cycle OPT="$BASE_OPTS" FPC=$FPC $MAKE_EXTRA >> $LOGFILE 2>&1
if [ ! -f "./$FPC" ] ; then
  echo "Generation of ${FPC}-CriotR failed"
  return
else
  NEWFPC=`pwd`/${FPC}-CriotR
  cp ./$FPC $NEWFPC
  debug_compiler_list+=" $NEWFPC"
  $MAKE -C utils gppc386 OPT="$BASE_OPTS" FPC=$FPC
  cp ./utils/gppc386 ./g${FPC}
fi

echo "Second cycle with: $MAKE cycle OPT=\"$BASE_OPTS $CRC_EXTRA_OPTS\" FPC=$NEWFPC"
LOGFILE=$STARTDIR/log-CRC.log
$MAKE distclean OPT="$BASE_OPTS $CRC_EXTRA_OPTS" FPC=$NEWFPC > $LOGFILE 2>&1
$MAKE cycle OPT="$BASE_OPTS $CRC_EXTRA_OPTS" FPC=$NEWFPC >> $LOGFILE 2>&1
if [ ! -f "./$FPC" ] ; then
  echo "Generation of ${FPC}-CRC failed"
  return
else
  NEWFPC=`pwd`/${FPC}-CRC
  cp ./$FPC $NEWFPC
  debug_compiler_list+=" $NEWFPC"
  NEWGFPC=`pwd`/g${FPC}-CRC
  if [ ! -x "$NEWGFPC" ] ; then
    if [ -x "./g${FPC}" ] ; then
      cp -fp ./g${FPC} $NEWGFPC
    fi
  fi
fi

echo "Third cycle with: $MAKE cycle OPT=\"$BASE_OPTS $CRC_EXTRA_OPTS\" FPC=$NEWFPC RELEASE=1"
LOGFILE=$STARTDIR/log-release-CRC.log
$MAKE distclean OPT="$BASE_OPTS $CRC_EXTRA_OPTS" FPC=$NEWFPC RELEASE=1 > $LOGFILE 2>&1
$MAKE cycle OPT="$BASE_OPTS $CRC_EXTRA_OPTS" FPC=$NEWFPC RELEASE=1 >> $LOGFILE 2>&1
if [ ! -f "./$FPC" ] ; then
  echo "Generation of ${FPC}-release-CRC failed"
  return
else
  NEWFPC=`pwd`/${FPC}-release-CRC
  cp ./$FPC $NEWFPC
  debug_compiler_list+=" $NEWFPC"
  NEWGFPC=`pwd`/g${FPC}-release-CRC
  if [ ! -x "$NEWGFPC" ] ; then
    if [ -x "./g${FPC}" ] ; then
      cp -fp ./g${FPC} $NEWGFPC
    fi
  fi
fi

CRC_EXTRA_OPTS+=" -dTEST_CRC_ERROR"
echo "Fourth cycle with: $MAKE cycle OPT=\"$BASE_OPTS $CRC_EXTRA_OPTS\" FPC=$NEWFPC RELEASE=1"
LOGFILE=$STARTDIR/log-release-CRC-with-crc-error.log
$MAKE distclean OPT="$BASE_OPTS $CRC_EXTRA_OPTS" FPC=$NEWFPC RELEASE=1 > $LOGFILE 2>&1
$MAKE cycle OPT="$BASE_OPTS $CRC_EXTRA_OPTS" FPC=$NEWFPC RELEASE=1 >> $LOGFILE 2>&1
if [ ! -f "./$FPC" ] ; then
  echo "Generation of ${FPC}-release-CRC-with-crc-error failed"
  return
else
  NEWFPC=`pwd`/${FPC}-release-CRC-with-crc-error
  cp ./$FPC $NEWFPC
  debug_compiler_list+=" $NEWFPC"
  NEWGFPC=`pwd`/g${FPC}-release-CRC-with-crc-error
  if [ ! -x "$NEWGFPC" ] ; then
    if [ -x "./g${FPC}" ] ; then
      cp -fp ./g${FPC} $NEWGFPC
    fi
  fi
fi
}

function test_debug_compilers ()
{
BASE_FPC=$FPC
export FPCFPMAKE=fpc

MAKE_J_OPT="-j 2"
TEST_OPT="-n -O2"
LOGFILE=$STARTDIR/test-debug-compilers.log
make $MAKE_J_OPT -C ../rtl distclean FPC=$BASE_FPC > $LOGFILE 2>&1
make $MAKE_J_OPT -C ../packages distclean FPC=$BASE_FPC >> $LOGFILE 2>&1
make $MAKE_J_OPT -C ../tests distclean FPC=$BASE_FPC >> $LOGFILE 2>&1
echo "Starting make $MAKE_J_OPT -C ../rtl all FPC=$BASE_FPC OPT=\"$TEST_OPT\""
make $MAKE_J_OPT -C ../rtl all FPC=$BASE_FPC OPT="$TEST_OPT" >> $LOGFILE 2>&1
res=$?
if [ $res -ne 0 ] ; then
  echo "rtl compilation failed, res=$res"
  return
fi

make -C ../rtl all FPC=$FPCFPMAKE >> $LOGFILE 2>&1
echo "Starting make $MAKE_J_OPT -C ../packages all FPC=$BASE_FPC OPT=\"$TEST_OPT\""
make $MAKE_J_OPT -C ../packages all FPC=$BASE_FPC OPT="$TEST_OPT" FPCFPMAKE=$FPCFPMAKE >> $LOGFILE 2>&1
res=$?
if [ $res -ne 0 ] ; then
  echo "packages compilation failed, res=$res"
  return
fi


for ppc in $debug_compiler_list ; do
  ppcname=`basename $ppc`
  LOGFILE=$STARTDIR/test-debug-compiler-$ppcname.log
  TEST_FPC=`realpath $ppc`
  if [ ! -x "$TEST_FPC" ] ; then
    echo "$TEST_FPC is not executable"
    continue
  fi
  make $MAKE_J_OPT -C ../tests clean FPC=$BASE_FPC TEST_FPC=$TEST_FPC > $LOGFILE 2>&1
  echo "Starting make $MAKE_J_OPT -C ../tests full FPC=$BASE_FPC TEST_FPC=$TEST_FPC TEST_OPT=\"$TEST_OPT\""
  make $MAKE_J_OPT -C ../tests full FPC=$BASE_FPC TEST_FPC=$TEST_FPC TEST_OPT="$TEST_OPT" >> $LOGFILE 2>&1
  mv ../tests/output ../tests/output-$ppcname
done

# Second round with rtl/packages recompilation using TEST_FPC
for ppc in $debug_compiler_list ; do
  ppcname=`basename $ppc`
  LOGFILE=$STARTDIR/test-debug-compiler-r2-$ppcname.log
  TEST_FPC=`realpath $ppc`
  if [ ! -x "$TEST_FPC" ] ; then
    echo "$TEST_FPC is not executable"
    continue
  fi
  make $MAKE_J_OPT -C ../rtl distclean FPC=$TEST_FPC > $LOGFILE 2>&1
  make $MAKE_J_OPT -C ../packages distclean FPC=$TEST_FPC >> $LOGFILE 2>&1
  make $MAKE_J_OPT -C ../tests distclean FPC=$TEST_FPC >> $LOGFILE 2>&1
  echo "Starting make $MAKE_J_OPT -C ../rtl all FPC=$TEST_FPC OPT=\"$TEST_OPT\""
  make $MAKE_J_OPT -C ../rtl all FPC=$TEST_FPC OPT="$TEST_OPT" >> $LOGFILE 2>&1
  res=$?
  if [ $res -ne 0 ] ; then
    echo "rtl compilation failed, res=$res"
    continue
  fi

  make -C ../rtl all FPC=$FPCFPMAKE >> $LOGFILE 2>&1
  echo "Starting make $MAKE_J_OPT -C ../packages all FPC=$TEST_FPC OPT=\"$TEST_OPT\""
  make $MAKE_J_OPT -C ../packages all FPC=$TEST_FPC OPT="$TEST_OPT" FPCFPMAKE=$FPCFPMAKE >> $LOGFILE 2>&1
  res=$?
  if [ $res -ne 0 ] ; then
    echo "packages compilation failed, res=$res"
    continue
  fi

  make $MAKE_J_OPT -C ../tests clean FPC=$TEST_FPC TEST_FPC=$TEST_FPC >> $LOGFILE 2>&1
  echo "Starting make $MAKE_J_OPT -C ../tests full FPC=$TEST_FPC TEST_FPC=$TEST_FPC TEST_OPT=\"$TEST_OPT\""
  make $MAKE_J_OPT -C ../tests full FPC=$TEST_FPC TEST_FPC=$TEST_FPC TEST_OPT="$TEST_OPT" >> $LOGFILE 2>&1
  mv ../tests/output ../tests/output-new-$ppcname
done

wc `ls -1tr  ../tests/output-*/*/faillist`
}

generate_debug_compilers
echo "Generated list of binaries is $debug_compiler_list"
test_debug_compilers

