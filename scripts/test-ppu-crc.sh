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

echo "Using FPC=$FPC and MAKE=$MAKE to test CRC problems"

BASE_OPTS="-n -gwl -CriotR"
CRC_EXTRA_OPTS="-dDEBUG_PPU -dDEBUG_UNIT_CRC_CHANGES -dTest_Double_checksum -dTest_Double_checksum_write"
echo "Starting with first cycle: $MAKE cycle OPT=\"$BASE_OPTS\" FPC=$FPC"
$MAKE cycle OPT="$BASE_OPTS" FPC=$FPC
if [ ! -f "./$FPC" ] ; then
  echo "Generation of ${FPC}-CriotR failed"
  exit
else
  cp ./$FPC ./${FPC}-CriotR
  NEWFPC=`pwd`/${FPC}-CriotR
  $MAKE -C utils gppc386 OPT="$BASE_OPTS" FPC=$FPC
  cp ./utils/gppc386 ./g${FPC}
fi

echo "Second cycle with: $MAKE cycle OPT=\"$BASE_OPTS $CRC_EXTRA_OPTS\" FPC=$NEWFPC"
$MAKE cycle OPT="$BASE_OPTS $CRC_EXTRA_OPTS" FPC=$NEWFPC
if [ ! -f "./$FPC" ] ; then
  echo "Generation of ${FPC}-CRC failed"
  exit
else
  cp ./$FPC ./${FPC}-CRC
  NEWFPC=`pwd`/${FPC}-CRC
  NEWGFPC=`pwd`/g${FPC}-CRC
  if [ ! -x "$NEWGFPC" ] ; then
    if [ -x "./g${FPC}" ] ; then
      cp -fp ./g${FPC} $NEWGFPC
    fi
  fi
fi

echo "Third cycle with: $MAKE cycle OPT=\"$BASE_OPTS $CRC_EXTRA_OPTS\" FPC=$NEWFPC RELEASE=1"
$MAKE cycle OPT="$BASE_OPTS $CRC_EXTRA_OPTS" FPC=$NEWFPC RELEASE=1
if [ ! -f "./$FPC" ] ; then
  echo "Generation of ${FPC}-CRC failed"
  exit
else
  cp ./$FPC ./${FPC}-release-CRC
  NEWFPC=`pwd`/${FPC}-release-CRC
  NEWGFPC=`pwd`/g${FPC}-release-CRC
  if [ ! -x "$NEWGFPC" ] ; then
    if [ -x "./g${FPC}" ] ; then
      cp -fp ./g${FPC} $NEWGFPC
    fi
  fi
fi

CRC_EXTRA_OPTS+=" -dTEST_CRC_ERROR"
echo "Fourth cycle with: $MAKE cycle OPT=\"$BASE_OPTS $CRC_EXTRA_OPTS\" FPC=$NEWFPC RELEASE=1"
$MAKE cycle OPT="$BASE_OPTS $CRC_EXTRA_OPTS" FPC=$NEWFPC RELEASE=1


