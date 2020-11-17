#!/usr/bin/env bash
if [ -z "$VASM_VERSION" ] ; then
  VASM_VERSION=1_8i
fi
if [ -z "$VLINK_VERSION" ] ; then
  VLINK_VERSION=0_16f
fi


# Add vasm assembler
z80_os_list="amstradcpc embedded msxdos zxspectrum"
m68k_os_list="amiga atari embedded linux macos macosclassic netbsd sinclairql"

# Recompile vasm assembler
recompile_vasm=0
# Recompile vlink linker
recompile_vlink=0
force_symlinks=0

if [ "$1" == "--force" ] ; then
  recompile_vasm=1
  recompile_vlink=1
  force_symlinks=1
fi



if [ -z "$MAKE" ] ; then
  MAKE=`which gmake 2> /dev/null`
  if [ -z "$MAKE" ] ; then
    MAKE=`which make`
    if [-z "$MAKE" ] ; then
      echo "Warning: unable to find make utility"
      MAKE=make
    fi
  fi
fi

if [ -z "$TAR" ] ; then
  TAR=`which gtar 2> /dev/null`
  if [ -z "$TAR" ] ; then
    TAR=`which tar`
    if [-z "$TAR" ] ; then
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


if [ ! -f $HOME/bin/vasmm68k_std ] ; then
  recompile_vasm=1
fi

if [ ! -f $HOME/bin/vasmz80_std ] ; then
  recompile_vasm=1
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
    if [ -d vasm ] ; then
      rm -Rf vasm
    fi
    $WGET http://server.owl.de/~frank/tags/${VASM_SRC}
    wget_res=$?
    if [ $wget_res -ne 0 ] ; then
      echo "Error: $WGET failed to download $VASM_SRC"
      return 1
    fi
    $TAR -xvzf ${VASM_SRC}
    tar_res=$?
    if [ $tar_res -ne 0 ] ; then
      echo "Error: $TAR failed to untar $VASM_SRC"
      return 2
    fi
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

for os in $z80_os_list ; do
  z80_symlink=z80-${os}-vasmz80_std
  if [[ ( ! -L "$z80_symlink" ) || ( $force_symlinks -ne 0 ) ]] ; then
    echo "Adding $z80_symlink symbolic link to vasmz80_std"
    ln -sf vasmz80_std $z80_symlink
  fi
done

for os in $m68k_os_list ; do
  m68k_symlink=m68k-${os}-vasmm68k_std
  if [[ ( ! -L "$m68k_symlink" ) || ( $force_symlinks -ne 0 ) ]] ; then
    echo "Adding $m68k_symlink symbolic link to vasmm68k_std"
    ln -sf vasmm68k_std $m68k_symlink
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
    if [ -d vlink ] ; then
      rm -Rf vlink
    fi
    # $WGET http://server.owl.de/~frank/tags/vlink${VLINK_VERSION}.tar.gz
    $WGET http://phoenix.owl.de/tags/$VLINK_SRC
    wget_res=$?
    if [ $wget_res -ne 0 ] ; then
      echo "Error: failed to download $VLINK_SRC"
      return $wget_res
    fi
    $TAR -xvzf $VLINK_SRC
    tar_res=$?
    if [ $tar_res -ne 0 ] ; then
      echo "Error: failed to untar $VLINK_SRC"
      return $tar_res
    fi
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

for os in $z80_os_list ; do
  z80_symlink=z80-${os}-vlink
  if [[ ( ! -L "$z80_symlink" ) || ( $force_symlinks -ne 0 ) ]] ; then
    echo "Adding $z80_symlink symbolic link to vlink"
    ln -sf vlink $z80_symlink
  fi
done

for os in $m68k_os_list ; do
  m68k_symlink=m68k-${os}-vlink
  if [[ ( ! -L "$m68k_symlink" ) || ( $force_symlinks -ne 0 ) ]] ; then
    echo "Adding $m68k_symlink symbolic link to vlink"
    ln -sf vlink $m68k_symlink
  fi
done


