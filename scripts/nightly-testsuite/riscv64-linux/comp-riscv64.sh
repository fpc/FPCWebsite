#!/usr/bin/env bash

NATIVE_CPU=`uname -m`

if [ "$NATIVE_CPU" == "riscv64" ] ; then
  NATIVE_FPC=ppcrv64
  NATIVE_BINUTILS=
else
  NATIVE_FPC=ppcx64
  NATIVE_BINUTILS=
fi

verbose=0
try_upload=1

BRANCH=trunk
TARGET_FPC=ppcrv64
CPU_TARGET=`$TARGET_FPC -iTP`
OS_TARGET=`$TARGET_FPC -iTO`
FULL_TARGET=$CPU_TARGET-$OS_TARGET
GNU_TARGET_DIR="$FULL_TARGET-gnu"
COMMON_TARGET_OPT=""
if [ "$NATIVE_CPU" == "riscv64" ] ; then
  TARGET_SYSROOT=""
  native_risc=1
else
  TARGET_SYSROOT="$HOME/sys-root/$FULL_TARGET"
  native_risc=0
fi

if [[ ( -z "$TARGET_SYSROOT" ) || ( -d "$TARGET_SYSROOT" ) ]] ; then
  if [ -d "$TARGET_SYSROOT/lib" ] ; then
    COMMON_TARGET_OPT+=" -Fl$TARGET_SYSROOT/lib"
    COMMON_TARGET_OPT+=" -k-rpath-link=$TARGET_SYSROOT/lib -k-L -k$TARGET_SYSROOT/lib"
  fi
  if [ -d "$TARGET_SYSROOT/usr/lib" ] ; then
    COMMON_TARGET_OPT+=" -Fl$TARGET_SYSROOT/usr/lib"
    COMMON_TARGET_OPT+=" -k-rpath-link=$TARGET_SYSROOT/usr/lib -k-L -k$TARGET_SYSROOT/usr/lib"
  fi
  if [ -d "$TARGET_SYSROOT/lib/$GNU_TARGET_DIR" ] ; then
    COMMON_TARGET_OPT+=" -Fl$TARGET_SYSROOT/lib/$GNU_TARGET_DIR"
    COMMON_TARGET_OPT+=" -k-rpath-link=$TARGET_SYSROOT/lib/$GNU_TARGET_DIR -k-L -k$TARGET_SYSROOT/lib/$GNU_TARGET_DIR"
  fi
  if [ -d "$TARGET_SYSROOT/usr/lib/$GNU_TARGET_DIR" ] ; then
    COMMON_TARGET_OPT+=" -Fl$TARGET_SYSROOT/usr/lib/$GNU_TARGET_DIR"
    COMMON_TARGET_OPT+=" -k-rpath-link=$TARGET_SYSROOT/usr/lib/$GNU_TARGET_DIR -k-L -k$TARGET_SYSROOT/usr/lib/$GNU_TARGET_DIR"
  fi
  if [ -d "$TARGET_SYSROOT/usr/lib/gcc/$GNU_TARGET_DIR/9" ] ; then
    COMMON_TARGET_OPT+=" -Fl$TARGET_SYSROOT/usr/lib/gcc/$GNU_TARGET_DIR/9"
    COMMON_TARGET_OPT+=" -k-rpath-link=$TARGET_SYSROOT/usr/lib/gcc/$GNU_TARGET_DIR/9 -k-L -k$TARGET_SYSROOT/usr/lib/gcc/$GNU_TARGET_DIR/9"
  fi
  if [ $native_risc -eq 0 ] ; then
    COMMON_TARGET_OPT+=" -Xd -XR$TARGET_SYSROOT -k--sysroot=$TARGET_SYSROOT"
    COMMON_TARGET_OPT="-k-nostdlib $COMMON_TARGET_OPT"
  fi
fi

TARGET_BINUTILSPREFIX=$FULL_TARGET-
COMMON_TARGET_OPT+=" -XP$TARGET_BINUTILSPREFIX"
export QEMU_LD_PREFIX=$HOME/sys-root/$FULL_TARGET/
export LD_PRELOAD=
echo "$TARGET_FPC -vx $COMMON_TARGET_OPT $*"
$TARGET_FPC -vx $COMMON_TARGET_OPT $*

