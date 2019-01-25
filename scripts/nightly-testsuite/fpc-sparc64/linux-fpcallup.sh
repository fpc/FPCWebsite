#!/bin/bash

enable_64bit_tests=1

. $HOME/bin/fpc-versions.sh

DO_SNAPSHOTS=1
# Check if latest source was uploaded
TODAY=`date +%Y-%m-%d`

today_sparc_linux_trunk=`ssh fpcftp "find ftp/snapshot/trunk/sparc-linux/ -name "fpc*.gz" -newermt $TODAY" 2> /dev/null `
today_sparc64_linux_trunk=`ssh fpcftp "find ftp/snapshot/trunk/sparc64-linux/ -name "fpc*.gz" -newermt $TODAY" 2> /dev/null `
today_sparc_linux_fixes=`ssh fpcftp "find ftp/snapshot/fixes/sparc-linux/ -name "fpc*.gz" -newermt $TODAY" 2> /dev/null `
today_sparc64_linux_fixes=`ssh fpcftp "find ftp/snapshot/fixes/sparc64-linux/ -name "fpc*.gz" -newermt $TODAY" 2> /dev/null `

export FIXES=1
$HOME/bin/linux-fpccommonup.sh
if [ "$DO_SNAPSHOTS" == "1" ] ; then
  if [ -z "$today_sparc_linux_fixes" ] ; then
    $HOME/bin/makesnapshotfixes.sh
  fi
fi
export FIXES=0
$HOME/bin/linux-fpccommonup.sh
if [ "$DO_SNAPSHOTS" == "1" ] ; then
  if [ -z "$today_sparc_linux_trunk" ] ; then
    $HOME/bin/makesnapshottrunk.sh
  fi
fi

export FIXES=1
$HOME/bin/check-all-rtl.sh
export FIXES=0
$HOME/bin/check-all-rtl.sh

cd $HOME/pas/trunk/fpcsrc/compiler
# regenerate cross-compilers for check-all-rtl.sh script
make fullcycle fullinstallsymlink INSTALL_PREFIX=$HOME/pas/fpc-$TRUNKVERSION FPC=$HOME/pas/fpc-$TRUNKVERSION/bin/ppcsparc > $HOME/logs/trunk-fullinstall.log 2>&1
# Update ppc386, ppcx64 and ppc8086 with softfpu extended emulation
export FIXES=0
$HOME/bin/generate-cross-sfpux80.sh > $HOME/logs/trunk-generate-sfpux80.log 2>&1

cd $HOME/pas/fixes/fpcsrc/compiler
# regenerate cross-compilers for check-all-rtl.sh script
make fullcycle fullinstallsymlink INSTALL_PREFIX=$HOME/pas/fpc-$FIXESVERSION FPC=$HOME/pas/fpc-$FIXESVERSION/bin/ppcsparc > $HOME/logs/fixes-fullinstall.log 2>&1
# Update ppc386, ppcx64 and ppc8086 with softfpu extended emulation
export FIXES=1
$HOME/bin/generate-cross-sfpux80.sh > $HOME/logs/fixes-generate-sfpux80.log 2>&1

if [ $enable_64bit_tests -eq 1 ] ; then
  $HOME/bin/test-cross-64.sh
  if [ "$DO_SNAPSHOTS" == "1" ] ; then
    if [ -z "$today_sparc_linux_trunk" ] ; then
      $HOME/bin/makesnapshottrunk64.sh
    fi
  fi
  export FIXES=1
  $HOME/bin/test-cross-64.sh
  if [ "$DO_SNAPSHOTS" == "1" ] ; then
    if [ -z "$today_sparc64_linux_fixes" ] ; then
      $HOME/bin/makesnapshotfixes64.sh
    fi
  fi
fi

