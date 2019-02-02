#!/usr/bin/env bash

export CPU=`uname -p`
export machine=`uname -n`

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
  export INSTALL_PREFIX=
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

is_locked=0
LOCKFILE=$HOME/pas/$SVNDIR/lock
while [ -f $LOCKFILE ] ; do
  sleep 60
  if [ $is_locked -eq 0 ] ; then
    is_locked=1
    echo "$machine: File $LOCKFILE present, start waiting at `date +%Y-%m%d-%H:%M`"
  fi
done

if [ $is_locked -eq 1 ] ; then
  echo "$machine: File $LOCKFILE removed, end waiting at `date +%Y-%m%d-%H:%M`"
fi

if [ "$CPU" = "i386" ] ; then
  export FPCBIN=ppc386
  export FPCPASINSTALLDIR=$HOME/pas/i386
  echo "$machine: Starting solaris-fpccommonup.sh with FPCBIN=$FPCBIN at `date +%Y-%m%d-%H:%M`"
  echo "$machine: Starting solaris-fpccommonup.sh with FPCBIN=$FPCBIN at `date +%Y-%m%d-%H:%M`" > $LOCKFILE
  ~/bin/solaris-fpccommonup.sh
  export FPCPASINSTALLDIR=$HOME/pas/x86_64
  export FPCBIN=ppcx64
  echo "$machine: Starting solaris-fpccommonup.sh with FPCBIN=$FPCBIN at `date +%Y-%m%d-%H:%M`"
  echo "$machine: Starting solaris-fpccommonup.sh with FPCBIN=$FPCBIN at `date +%Y-%m%d-%H:%M`" > $LOCKFILE
  ~/bin/solaris-fpccommonup.sh
fi
if [ "$CPU" = "sparc" ] ; then
  export FPCBIN=ppcsparc
  export FPCPASINSTALLDIR=$HOME/pas/sparc
  echo "$machine: Starting solaris-fpccommonup.sh with FPCBIN=$FPCBIN at `date +%Y-%m%d-%H:%M`"
  echo "$machine: Starting solaris-fpccommonup.sh with FPCBIN=$FPCBIN at `date +%Y-%m%d-%H:%M`" > $LOCKFILE
  ~/bin/solaris-fpccommonup.sh
  if [ "$TEST_SPARC64" = "1" ] ; then
    export FPCBIN=ppcsparc64
    export FPCPASINSTALLDIR=$HOME/pas/sparc64
    echo "$machine: Starting solaris-fpccommonup.sh with FPCBIN=$FPCBIN at `date +%Y-%m%d-%H:%M`"
    echo "$machine: Starting solaris-fpccommonup.sh with FPCBIN=$FPCBIN at `date +%Y-%m%d-%H:%M`" > $LOCKFILE
    ~/bin/solaris-fpccommonup.sh
  fi
fi

rm -f $LOCKFILE
