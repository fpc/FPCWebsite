#!/usr/bin/env bash
env > $HOME/.env.txt
date >> $HOME/.env.txt
$HOME/bin/fpcfixesup.sh
$HOME/bin/fpctrunkup.sh

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
