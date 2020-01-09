#!/usr/bin/env bash
env > $HOME/.env.txt
date >> $HOME/.env.txt

if [ -z "$MAKE" ]; then
  MAKE=` which gmake 2> /dev/null `
  if [ -z "$MAKE" ] ; then
    MAKE=make
  fi
fi
export MAKE
GLOGFILE=$HOME/logs/fpcup.log
function decho ()
{
  echo "`gdate +%Y-%m-%d-%H:%M`: $*"
}

(
decho "Script $0 started"
decho $HOME/bin/fpcfixesup.sh
$HOME/bin/fpcfixesup.sh

decho $HOME/bin/fpctrunkup.sh
$HOME/bin/fpctrunkup.sh

# Ensure correct GNU diffutils cmp is found
if [ -d $HOME/bin ] ; then
  export PATH=$HOME/bin:$PATH
fi

export FIXES=0
export FPC_BIN=ppcppc
decho $HOME/bin/makesnapshot-aix.sh for trunk ppcppc
$HOME/bin/makesnapshot-aix.sh
export FPC_BIN=ppcppc64
decho $HOME/bin/makesnapshot-aix.sh for trunk ppcppc64
$HOME/bin/makesnapshot-aix.sh

export FIXES=1
export FPC_BIN=ppcppc
decho $HOME/bin/makesnapshot-aix.sh for fixes ppcppc
$HOME/bin/makesnapshot-aix.sh
export FPC_BIN=ppcppc64
decho $HOME/bin/makesnapshot-aix.sh for fixes ppcppc64
$HOME/bin/makesnapshot-aix.sh
decho "Script $0 finished"
) > $GLOGFILE 2>&1
