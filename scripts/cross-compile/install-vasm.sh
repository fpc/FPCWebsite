#!/usr/bin/env bash

ALT_HTML_DIR=http://phoenix.owl.de/tags

if [ -z "${VASM_VERSION:-}" ] ; then
  # Latest version published 2021/05/13
  VASM_VERSION=1_8k
  #Old HMTL dir http://server.owl.de/~frank/tags
fi
VASM_HTML_DIR=http://sun.hasenbraten.de/vasm/release
if [ -z "${VLINK_VERSION:-}" ] ; then
  # Latest version published 2021/04/28
  VLINK_VERSION=0_16h
  #Old HTML dir http://phoenix.owl.de/tags
fi
VLINK_HTML_DIR=http://sun.hasenbraten.de/vlink/release

VASM_DISPLAY_VERSION=${VASM_VERSION//_/.}
VLINK_DISPLAY_VERSION=${VLINK_VERSION//_/.}

# Add vasm assembler
arm_os_list="linux embedded"
m68k_os_list="amiga atari embedded linux macos macosclassic netbsd sinclairql"
z80_os_list="amstradcpc embedded msxdos zxspectrum"

# Recompile vasm assembler
recompile_vasm=0
# Recompile vlink linker
recompile_vlink=0
force_symlinks=0

if [ "$1" == "--force" ] ; then
  recompile_vasm=1
  recompile_vlink=1
  force_symlinks=1
  shift
fi

if [ "$1" == "--help" ] ; then
  echo "Usage: $0 [--force]"
  echo "  Downloads, compiles and installs vasm and vlink"
  echo "  for use with Free Pascal compiler"
  echo "  Use --force option to force update"
  exit
fi



if [ -z "$MAKE" ] ; then
  MAKE=`which gmake 2> /dev/null`
  if [ -z "$MAKE" ] ; then
    MAKE=`which make`
    if [ -z "$MAKE" ] ; then
      echo "Warning: unable to find make utility"
      MAKE=make
    fi
  fi
fi

if [ -z "$TAR" ] ; then
  TAR=`which gtar 2> /dev/null`
  if [ -z "$TAR" ] ; then
    TAR=`which tar`
    if [ -z "$TAR" ] ; then
      echo "Warning: unable to find tar utility"
      TAR=tar
    fi
  fi
fi

if [ -z "$WGET" ] ; then
  WGET=`which wget 2> /dev/null`
  if [ -z "$WGET" ] ; then
    echo "Warning: unable to find wget utility"
    WGET=wget
  fi
fi

set -u


if [ ! -f "$HOME/bin/vasmarm_std" ] ; then
  echo "$HOME/bin/vasmarm_std not found, recompiling vasm"
  recompile_vasm=1
else
  INSTALLED_VASM_VERSION=`$HOME/bin/vasmarm_std -v 2> /dev/null | head -1`
  echo "Installed arm vasm version is $INSTALLED_VASM_VERSION"
  if [ "${INSTALLED_VASM_VERSION/${VASM_DISPLAY_VERSION}/}" == "$INSTALLED_VASM_VERSION" ] ; then
    echo "Older version detected, recompiling"
    recompile_vasm=1
  fi
fi

if [ ! -f "$HOME/bin/vasmm68k_std" ] ; then
  echo "$HOME/bin/vasmm68k_std not found, recompiling vasm"
  recompile_vasm=1
else
  INSTALLED_VASM_VERSION=`$HOME/bin/vasmm68k_std -v 2> /dev/null | head -1`
  echo "Installed m68k vasm version is $INSTALLED_VASM_VERSION"
  if [ "${INSTALLED_VASM_VERSION/${VASM_DISPLAY_VERSION}/}" == "$INSTALLED_VASM_VERSION" ] ; then
    echo "Older version detected, recompiling"
    recompile_vasm=1
  fi
fi

if [ ! -f "$HOME/bin/vasmz80_std" ] ; then
  echo "$HOME/bin/vasmz80_std not found, recompiling vasm"
  recompile_vasm=1
else
  INSTALLED_VASM_VERSION=`$HOME/bin/vasmz80_std -v 2> /dev/null | head -1`
  echo "Installed z80 vasm version is $INSTALLED_VASM_VERSION"
  if [ "${INSTALLED_VASM_VERSION/${VASM_DISPLAY_VERSION}/}" == "$INSTALLED_VASM_VERSION" ] ; then
    echo "Older version detected, recompiling"
    recompile_vasm=1
  fi
fi

function do_recompile_vasm ()
{
  cd $HOME/gnu
  if [ ! -d vasm ] ; then
    mkdir vasm
  fi
  cd vasm
  VASM_SRC=vasm${VASM_VERSION}.tar.gz 

  if [ ! -f "$VASM_SRC" ] ; then
    echo "$WGET ${VASM_HTML_DIR}/${VASM_SRC}"
    $WGET ${VASM_HTML_DIR}/${VASM_SRC} > wget-vasm-${VASM_VERSION}.log 2>&1
    wget_res=$?
    if [ $wget_res -ne 0 ] ; then
      $WGET ${ALT_HTML_DIR}/${VASM_SRC} > wget-alt-vasm-${VASM_VERSION}.log 2>&1
      wget_res=$?
    fi
    if [ $wget_res -ne 0 ] ; then
      echo "Error: $WGET failed to download $VASM_SRC"
      return 1
    fi
  fi

  if [ -d vasm ] ; then
    rm -Rf vasm
  fi
  $TAR -xvzf ${VASM_SRC}
  tar_res=$?
  if [ $tar_res -ne 0 ] ; then
    echo "Error: $TAR failed to untar $VASM_SRC"
    return 2
  fi
  cd vasm
  make CPU=m68k SYNTAX=mot
  res_m68k_mot=$?
  cp -fp vasmm68k_mot $HOME/bin
  res_cp_m68k_mot=$?
  make CPU=m68k SYNTAX=std
  res_m68k=$?
  cp -fp vasmm68k_std $HOME/bin
  res_cp_m68k=$?
  make CPU=x86 SYNTAX=std
  res_x86=$?
  cp -fp vasmx86_std $HOME/bin
  res_cp_x86=$?
  make CPU=ppc SYNTAX=std
  res_ppc=$?
  cp -fp vasmppc_std $HOME/bin
  res_cp_ppc=$?
  make CPU=arm SYNTAX=std
  res_arm=$?
  cp -fp vasmarm_std $HOME/bin
  res_cp_arm=$?
  make CPU=z80 SYNTAX=std
  res_z80=$?
  cp -fp vasmz80_std $HOME/bin
  res_cp_z80=$?
  cp -fp vobjdump $HOME/bin
  res_cp_vobjdump=$?
  let needed=res_m68k+res_z80+res_cp_m68k+res_cp_z80+res_cp_vobjdump
  return $needed
}

if [ $recompile_vasm -eq 1 ] ; then
  echo "Trying to recompile vasm version $VASM_VERSION"
  do_recompile_vasm
  res=$?
  if [ $res -ne 0 ] ; then
    echo "Failed to recompile and install vasm version $VASM_VERSION"
    VASM_VERSION=
    echo "Trying to recompile generic vasm version"
    do_recompile_vasm
    res=$?
    if [ $res -ne 0 ] ; then
      echo "Failed to recompile and install vasm"
    fi
  fi
fi

cd $HOME/bin

for os in $arm_os_list ; do
  arm_symlink=arm-${os}-vasmarm_std
  if [[ ( ! -L "$arm_symlink" ) || ( $force_symlinks -ne 0 ) ]] ; then
    echo "Adding $arm_symlink symbolic link to vasmarm_std"
    ln -sf vasmarm_std $arm_symlink
  fi
done

for os in $m68k_os_list ; do
  m68k_symlink=m68k-${os}-vasmm68k_std
  if [[ ( ! -L "$m68k_symlink" ) || ( $force_symlinks -ne 0 ) ]] ; then
    echo "Adding $m68k_symlink symbolic link to vasmm68k_std"
    ln -sf vasmm68k_std $m68k_symlink
  fi
done

for os in $z80_os_list ; do
  z80_symlink=z80-${os}-vasmz80_std
  if [[ ( ! -L "$z80_symlink" ) || ( $force_symlinks -ne 0 ) ]] ; then
    echo "Adding $z80_symlink symbolic link to vasmz80_std"
    ln -sf vasmz80_std $z80_symlink
  fi
done

function recompile_vlink ()
{
  cd $HOME/gnu
  if [ ! -d vlink ] ; then
    mkdir vlink
  fi
  cd vlink
  VLINK_SRC=vlink${VLINK_VERSION}.tar.gz
  if [ ! -f "$VLINK_SRC" ] ; then
    # $WGET http://server.owl.de/~frank/tags/vlink${VLINK_VERSION}.tar.gz
    echo "$WGET $VLINK_HTML_DIR/$VLINK_SRC"
    $WGET $VLINK_HTML_DIR/$VLINK_SRC > wget-vlink-${VLINK_VERSION}.log 2>&1
    wget_res=$?
    if [ $wget_res -ne 0 ] ; then
      $WGET $ALT_HTML_DIR/$VLINK_SRC > wget-alt-vlink-${VLINK_VERSION}.log 2>&1

      wget_res=$?
    fi
    if [ $wget_res -ne 0 ] ; then
      echo "Error: failed to download $VLINK_SRC"
      return $wget_res
    fi
  fi

  if [ -d vlink ] ; then
    rm -Rf vlink
  fi
  $TAR -xvzf $VLINK_SRC
  tar_res=$?
  if [ $tar_res -ne 0 ] ; then
    echo "Error: failed to untar $VLINK_SRC"
    return $tar_res
  fi
  cd vlink
  make
  res=$?
  if [ $res -ne 0 ] ; then
    return $res
  fi
  cp -fp vlink $HOME/bin
  res=$?
  if [ $res -ne 0 ] ; then
    return $res
  fi
}

# Add vlink linker
if [ ! -f $HOME/bin/vlink ] ; then
  recompile_vlink=1
else
  INSTALLED_VLINK_VERSION=`$HOME/bin/vlink -v 2> /dev/null | head -1`
  echo "Installed version is $INSTALLED_VLINK_VERSION"
  if [ "${INSTALLED_VLINK_VERSION/${VLINK_DISPLAY_VERSION}/}" == "$INSTALLED_VLINK_VERSION" ] ; then
    echo "Older version detected, recompiling"
    recompile_vlink=1
  fi
fi

if [ $recompile_vlink -ne 0 ] ; then
  echo "Trying to recompile vlink version $VLINK_VERSION"
  recompile_vlink
  res=$?
  if [ $res -ne 0 ] ; then
    echo "Failed to recompile and install vlink version $VLINK_VERSION"
    VLINK_VERSION=
    echo "Trying to recompile generic vlink version"
    recompile_vlink
    res=$?
    if [ $res -ne 0 ] ; then
      echo "Failed to recompile and install vlink"
    fi
  fi
fi

cd $HOME/bin

for os in $arm_os_list ; do
  arm_symlink=arm-${os}-vlink
  if [[ ( ! -L "$arm_symlink" ) || ( $force_symlinks -ne 0 ) ]] ; then
    echo "Adding $arm_symlink symbolic link to vlink"
    ln -sf vlink $arm_symlink
  fi
done

for os in $m68k_os_list ; do
  m68k_symlink=m68k-${os}-vlink
  if [[ ( ! -L "$m68k_symlink" ) || ( $force_symlinks -ne 0 ) ]] ; then
    echo "Adding $m68k_symlink symbolic link to vlink"
    ln -sf vlink $m68k_symlink
  fi
done

for os in $z80_os_list ; do
  z80_symlink=z80-${os}-vlink
  if [[ ( ! -L "$z80_symlink" ) || ( $force_symlinks -ne 0 ) ]] ; then
    echo "Adding $z80_symlink symbolic link to vlink"
    ln -sf vlink $z80_symlink
  fi
done


