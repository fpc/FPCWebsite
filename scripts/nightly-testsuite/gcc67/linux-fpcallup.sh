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

check_cross_fixes=0
check_cross_trunk=0
gen_snapshot_fixes=0
gen_snapshot_trunk=0
gen_cross_snapshots_fixes=0
gen_cross_snapshots_trunk=0
gen_source_zips=0
test_msdos_trunk=0
test_msdos_fixes=0
test_go32v2_trunk=0
test_go32v2_fixes=0

if [ "X$HOSTNAME" == "Xgcc67" ] ; then
  check_cross_fixes=1
  gen_snapshot_fixes=1
  gen_source_zips=1
  test_msdos_fixes=1
  test_go32v2_fixes=1
elif [ "X$HOSTNAME" == "Xgcc68" ] ; then
  check_cross_trunk=1
  gen_snapshot_trunk=1
  test_msdos_trunk=1
  test_go32v2_trunk=1
elif [ "X$HOSTNAME" == "Xgcc21" ] ; then
  check_cross_fixes=1
  check_cross_trunk=1
  test_msdos_trunk=1
  test_msdos_fixes=1
  test_go32v2_trunk=1
  test_go32v2_fixes=1
elif [ "X$HOSTNAME" == "Xgcc20" ] ; then
  check_cross_fixes=1
  check_cross_trunk=1
  test_msdos_trunk=1
  test_msdos_fixes=1
  test_go32v2_trunk=1
  test_go32v2_fixes=1
fi
if [ $check_cross_fixes -eq 1 ] ; then
  # Test all RTL compilations
  export FIXES=1
  $HOME/bin/check-all-rtl.sh
fi

if [ $check_cross_trunk -eq 1 ] ; then
  export FIXES=0
  $HOME/bin/check-all-rtl.sh
fi

if [ $gen_snapshot_fixes -eq 1 ] ; then
  $HOME/bin/makesnapshotfixes.sh 
fi
if [ $gen_sbapshot_trunk -eq 1 ] ; then
  $HOME/bin/makesnapshottrunk.sh
fi


if [ $gen_source_zips -eq 1 ] ; then
  # Update source on fpcftp machine
  $HOME/scripts/allsourcezips
fi

if [ $gen_cross_snapshots_trunk -eq 1 ] ; then
  # Finally try to generate snapshots
  export FIXES=0
  $HOME/bin/all-snapshots.sh
fi

if [ $gen_cross_snapshots_fixes -eq 1 ] ; then
  # Finally try to generate snapshots
  export FIXES=1
  $HOME/bin/all-snapshots.sh
fi

if [ $test_msdos_trunk -eq 1 ] ; then
  # For trunk
  export FIXES=0
  # Test msdos 
  $HOME/bin/test-msdos.sh
fi

if [ $test_go32v2_trunk -eq 1 ] ; then
  # For trunk
  export FIXES=0
  # Test go32v2 
  $HOME/bin/test-go32v2.sh
fi

if [ $test_msdos_fixes -eq 1 ] ; then
  # For fixes
  export FIXES=1
  # Test msdos 
  $HOME/bin/test-msdos.sh
fi

if [ $test_go32v2_fixes -eq 1 ] ; then
  # For fixes
  export FIXES=1
  # Test go32v2 
  $HOME/bin/test-go32v2.sh
fi


