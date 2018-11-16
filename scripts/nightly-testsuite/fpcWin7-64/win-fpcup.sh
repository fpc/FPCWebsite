#!/bin/bash

. $HOME/bin/fpc-versions.sh

export STARTVERSION=$RELEASEVERSION
export FPCBIN=ppc386
export SVNDIR=$FIXESDIR
export SVNDIRNAME=$FIXESDIRNAME
$HOME/bin/win-fpccommonup.sh
export SVNDIR=$TRUNKDIR
export SVNDIRNAME=$TRUNKDIRNAME
$HOME/bin/win-fpccommonup.sh
export FPCBIN=ppcx64
export SVNDIR=$FIXESDIR
export SVNDIRNAME=$FIXESDIRNAME
$HOME/bin/win-fpccommonup.sh
export SVNDIR=$TRUNKDIR
export SVNDIRNAME=$TRUNKDIRNAME
$HOME/bin/win-fpccommonup.sh

$HOME/bin/create-snapshots.sh

$HOME/bin/fpc-cross.sh

