#!/usr/bin/env bash
env > $HOME/.env.txt
date >> $HOME/.env.txt

machine=`uname -n`

if [ "$machine" = "powerpc-aix" ] ; then
  do_trunk=1
  do_fixes=1
  gen_snapshots=1
  use_git=0
else
  do_trunk=1
  do_fixes=0
  gen_snapshots=0
  use_git=1
fi

if [ -z "$MAKE" ]; then
  MAKE=` which gmake 2> /dev/null `
  if [ -z "$MAKE" ] ; then
    MAKE=make
  fi
fi
export MAKE

# Ensure correct GNU diffutils cmp is found
if [ -d $HOME/bin ] ; then
  export PATH=$HOME/bin:$PATH
fi

if [ $do_fixes -eq 1 ] ; then
  $HOME/bin/fpcfixesup.sh
fi
if [ $do_trunk -eq 1 ] ; then
  $HOME/bin/fpctrunkup.sh
fi

if [ $gen_snapshots -eq 1 ] ; then
  if [ $do_trunk -eq 1 ] ; then
    export FIXES=0
    export FPC_BIN=ppcppc
    $HOME/bin/makesnapshot-aix.sh
    export FPC_BIN=ppcppc64
    $HOME/bin/makesnapshot-aix.sh
  fi
  if [ $do_fixes -eq 1 ] ; then
    export FIXES=1
    export FPC_BIN=ppcppc
    $HOME/bin/makesnapshot-aix.sh
    export FPC_BIN=ppcppc64
    $HOME/bin/makesnapshot-aix.sh
  fi
fi
