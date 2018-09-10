#!/bin/bash
. ~/bin/fpc-versions.sh

export CURVER=$TRUNKVERSION
export RELEASEVER=$RELEASEVERSION

. ~/bin/linux64-fpctrunkup.sh
. ~/bin/linux32-fpctrunkup.sh

export FTP_SNAPSHOT_DIR=$TRUNKDIRNAME
export FPCSVNDIR=$TRUNKDIR

. ~/bin/makesnapshot-new-powerpc.sh
. ~/bin/makesnapshot-new-powerpc64.sh

export CURVER=$FIXESVERSION
export RELEASEVER=$RELEASEVERSION

. ~/bin/linux64-fpctrunkup.sh
. ~/bin/linux32-fpctrunkup.sh

export FTP_SNAPSHOT_DIR=$FIXESDIRNAME
export FPCSVNDIR=$FIXESDIR

. ~/bin/makesnapshot-new-powerpc.sh
. ~/bin/makesnapshot-new-powerpc64.sh
