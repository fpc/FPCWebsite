#!/bin/bash

. $HOME/bin/fpc-versions.sh

logdir=~/pas/logs
currentlog=${logdir}/current.log
lastlog=${logdir}/last.log
logdiffs=${logdir}/diffs
STARTPATH=$PATH
DIFF=/usr/bin/diff
CP=/usr/bin/cp
CAT=/usr/bin/cat

export PATH="$PATH:/cygdrive/c/Program\ Files\ (x86)/PuTTY"
export WANTED_VERSION=$TRUNKVERSION
$HOME/bin/kill-leftover-handles.sh
# All those batches only work if started in their directory
cd $TRUNKDIR
if [ -d fpcsrc ] ; then
  cd fpcsrc
fi
/cygdrive/c/WINDOWS/system32/cmd.exe /C "E:\\pas\\trunk\\fpcsrc\\createsnapshots.bat"
$HOME/bin/kill-leftover-handles.sh
# All those batches only work if started in their directory
export WANTED_VERSION=$FIXESVERSION
cd $FIXESDIR
if [ -d fpcsrc ] ; then
  cd fpcsrc
fi
/cygdrive/c/WINDOWS/system32/cmd.exe /C "E:\\pas\\fixes\\fpcsrc\\createsnapshots.bat"
$HOME/bin/kill-leftover-handles.sh

