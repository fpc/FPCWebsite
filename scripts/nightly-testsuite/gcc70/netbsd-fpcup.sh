#!/usr/bin/env bash

# i386 builds
export FPCBIN=ppc386
$HOME/bin/netbsd-fpccommonup.sh
export FIXES=1
$HOME/bin/netbsd-fpccommonup.sh
export FIXES=

# Now normal x86_64 builds
export FPCBIN=ppcx64
$HOME/bin/netbsd-fpccommonup.sh
export FIXES=1
$HOME/bin/netbsd-fpccommonup.sh
export FIXES=
$HOME/bin/makesnapshottrunk-i386.sh
$HOME/bin/makesnapshottrunk-x86_64.sh

