#!/bin/bash

enable_64bit_tests=0
run_check_all_rtl=0

machine_host=`uname -n`

# We want to use the 32-bit compiler by default
export NATIVEFPC=ppcsparc

if [ "$machine_host" == "stadler" ] ; then
  enable_64bit_tests=1
  run_check_all_rtl=0
  export FPMAKEOPT=
  export INCREASE_ULIMIT_NB_FILES=1
  DO_SNAPSHOTS=1
fi

. $HOME/bin/fpc-versions.sh

BINDIRSUFFIX=
RELEASE32BINDIR=$HOME/pas/fpc-${RELEASEVERSION}-32/bin
if [ -d $RELEASE32BINDIR ] ; then
  FPC32=$RELEASE32BINDIR/fpc
  if [ -f $FPC32 ] ; then
    BINDIRSUFFIX=-32
  fi
fi

GLOGFILE=$HOME/logs/linux-fpcallup.log
LASTLOGFILE=$HOME/logs/last-linux-fpcallup.log

if [ -f "$GLOGFILE" ] ; then
  mv -f $GLOGFILE ${GLOGFILE}.previous
fi

# Make sure ${HOME}/bin is in PATH
if [ -d ${HOME}/bin ] ; then
  export PATH=${PATH}:${HOME}/bin
fi

if [ "${INCREASE_ULIMIT_NB_FILES:-}" == "1" ] ; then
  ulimit -n 8192
fi

# Check if latest source was uploaded
TODAY=`date +%Y-%m-%d`

function decho ()
{
  echo "`date +%Y-%m-%d_%H-%M`: $*"
}

decho "Starting script $0" > $GLOGFILE
if [ -f "$LASTLOGFILE" ] ; then
  cp -fp "$LASTLOGFILE" "${LASTLOGFILE}-previous"
fi
echo "`date +%Y-%m-%d-%H:%M`: Starting script $0" > $LASTLOGFILE
today_sparc_linux_trunk=`ssh fpcftp "find ftp/snapshot/trunk/sparc-linux/ -name "fpc*.gz" -newermt $TODAY" 2> /dev/null `
today_sparc64_linux_trunk=`ssh fpcftp "find ftp/snapshot/trunk/sparc64-linux/ -name "fpc*.gz" -newermt $TODAY" 2> /dev/null `
today_sparc_linux_fixes=`ssh fpcftp "find ftp/snapshot/fixes/sparc-linux/ -name "fpc*.gz" -newermt $TODAY" 2> /dev/null `
today_sparc64_linux_fixes=`ssh fpcftp "find ftp/snapshot/fixes/sparc64-linux/ -name "fpc*.gz" -newermt $TODAY" 2> /dev/null `

export FIXES=1
decho "Starting fixes linux-fpccommonup.sh" >> $GLOGFILE
$HOME/bin/linux-fpccommonup.sh
if [ "$DO_SNAPSHOTS" == "1" ] ; then
  if [ -z "$today_sparc_linux_fixes" ] ; then
    decho "Starting makesnapshotfixes32.sh" >> $GLOGFILE
    $HOME/bin/makesnapshotfixes32.sh
  else
    decho "Skipping makesnapshotfixes32.sh, $today_sparc_linux_fixes" >> $GLOGFILE
  fi
fi
export FIXES=0
decho "Starting trunk linux-fpccommonup.sh" >> $GLOGFILE
$HOME/bin/linux-fpccommonup.sh
if [ "$DO_SNAPSHOTS" == "1" ] ; then
  if [ -z "$today_sparc_linux_trunk" ] ; then
    decho "Starting makesnapshottrunk32.sh" >> $GLOGFILE
    $HOME/bin/makesnapshottrunk32.sh
  else
    decho "Skipping makesnapshottrunk32.sh, $today_sparc_linux_trunk" >> $GLOGFILE
  fi
fi

export FIXES=0
cd $HOME/pas/trunk/fpcsrc/compiler
# regenerate native compiler for check-all-rtl.sh script, as the last one might be too old
make distclean cycle installsymlink INSTALL_PREFIX=$HOME/pas/fpc-$TRUNKVERSION FPC=$HOME/pas/fpc-$TRUNKVERSION/bin/ppcsparc > $HOME/logs/trunk-fullinstall.log 2>&1
# regenerate cross-compilers for check-all-rtl.sh script
decho "Regenerate cross-compilers for trunk check-all-rtl.sh script" >> $GLOGFILE
make fullcycle fullinstallsymlink INSTALL_PREFIX=$HOME/pas/fpc-$TRUNKVERSION FPC=$HOME/pas/fpc-$TRUNKVERSION/bin/ppcsparc > $HOME/logs/trunk-fullinstall.log 2>&1
# Update ppc386, ppcx64 and ppc8086 with softfpu extended emulation
decho "Update trunk ppc386, ppcx64 and ppc8086 with softfpu extended emulation" >> $GLOGFILE
$HOME/bin/generate-cross-sfpux80.sh > $HOME/logs/trunk-generate-sfpux80.log 2>&1
# Check trunk cross-compilation
if [ $run_check_all_rtl -eq 1 ] ; then
  decho "Starting trunk check-all-rtl.sh" >> $GLOGFILE
  $HOME/bin/check-all-rtl.sh
