#!/bin/bash

pkill  --signal TERM -x -f $HOME/bin/linux-fpccommonup.sh
pkill  --signal TERM -x -f $HOME/bin/check-all-rtl.sh
pkill  --signal TERM -f "$HOME/bin/makesnapshot.*.sh"
pkill  --signal TERM -f "$HOME/bin/test-.*.sh"

# Set up HOSTNAME variable if empty
if [ -z "$HOSTNAME" ] ; then
  export HOSTNAME=`uname -n` 
fi

# Do the same with ppc386
export FPCBIN=ppc386
export FIXES=0
$HOME/bin/linux-fpccommonup.sh
export FIXES=1
$HOME/bin/linux-fpccommonup.sh

# By default use ppcx64
export FPCBIN=ppcx64
export FIXES=0
$HOME/bin/linux-fpccommonup.sh
export FIXES=1
$HOME/bin/linux-fpccommonup.sh

# Test all RTL compilations
export FIXES=1
$HOME/bin/check-all-rtl.sh
export FIXES=0
$HOME/bin/check-all-rtl.sh

if [ "X$HOSTNAME" == "Xgcc67" ] ; then
  gen_all=1
  skip_go32v2=0
  skip_msdos=0
elif [ "X$HOSTNAME" == "Xgcc68" ] ; then
  gen_all=1
  skip_go32v2=0
  skip_msdos=0
else
  gen_all=0
fi
if [ $gen_all -eq 1 ] ; then
  $HOME/bin/makesnapshotfixes.sh 
  $HOME/bin/makesnapshottrunk.sh

  # Update source on fpcftp machine
  $HOME/scripts/allsourcezips

  # Finally try to generate snapshots
  $HOME/bin/all-snapshots.sh

  # For trunk
  SVNDIR=trunk

  if [ $skip_msdos -eq 0 ] ; then
    # Test msdos 
    $HOME/bin/test-msdos.sh
  fi

  if [ $skip_go32v2 -eq 0 ] ; then
    # Test go32v2
    $HOME/bin/test-go32v2.sh
  fi

  # For fixes
  SVNDIR=fixes

  # Test msdos 
  $HOME/bin/test-msdos.sh

  # Test go32v2
  $HOME/bin/test-go32v2.sh
fi
