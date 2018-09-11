#!/bin/bash
. ~/bin/fpc-versions.sh

export CURVER=$TRUNKVERSION
export RELEASEVER=$RELEASEVERSION
export FTP_SNAPSHOT_DIR=$TRUNKDIRNAME
export FPCSVNDIR=$TRUNKDIR

. ~/bin/linux64-fpctrunkup.sh
. ~/bin/linux32-fpctrunkup.sh

. ~/bin/makesnapshot-new-powerpc.sh
. ~/bin/makesnapshot-new-powerpc64.sh

export CURVER=$FIXESVERSION
export RELEASEVER=$RELEASEVERSION
export FTP_SNAPSHOT_DIR=$FIXESDIRNAME
export FPCSVNDIR=$FIXESDIR

. ~/bin/linux64-fpcfixesup.sh
. ~/bin/linux32-fpcfixesup.sh

. ~/bin/makesnapshot-new-powerpc.sh
. ~/bin/makesnapshot-new-powerpc64.sh
