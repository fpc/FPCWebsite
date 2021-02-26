#!/usr/bin/env bash

. $HOME/bin/fpc-versions.sh

export TEST_DELBEFORE=1
export TEST_DELTEMP=1

export FIXES=0
$HOME/bin/linux-fpcup.sh

export FIXES=1
$HOME/bin/linux-fpcup.sh

export FIXES=0
$HOME/bin/makesnapshot.sh

export FIXES=1
$HOME/bin/makesnapshot.sh

$HOME/bin/test-optimizations.sh --clean FIXES=0

$HOME/bin/test-optimizations.sh --clean FIXES=1


