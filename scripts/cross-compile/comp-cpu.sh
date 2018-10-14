#!/usr/bin/env bash

. $HOME/bin/fpc-versions.sh

if [ -z "$CROSSPP" ] ; then
  if [ -z "$CPU_TARGET" ] ; then
    CPU_TARGET=`fpc -iTP 2> /dev/null `
  fi
  if [ -z "$CPU_TARGET" ] ; then
    CPU_TARGET=x86_64
  fi

  FPC_BIN_VAR=FPC_BIN_${CPU_TARGET}
  CROSSPP=${!FPC_BIN_VAR}
  echo "Using FPC $CROSSPP"
fi

if [ ! -f "`which $CROSSPP`" ] ; then
  echo "No $CROSSPP file found"
  exit
fi

if [ -z "$CPU_TARGET" ] ; then
  CPU_TARGET=`$CROSSPP -iTP`
fi

is_64=0
case $CPU_TARGET in
 aarch64|powerpc64|riscv64|sparc64|x86_64) is_64=1;;
esac
  
for arg in $* ; do
  if [ "${arg#-T}" != "$arg" ] ; then
    echo "arg $arg recognized"
    OS_TARGET=${arg#-T}
  fi
  if [ "${arg#-Cp}" != "$arg" ] ; then
    echo "arg $arg recognized"
    if [ -z "$SUBARCH" ] ; then
      SUBARCH=${arg#-Cp}
    fi
  fi
done

if [ "$OS_TARGET" == "embedded" ] ; then
  if [ "CPU_TARGET" == "arm" ] ; then
    if [ -z "${SUBARCH}"  ] ; then
      echo "arm-embedded requires SUBARCH, using armv4t as default"
      SUBARCH=armv4t
      EXTRA="$EXTRA -Cp$SUBARCH"
    fi
  fi
  if [ "CPU_TARGET" == "avr" ] ; then
    if [ -z "${SUBARCH}"  ] ; then
      echo "avr-embedded requires SUBARCH, using avr25 as default"
      SUBARCH=avr25
      EXTRA="$EXTRA -Cp$SUBARCH"
    fi
  fi
  if [ "CPU_TARGET" == "mipsel" ] ; then
    if [ -z "${SUBARCH}"  ] ; then
      echo "mipsel-embedded requires SUBARCH, using pic32mx as default"
      SUBARCH=pic32mx
      EXTRA="$EXTRA -Cp$SUBARCH"
    fi
  fi
fi

if [ -z "$OS_TARGET" ] ; then
  OS_TARGET=`$CROSSPP -iTO`
fi

FULL_TARGET=$CPU_TARGET-$OS_TARGET

if [ -z "$QEMU_SYSROOT" ] ; then
  QEMU_SYSROOT=$HOME/sys-root/${FULL_TARGET}
fi

function add_dir ()
{
  pattern="$1"
  if [ "${pattern/\//_}" != "$pattern" ] ; then
    if [ -f "$pattern" ] ; then
      file_list=$pattern
    else
      file_list=`find $QEMU_SYSROOT/ -wholename "$pattern"`
    fi
  else
    file_list=`find $QEMU_SYSROOT/ -iname "$pattern"`
  fi
  for file in $file_list ; do
    use_file=0
    file_type=`file $file`
    if [ "$file_type" != "${file_type//symbolic link/}" ] ; then
      ls_line=`ls -l $file`
      echo "ls line is \"$ls_line\""
      link_target=${ls_line/* /}
      echo "link target is \"$link_target\""
      if [[ "${link_target:0:1}" == / || "${link_target:0:2}" == ~[/a-z] ]] ; then
        is_absolute=1
        add_dir $link_target
      else
        is_absolute=0
        dir=`dirname $file`
        add_dir $dir/$link_target
      fi
      return
    fi

    file_is_64=`echo $file_type | grep "64-bit" `
    if [[ ( -n "$file_is_64" ) && ( $is_64 -eq 1 ) ]] ; then
      use_file=1
    fi
    if [[ ( -z "$file_is_64" ) && ( $is_64 -eq 0 ) ]] ; then
      use_file=1
    fi
    echo "file=$file, is_64=$is_64, file_is_64=\"$file_is_64\""
    if [ $use_file -eq 1 ] ; then
      file_dir=`dirname $file`
      if [ "${EXTRAOPTS/-Fl$file_dir/}" == "$EXTRAOPTS" ] ; then
        echo "Adding $file_dir directory to library path list"
        EXTRAOPTS="$EXTRAOPTS -Fl$file_dir"
      fi
    fi
  done
}
  
if [ -d "$QEMU_SYSROOT" ] ; then
  echo "Adding $QEMU_SYSROOT sysroot directory"
  add_dir "crt1.o"
  add_dir "crtbegin.o"
  add_dir "libc.a"
  add_dir "libc.so"
  add_dir "ld*.so*"
  EXTRAOPTS="$EXTRAOPTS -Xd -Xr$QEMU_SYSROOT -k--sysroot=$QEMU_SYSROOT"
fi

$CROSSPP $EXTRAOPTS $*
