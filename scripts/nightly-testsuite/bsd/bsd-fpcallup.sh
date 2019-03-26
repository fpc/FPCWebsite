#!/usr/bin/env bash

export FIXES=0
export FPCBIN=ppcx64
$HOME/bin/bsd-fpccommonup.sh
export FPCBIN=ppc386
$HOME/bin/bsd-fpccommonup.sh

export FIXES=1
export FPCBIN=ppcx64
$HOME/bin/bsd-fpccommonup.sh
export FPCBIN=ppc386
$HOME/bin/bsd-fpccommonup.sh

$HOME/bin/makesnapshottrunk.sh
$HOME/bin/makesnapshotfixes.sh
