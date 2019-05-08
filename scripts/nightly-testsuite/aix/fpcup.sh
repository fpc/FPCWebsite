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

$HOME/bin/fpcfixesup.sh
$HOME/bin/fpctrunkup.sh

# Ensure correct GNU diffutils cmp is found
if [ -d $HOME/bin ] ; then
  export PATH=$HOME/bin:$PATH
fi

export FIXES=0
export FPC_BIN=ppcppc
$HOME/bin/makesnapshot-aix.sh
export FPC_BIN=ppcppc64
$HOME/bin/makesnapshot-aix.sh

export FIXES=1
export FPC_BIN=ppcppc
$HOME/bin/makesnapshot-aix.sh
export FPC_BIN=ppcppc64
$HOME/bin/makesnapshot-aix.sh
