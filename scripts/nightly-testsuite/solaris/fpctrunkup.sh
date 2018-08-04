#!/usr/bin/env bash

export CPU=`uname -p`

. ~/bin/fpc-versions.sh

if [ "$CPU" = "sparc" ] ; then
  INSTALLFPCDIRPREFIX=${HOME}/pas/sparc/fpc-
  INSTALLTRUNKDIR=${INSTALLFPCDIRPREFIX}${TRUNKVERSION}
  INSTALLFIXESDIR=${INSTALLFPCDIRPREFIX}${FIXESVERSION}
fi

if [ "$CPU" = "i386" ] ; then
  INSTALLFPCDIRPREFIX=${HOME}/pas/i386/fpc-
  INSTALLTRUNKDIR=${INSTALLFPCDIRPREFIX}${TRUNKVERSION}
  INSTALLFIXESDIR=${INSTALLFPCDIRPREFIX}${FIXESVERSION}
fi

function rpath ()
{
  export PATH=${INSTALLFPCDIRPREFIX}${RELEASEVERSION}/bin:$PATH
  export PREFIX=
}

function fpath ()
{
  export PATH=${INSTALLFPCDIRPREFIX}${FIXESVERSION}/bin:$PATH
  export INSTALL_PREFIX=$INSTALLFIXESDIR
}

function spath ()
{
  export PATH=${INSTALLFPCDIRPREFIX}${TRUNKVERSION}/bin:$PATH
  export INSTALL_PREFIX=$INSTALLTRUNKDIR
}
# Use opencsw binaries
export WITHCSW=1
export SVNDIR=trunk

LOCKFILE=$HOME/pas/$SVNDIR/lock
while [ -f $LOCKFILE ] ; do
  sleep 60
done

if [ "$CPU" = "i386" ] ; then
  export FPCBIN=ppc386
  export FPCPASINSTALLDIR=$HOME/pas/i386
  echo "Starting solaris-fpccommonup.sh with FPCBIN=$FPCBIN" > $LOCKFILE
  ~/bin/solaris-fpccommonup.sh
  export FPCPASINSTALLDIR=$HOME/pas/x86_64
  export FPCBIN=ppcx64
  echo "Starting solaris-fpccommonup.sh with FPCBIN=$FPCBIN" > $LOCKFILE
  ~/bin/solaris-fpccommonup.sh
fi
if [ "$CPU" = "sparc" ] ; then
  export FPCBIN=ppcsparc
  export FPCPASINSTALLDIR=$HOME/pas/sparc
  echo "Starting solaris-fpccommonup.sh with FPCBIN=$FPCBIN" > $LOCKFILE
  ~/bin/solaris-fpccommonup.sh
  if [ "$TEST_SPARC64" = "1" ] ; then
    export FPCBIN=ppcsparc64
    export FPCPASINSTALLDIR=$HOME/pas/sparc64
    echo "Starting solaris-fpccommonup.sh with FPCBIN=$FPCBIN" > $LOCKFILE
    ~/bin/solaris-fpccommonup.sh
  fi
fi

rm -f $LOCKFILE
