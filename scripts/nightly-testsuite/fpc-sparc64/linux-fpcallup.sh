#!/bin/bash

. $HOME/bin/fpc-versions.sh

export FIXES=1
 $HOME/bin/linux-fpccommonup.sh
 $HOME/bin/makesnapshotfixes.sh
export FIXES=0
 $HOME/bin/linux-fpccommonup.sh
 $HOME/bin/makesnapshottrunk.sh

 cd $HOME/pas/trunk/fpcsrc/compiler
 # regenerate cross-compilers for check-all-rtl.sh script
 make fullcycle fullinstall INSTALL_PREFIX=$HOME/pas/fpc-$TRUNKVERSION FPC=$HOME/pas/fpc-$TRUNKVERSION/bin/ppcsparc64
 # Update ppc386, ppcx64 and ppc8086 with softfpu extended emulation
 ./generate-cross-sfpux80.sh
 $HOME/bin/check-all-rtl.sh
 $HOME/bin/test-cross-64.sh
 $HOME/bin/makesnapshottrunk64.sh

