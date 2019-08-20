#!/bin/bash
. ~/bin/fpc-versions.sh

machine=`uname -m`

if [ "$machine" = "ppc64le" ] ; then
  gen_64bit=1
  gen_32bit=0
elif [ "$machine" = "ppc64" ] ; then
  gen_64bit=1
  gen_32bit=1
elif [ "$machine" = "ppc" ] ; then
  gen_64bit=0
  gen_32bit=1
else
  gen_64bit=0
  gen_32bit=0
  echo "Warning: unrecognized machine $machine"
fi

export CURVER=$TRUNKVERSION
export RELEASEVER=$RELEASEVERSION
export FTP_SNAPSHOT_DIR=$TRUNKDIRNAME
export FPCSVNDIR=$TRUNKDIR

if [ $gen_64bit -eq 1 ] ; then
  . ~/bin/linux64-fpctrunkup.sh
  . ~/bin/makesnapshot-new-powerpc64.sh
fi
if [ $gen_32bit -eq 1 ] ; then
  . ~/bin/linux32-fpctrunkup.sh
  . ~/bin/makesnapshot-new-powerpc.sh
fi 

export CURVER=$FIXESVERSION
export RELEASEVER=$RELEASEVERSION
export FTP_SNAPSHOT_DIR=$FIXESDIRNAME
export FPCSVNDIR=$FIXESDIR

if [ $gen_64bit -eq 1 ] ; then
 . ~/bin/linux64-fpcfixesup.sh
 . ~/bin/makesnapshot-new-powerpc64.sh
fi

if [ $gen_32bit -eq 1 ] ; then
  . ~/bin/linux32-fpcfixesup.sh
  . ~/bin/makesnapshot-new-powerpc.sh
fi

