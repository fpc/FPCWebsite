#!/usr/bin/env bash
#################################################################
## Centralize versions names for Free Pascal installations
## The easiest way to accomodate is to add symbolic links
## to your own installation
#################################################################

#################################################################
## Last Free Pascal Release version
## Should be installed on the machine
#################################################################
export RELEASEVERSION=3.0.4

#################################################################
## Free Pascal trunk and fixes versions
#################################################################
export TRUNKVERSION=3.3.1
export FIXESVERSION=3.2.1

#################################################################
## Free Pascal trunk and fixes directory names
#################################################################
if [ -z "$TRUNKDIRNAME" ] ; then
  TRUNKDIRNAME=trunk
fi
export TRUNKDIRNAME
if [ -z "$FIXESDIRNAME" ] ; then
  FIXESDIRNAME=fixes
fi
export FIXESDIRNAME

#################################################################
## Free Pascal trunk and fixes versions
#################################################################
if [ -z "$PASDIR" ] ; then
  PASDIR=${HOME}/pas
fi

export TRUNKDIR=${PASDIR}/${TRUNKDIRNAME}
export FIXESDIR=${PASDIR}/${FIXESDIRNAME}

#################################################################
## Free Pascal trunk and fixes installation directories
#################################################################
INSTALLFPCDIRPREFIX=${HOME}/pas/fpc-
INSTALLTRUNKDIR=${INSTALLFPCDIRPREFIX}${TRUNKVERSION}
INSTALLFIXESDIR=${INSTALLFPCDIRPREFIX}${FIXESVERSION}

#################################################################
## Free Pascal test of latest release installed
#################################################################
if [ ! -d "${INSTALLFPCDIRPREFIX}${RELEASEVERSION}" ]; then
  RELEASEVERSION=3.0.2
  if [ ! -d "${INSTALLFPCDIRPREFIX}${RELEASEVERSION}" ]; then
    RELEASEVERSION=3.0.0
  fi
fi

#################################################################
## Free Pascal mainn directory for log files
#################################################################
if [ -z "$FPCLOGDIR" ] ; then
  if [ -d $HOME/logs ] ; then
    FPCLOGDIR=$HOME/logs
  elif [ -d $PASDIR/logs ] ; then
    FPCLOGDIR=$PASDIR/logs
  fi
fi

#################################################################
## Free Pascal CPU compiler names
#################################################################
FPC_BIN_aarch64=ppca64
FPC_BIN_alpha=ppcaxp
FPC_BIN_arm=ppcarm
FPC_BIN_avr=ppcavr
FPC_BIN_i386=ppc386
FPC_BIN_i8086=ppc8086
FPC_BIN_jvm=ppcjvm
FPC_BIN_m68k=ppc68k
FPC_BIN_mips=ppcmips
FPC_BIN_mipsel=ppcmipsel
FPC_BIN_powerpc=ppcppc
FPC_BIN_powerpc64=ppcppc64
FPC_BIN_sparc=ppcsparc
FPC_BIN_sparc64=ppcsparc64
FPC_BIN_x86_64=ppcx64

#################################################################
## NDK must be set for cross-compilation for Android
#################################################################
if [ -z "$NDK_VERSION" ] ; then
  NDK_VERSION=r15c
fi
if [ -z "$NDK_BASE_DIR" ] ; then
  NDK_BASE_DIR=${HOME}/gnu/android-ndk
fi

if [ -d $NDK_BASE_DIR/android-ndk-$NDK_VERSION ] ; then
  export ANDROID_NDK_ROOT=$NDK_BASE_DIR/android-ndk-$NDK_VERSION
  export NDK=$ANDROID_NDK_ROOT
fi
