#!/bin/bash
. ~/bin/fpc-versions.sh

. ~/bin/update.sh

. ~/bin/darwin32-fpctrunkup.sh
. ~/bin/darwin32-fpcfixesup.sh
# . ~/bin/darwin64-fpctrunkup.sh

export FIXES=0
. ~/bin/makesnapshot-new-powerpc.sh
export FIXES=1
. ~/bin/makesnapshot-new-powerpc.sh
# . ~/bin/makesnapshot-new-powerpc64.sh
