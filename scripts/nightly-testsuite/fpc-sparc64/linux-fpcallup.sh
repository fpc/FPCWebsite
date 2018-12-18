#!/bin/bash

enable_64bit_tests=1

. $HOME/bin/fpc-versions.sh

export FIXES=1
. $HOME/bin/linux-fpccommonup.sh
if [ "$DO_SNAPSHOTS" == "1" ] ; then
  $HOME/bin/makesnapshotfixes.sh
fi
export FIXES=0
. $HOME/bin/linux-fpccommonup.sh
if [ "$DO_SNAPSHOTS" == "1" ] ; then
  $HOME/bin/makesnapshottrunk.sh
fi

cd $HOME/pas/trunk/fpcsrc/compiler
# regenerate cross-compilers for check-all-rtl.sh script
make fullcycle fullinstall INSTALL_PREFIX=$HOME/pas/fpc-$TRUNKVERSION FPC=$HOME/pas/fpc-$TRUNKVERSION/bin/ppcsparc > $HOME/logs/trunk-fullinstall.log 2>&1
# Update ppc386, ppcx64 and ppc8086 with softfpu extended emulation
$HOME/bin/generate-cross-sfpux80.sh > $HOME/logs/trunk-generate-sfpux80.log 2>&1
$HOME/bin/check-all-rtl.sh

if [ $enable_64bit_tests -eq 1 ] ; then
   $HOME/bin/test-cross-64.sh
if [ "$DO_SNAPSHOTS" == "1" ] ; then
   if [ "$DO_SNAPSHOTS" == "1" ] ; then
     $HOME/bin/makesnapshottrunk64.sh
   fi
   export FIXES=1
   $HOME/bin/test-cross-64.sh
   if [ "$DO_SNAPSHOTS" == "1" ] ; then
     $HOME/bin/makesnapshotfixes64.sh
   fi
fi

