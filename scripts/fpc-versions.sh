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
export RELEASEVERSION=3.2.2

# List of versions still accessible on main ftp server
RELEASE_VERSION_LIST="3.2.2 3.2.0 3.0.4 3.0.2 3.0.0 2.6.4 2.6.2 2.6.0 2.4.2 2.4.2 2.2.4 2.2.2"

#################################################################
## Free Pascal trunk and fixes versions
#################################################################
export TRUNKVERSION=3.3.1
export FIXESVERSION=3.2.3

export FIXES_BRANCH=fixes_${FIXESVERSION:0:1}_${FIXESVERSION:2:1}
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

if [ -d ${PASDIR}/${FIXES_BRANCH} ] ; then
  export FIXESDIR=${PASDIR}/${FIXES_BRANCH}
  export FIXESDIRNAME=${FIXES_BRANCH}
else
  export FIXESDIR=${PASDIR}/${FIXESDIRNAME}
fi

#################################################################
## Free Pascal trunk and fixes installation directories
#################################################################
INSTALLFPCDIRPREFIX=${HOME}/pas/fpc-
INSTALLTRUNKDIR=${INSTALLFPCDIRPREFIX}${TRUNKVERSION}
INSTALLFIXESDIR=${INSTALLFPCDIRPREFIX}${FIXESVERSION}

INSTALLRELEASEDIR=${INSTALLFPCDIRPREFIX}${RELEASEVERSION}

if [ ! -d ${INSTALLRELEASEDIR} ] ; then
  for test_version in $RELEASE_VERSION_LIST ; do
    test_dir=${INSTALLFPCDIRPREFIX}${test_version}
    if [ -d $test_dir ] ; then
      export RELEASEVERSION=${test_version}
      INSTALLRELEASEDIR=${test_dir}
      break
    fi
  done
fi

export INSTALLRELEASEDIR

#################################################################
## Free Pascal main directory for log files
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
FPC_BIN_riscv32=ppcrv32
FPC_BIN_riscv64=ppcrv64
FPC_BIN_sparc=ppcsparc
FPC_BIN_sparc64=ppcsparc64
FPC_BIN_x86_64=ppcx64

#################################################################
## NDK must be set for cross-compilation for Android
#################################################################
if [ -z "$NDK_BASE_DIR" ] ; then
  NDK_BASE_DIR=${HOME}/gnu/android-ndk
fi
if [ -d "$NDK_BASE_DIR" ] ; then
  if [ -z "$NDK_VERSION" ] ; then
    NDK_SUBDIRS=`find $NDK_BASE_DIR -iname "android-ndk-*"`
    for dir in $NDK_SUBDIRS ; do
      if [ -d "$dir" ] ; then
        NDK_VERSION=${dir/*android-ndk-/}
      fi
    done
    if [ -z "$NDK_VERSION" ] ; then
      NDK_VERSION=r15c
    fi
  fi

  if [ -d $NDK_BASE_DIR/android-ndk-$NDK_VERSION ] ; then
    export ANDROID_NDK_ROOT=$NDK_BASE_DIR/android-ndk-$NDK_VERSION
    if [ -z "$NDK" ] ; then
      export NDK=$ANDROID_NDK_ROOT
      # In r18, versions 20 and 25 are absent, removed here also
      NDK_VERSION_LIST="9 10 11 12 13 14 15 16 17 18 19 21 22 23 24 26 27 28 29"
      for ndk_ver in $NDK_VERSION_LIST ; do
        # aarch64 is present since android-21
        if [ -z "$AARCH64_ANDROID_ROOT" ] ; then
          if [ -d "$NDK/platforms/android-$ndk_ver/arch-arm64" ] ; then
            export AARCH64_ANDROID_VERSION=$ndk_ver
            export AARCH64_ANDROID_ROOT=$NDK/platforms/android-$AARCH64_ANDROID_VERSION/arch-arm64
          fi
        fi
        # arm is present since android-9
        if [ -z "$ARM_ANDROID_ROOT" ] ; then
          if [ -d "$NDK/platforms/android-$ndk_ver/arch-arm" ] ; then
            export ARM_ANDROID_VERSION=$ndk_ver
            export ARM_ANDROID_ROOT=$NDK/platforms/android-$ARM_ANDROID_VERSION/arch-arm
          fi
        fi
        # i386 is present since android-9
        if [ -z "$I386_ANDROID_ROOT" ] ; then
          if [ -d "$NDK/platforms/android-$ndk_ver/arch-x86" ] ; then
            export I386_ANDROID_VERSION=$ndk_ver
            export I386_ANDROID_ROOT=$NDK/platforms/android-$I386_ANDROID_VERSION/arch-x86
          fi
        fi
        # mipsel is present since android-9
        if [ -z "$MIPSEL_ANDROID_ROOT" ] ; then
          if [ -d "$NDK/platforms/android-$ndk_ver/arch-mips" ] ; then
            export MIPSEL_ANDROID_VERSION=$ndk_ver
            export MIPSEL_ANDROID_ROOT=$NDK/platforms/android-$MIPSEL_ANDROID_VERSION/arch-mips
          fi
        fi
        # x86_64 is present since android-21
        if [ -z "$X86_64_ANDROID_ROOT" ] ; then
          if [ -d "$NDK/platforms/android-$ndk_ver/arch-x86_64" ] ; then
            export X86_64_ANDROID_VERSION=$ndk_ver
            export X86_64_ANDROID_ROOT=$NDK/platforms/android-$X86_64_ANDROID_VERSION/arch-x86_64
          fi
        fi
      done
    fi
  fi
fi

