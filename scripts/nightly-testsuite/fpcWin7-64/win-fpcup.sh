#!/bin/bash

. $HOME/bin/fpc-versions.sh

export STARTVERSION=$RELEASEVERSION
export FPCBIN=ppc386
export SVNDIR=$FIXESDIR
$HOME/bin/win-fpccommonup.sh
export SVNDIR=$TRUNKDIR
$HOME/bin/win-fpccommonup.sh
export FPCBIN=ppcx64
export SVNDIR=$FIXESDIR
$HOME/bin/win-fpccommonup.sh
export SVNDIR=$TRUNKDIR
$HOME/bin/win-fpccommonup.sh

$HOME/bin/create-snapshots.sh

$HOME/bin/fpc-cross.sh

