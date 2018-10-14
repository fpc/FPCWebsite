#!/usr/bin/env bash

if [ -z "$QEMU_CPU" ] ; then
  QEMU_CPU=$CPU_TARGET
fi

source_os=`uname -s | tr [:upper:] [:lower:] `

# Might need some adaptations
OS_SOURCE=$source_os

if [ -z "$OS_TARGET" ] ; then
  OS_TARGET=$OS_SOURCE
fi

if [ "$OS_SOURCE" == "$OS_TARGET" ] ; then
  EMUL=qemu-$QEMU_CPU
else
  EMUL=qemu-system-$QEMU_CPU
fi

if [ ! -f "`which $EMUL`" ] ; then
  echo "$EMUL does not exist"
  exit
else
  EMUL=`which $EMUL`
  if [ ! -x $EMUL ] ; then
    echo "£EMUL is not executable"
    exit
  fi
fi

FULL_TARGET=$CPU_TARGET-$OS_TARGET

is_64bit=0
case $CPU_TARGET in
  aarch64|powerpc64|riscv64|sparc64|x86_64) is_64bit=1;;
esac


if [ -z "$QEMU_SYSROOT" ] ; then
  QEMU_SYSROOT=$HOME/sys-root/${FULL_TARGET}
fi

function maybe_add_dir ()
{
  filename=$1
  file_list=`find $QEMU_SYSROOT -iname "$filename" `
  for file in $file_list ; do
    if [ -n "$file" ] ; then
      file_ok=0
      is_64bit_file=`file $file | grep -i "64-bit" `
      if [[ ($is_64bit -eq 1 ) && ( -n "$is_64bit_file" ) ]] ; then
        file_ok=1
      fi
      is_32bit_file=`file $file | grep -i "32-bit" `
      if [[ ($is_64bit -eq 0 ) && ( -n "$is_32bit_file" ) ]] ; then
        file_ok=1
      fi
      if [ $file_ok -eq 1 ] ; then
        dir=`dirname $file`
        if [ "${EXTRAOPTS/-Fl$crt1_o_dir/}" == "$EXTRAOPTS" ] ; then
          echo "Adding $crt1_o_dir directory to library path list"
          EXTRAOPTS="$EXTRAOPTS -Fl$crt1_o_dir"
        fi
      fi
    fi
  done
}

if [ -d "$QEMU_SYSROOT" ] ; then
  echo "Adding $QEMU_SYSROOT sysroot directory"
  crt1_o_file=`find $QEMU_SYSROOT -iname "crt1.o" | head -1 `
  if [ -n "$crt1_o_file" ] ; then
    crt1_o_dir=`dirname $crt1_o_file`
    if [ "${EXTRAOPTS/-Fl$crt1_o_dir/}" == "$EXTRAOPTS" ] ; then
      echo "Adding $crt1_o_dir directory to library path list"
      EXTRAOPTS="$EXTRAOPTS -Fl$crt1_o_dir"
    fi
  fi
  crtbegin_o_file=`find $QEMU_SYSROOT -iname "crtbegin.o" | head -1 `
  if [ -n "$crtbegin_o_file" ] ; then
    crtbegin_o_dir=`dirname $crtbegin_o_file`
    if [ "${EXTRAOPTS/-Fl$crtbegin_o_dir/}" == "$EXTRAOPTS" ] ; then
      echo "Adding $crtbegin_o_dir directory to library path list"
      EXTRAOPTS="$EXTRAOPTS -Fl$crtbegin_o_dir"
    fi
  fi

  EXTRAOPTS="$EXTRAOPTS -Xd -Xr$QEMU_SYSROOT -k--sysroot=$QEMU_SYSROOT"
  EMUL="$EMUL -L $QEMU_SYSROOT"
fi

if [ -n "$DEBUG_EMUL" ] ; then
  EMUL_GDB="gdb --args"
else
  EMUL_GDB=
fi

$EMUL_GDB $EMUL $QEMU_OPTS $*
