#!/bin/bash

pkill  --signal TERM -x -f $HOME/bin/linux-fpccommonup.sh
pkill  --signal TERM -x -f $HOME/bin/check-all-rtl.sh
pkill  --signal TERM -f "$HOME/bin/makesnapshot.*.sh"
pkill  --signal TERM -f "$HOME/bin/test-.*.sh"

# Set up HOSTNAME variable if empty
if [ -z "$HOSTNAME" ] ; then
  export HOSTNAME=`uname -n` 
fi

# Keep only first part of machine name
export HOSTNAME=${HOSTNAME//.*/}

if [ -d $HOME/scripts ] ; then
  SCRIPTDIR=$HOME/scripts
elif [ -d $HOME/pas/scripts ] ; then
  SCRIPTDIR=$HOME/pas/scripts
else
  SCRIPTDIR=
fi

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
do_trunk_i386=1
do_fixes_i386=1
do_x86_64=1
do_docs=0

if [ "X$HOSTNAME" == "Xgcc67" ] ; then
  check_cross_fixes=1
  gen_snapshot_fixes=1
  gen_source_zips=1
  test_msdos_trunk=1
  test_msdos_fixes=1
elif [ "X$HOSTNAME" == "Xgcc68" ] ; then
  # gcc68 is probably not going to be fixed
  check_cross_trunk=1
  # gen_snapshot_trunk=1 moved to gcc10
  test_go32v2_trunk=1
  test_go32v2_fixes=1
elif [ "X$HOSTNAME" == "Xgcc121" ] ; then
  check_cross_trunk=1
  check_cross_fixes=1
  do_trunk_i386=1
  do_fixes_i386=1
  do_docs=1
  # export MAKE_TESTS_TARGET=full
elif [ "X$HOSTNAME" == "Xgcc123" ] ; then
  check_cross_trunk=1
  check_cross_fixes=1
  gen_cross_snapshots_fixes=1
  gen_cross_snapshots_trunk=1
  do_trunk_i386=0
  do_fixes_i386=0
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
elif [ "X$HOSTNAME" == "Xgcc70" ] ; then
  check_cross_fixes=1
  check_cross_trunk=1
  test_msdos_trunk=0
  test_msdos_fixes=0
  test_go32v2_trunk=0
  test_go32v2_fixes=0
elif [ "X$HOSTNAME" == "Xgcc10" ] ; then
  gen_snapshot_trunk=1
  check_cross_trunk=1
fi

# Do the same with ppc386
if [ $do_trunk_i386 -eq 1 ] ; then
  $HOME/bin/linux-fpccommonup.sh FPCBIN=ppc386 FIXES=0
fi
if [ $do_fixes_i386 -eq 1 ] ; then
  $HOME/bin/linux-fpccommonup.sh FPCBIN=ppc386 FIXES=1
fi

# By default use ppcx64
if [ $do_x86_64 -eq 1 ] ; then
  $HOME/bin/linux-fpccommonup.sh FPCBIN=ppcx64 FIXES=0
  $HOME/bin/linux-fpccommonup.sh FPCBIN=ppcx64 FIXES=1
fi

if [ $check_cross_fixes -eq 1 ] ; then
  # Test all RTL compilations
  $HOME/bin/check-all-rtl.sh FIXES=1
fi

if [ $check_cross_trunk -eq 1 ] ; then
  $HOME/bin/check-all-rtl.sh FIXES=0
fi

if [ $gen_snapshot_fixes -eq 1 ] ; then
  $HOME/bin/makesnapshotfixes.sh 
fi
if [ $gen_snapshot_trunk -eq 1 ] ; then
  $HOME/bin/makesnapshottrunk.sh
fi


if [ $gen_source_zips -eq 1 ] ; then
  # Update source on fpcftp machine
  . $SCRIPTDIR/allsourcezips
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

if [ $do_docs -eq 1 ] ; then
  $HOME/bin/check-docs.sh
fi


# Check if latest source was uploaded
TODAY=`date +%Y-%m-%d`

today_trunk_sources=`ssh fpcftp "find ftp/snapshot/trunk/source -newermt $TODAY" 2> /dev/null `
today_fixes_sources=`ssh fpcftp "find ftp/snapshot/fixes/source -newermt $TODAY" 2> /dev/null `

if [ -z "$today_trunk_sources$today_fixes_sources" ] ; then
  # Update source on fpcftp machine
  . $SCRIPTDIR/allsourcezips
fi

# Check if script directory exists
SVNLOGFILE=$HOME/logs/svn-scripts.log
if [ -n "$SCRIPTDIR" ] ; then
  cd $SCRIPTDIR
  svn cleanup > $SVNLOGFILE 2>&1
  svn up --non-interactive --accept theirs-conflict >> $SVNLOGFILE 2>&1 
  cd $HOME
else
  if [ ! -d $HOME/pas/scripts ] ; then
    cd $HOME/pas
    svn checkout https://svn.freepascal.org/svn/html/scripts > $SVNLOGFILE 2>&1
  else
    cd $HOME/pas/scripts
    svn cleanup > $SVNLOGFILE 2>&1
  fi
  svn up --non-interactive --accept theirs-conflict >> $SVNLOGFILE 2>&1 
  cd $HOME
fi