fi

export FIXES=1
cd $HOME/pas/fixes/fpcsrc/compiler
# regenerate native compiler for check-all-rtl.sh script, as the last one might be too old
decho "Regenerate sparc compiler for fixes check-all-rtl.sh script" >> $GLOGFILE
make distclean cycle installsymlink INSTALL_PREFIX=$HOME/pas/fpc-$FIXESVERSION FPC=$HOME/pas/fpc-$FIXESVERSION/bin/ppcsparc > $HOME/logs/fixes-installsymlink.log 2>&1
# regenerate cross-compilers for check-all-rtl.sh script
decho "Regenerate cross-compilers for fixes check-all-rtl.sh script" >> $GLOGFILE
make fullcycle fullinstallsymlink INSTALL_PREFIX=$HOME/pas/fpc-$FIXESVERSION FPC=$HOME/pas/fpc-$FIXESVERSION/bin/ppcsparc >> $HOME/logs/fixes-fullinstall.log 2>&1
# Update ppc386, ppcx64 and ppc8086 with softfpu extended emulation
decho "Update fixes ppc386, ppcx64 and ppc8086 with softfpu extended emulation" >> $GLOGFILE
$HOME/bin/generate-cross-sfpux80.sh > $HOME/logs/fixes-generate-sfpux80.log 2>&1
# Check fixes cross-compilation
if [ $run_check_all_rtl -eq 1 ] ; then
  decho "Starting fixes check-all-rtl.sh" >> $GLOGFILE
  export FPMAKEOPT=
  $HOME/bin/check-all-rtl.sh
fi

if [ $enable_64bit_tests -eq 1 ] ; then
  export FIXES=0
  decho "Starting trunk test-cross-64.sh" >> $GLOGFILE
  $HOME/bin/test-cross-64.sh
  if [ "$DO_SNAPSHOTS" == "1" ] ; then
    if [ -z "$today_sparc64_linux_trunk" ] ; then
      decho "Starting makesnapshottrunk64.sh" >> $GLOGFILE
      cd $HOME/pas/trunk/fpcsrc/compiler
      # regenerate native compiler for makesnapshottrunk64.sh script, as the last one might be too old
      # add explicit CPU_SOURCE=sparc64 to allow cycle even if starting with a cross-compiler.
      make distclean cycle installsymlink INSTALL_PREFIX=$HOME/pas/fpc-$TRUNKVERSION FPC=$HOME/pas/fpc-$TRUNKVERSION/bin/ppcsparc64 CPU_SOURCE=sparc64 > $HOME/logs/trunk-fullinstall64.log 2>&1
      $HOME/bin/makesnapshottrunk64.sh
    else
      decho "Skipping makesnapshottrunk64.sh, $today_sparc64_linux_trunk" >> $GLOGFILE
    fi
  fi
  export FIXES=1
  decho "Starting fixes test-cross-64.sh" >> $GLOGFILE
  $HOME/bin/test-cross-64.sh
  if [ "$DO_SNAPSHOTS" == "1" ] ; then
    if [ -z "$today_sparc64_linux_fixes" ] ; then
      cd $HOME/pas/fixes/fpcsrc/compiler
      # regenerate native compiler for makesnapshotfixes64.sh script, as the last one might be too old
      # add explicit CPU_SOURCE=sparc64 to allow cycle even if starting with a cross-compiler.
      make distclean cycle installsymlink INSTALL_PREFIX=$HOME/pas/fpc-$FIXESVERSION FPC=$HOME/pas/fpc-$FIXESVERSION/bin/ppcsparc64 CPU_SOURCE=sparc64 > $HOME/logs/fixes-fullinstall64.log 2>&1
      decho "Starting makesnapshotfixes64.sh" >> $GLOGFILE
      $HOME/bin/makesnapshotfixes64.sh
    else
      decho "Skipping makesnapshotfixes64.sh, $today_sparc64_linux_fixes" >> $GLOGFILE
    fi
  fi
fi

cd $HOME/scripts
decho "Starting script svn up" >> $GLOGFILE
svn cleanup > $HOME/logs/update-scripts.log 2>&1
svn up --accept theirs-conflict >> $HOME/logs/update-scripts.log 2>&1
decho "Finished script $0" >> $GLOGFILE
echo "`date +%Y-%m-%d-%H:%M`: Finished script $0" >> $LASTLOGFILE



