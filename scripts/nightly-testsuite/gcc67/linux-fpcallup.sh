#!/bin/bash

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

if [ "X$HOSTNAME" == "Xgcc67" ] ; then
  $HOME/bin/makesnapshotfixes.sh 
  $HOME/bin/makesnapshottrunk.sh

  # Update source on fpcftp machine
  $HOME/scripts/allsourcezips

  # Test all RTL compilations
  export FIXES=1
  $HOME/bin/check-all-rtl.sh
  export FIXES=0
  $HOME/bin/check-all-rtl.sh

  # Finally try to generate snapshots
  $HOME/bin/all-snapshots.sh

  # For trunk
  SVNDIR=trunk

  # Test msdos 
  $HOME/bin/test-msdos.sh

  # Test go32v2
  $HOME/bin/test-go32v2.sh

  # For fixes
  SVNDIR=fixes

  # Test msdos 
  $HOME/bin/test-msdos.sh

  # Test go32v2
  $HOME/bin/test-go32v2.sh


fi
