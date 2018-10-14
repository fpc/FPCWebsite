#!/bin/bash
export FIXES=1
 $HOME/bin/linux-fpccommonup.sh
 $HOME/bin/makesnapshotfixes.sh
export FIXES=0
 $HOME/bin/linux-fpccommonup.sh
 $HOME/bin/makesnapshottrunk.sh

$HOME/bin/test-go32v2.sh
$HOME/bin/test-msdos.sh
