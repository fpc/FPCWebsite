#!/usr/bin/env bash

. $HOME/bin/fpc-versions.sh

export FIXES=1
export FPC_CPU=arm
$HOME/bin/makesnapshot-common.sh
