#!/usr/bin/env bash

# Huge collection of things to install
# on a bare virtual machine with huge disk space

cd $HOME

# Get Free Pascal versions from the fpc-versions.sh script
. $HOME/bin/fpc-versions.sh

if [ -z "$SDCC_VERSION" ] ; then
  SDCC_VERSION=4.1.0
fi

if [ -z "$Z80ASM_VERSION" ] ; then
  Z80ASM_VERSION=1.8
fi

if [ "$1" == "--force" ] ; then
  force=1
  recompile_sdasz80=1
  recompile_z80asm=1
  shift
else
  force=0
  recompile_sdasz80=0
  recompile_z80asm=0
fi

set -u

if [ ! -f $HOME/bin/sdasz80 ] ; then
  recompile_sdasz80=1
fi

if [ ! -f $HOME/bin/z80asm ] ; then
  recompile_z80asm=1
fi

cd $HOME/gnu
if [ $recompile_sdasz80 -eq 1 ] ; then
  if [ $force -eq 1 ] ; then
    if [ -d sdcc ] ; then
      rm -Rf sdcc
    fi
  fi
  if [ ! -d sdcc ] ; then
    mkdir sdcc
  fi
  cd sdcc
  SDCC_SRC=sdcc-src-$SDCC_VERSION.tar.bz2
  if [ ! -f "$SDCC_SRC" ] ; then
    echo "Uploading sdcc version $SDCC_VERSION"
    wget https://sourceforge.net/projects/sdcc/files/sdcc/$SDCC_VERSION/$SDCC_SRC
    tar -xvjf $SDCC_SRC
  fi
  sdcc_src_dir=` find . -type d -name "sdcc*" | head -1 `
  mkdir build-sdcc
  cd build-sdcc
  ../$sdcc_src_dir/configure
  make
  cp -fp ./bin/sdasz80 $HOME/bin
  cp -fp ./bin/sdar $HOME/bin
  cp -fp ./bin/sdldz80 $HOME/bin
fi

cd $HOME/gnu
if [ $recompile_z80asm -eq 1 ] ; then
  z80asm_src_dir=z80asm-$Z80ASM_VERSION
  z80asm_file=z80asm-$Z80ASM_VERSION.tar.gz
  if [ $force -eq 1 ] ; then
    if [ -d $z80asm_src_dir ] ; then
      rm -Rf $z80asm_src_dir
    fi
  fi
  if [ ! -f $z80asm_file ] ; then
    wget http://download.savannah.nongnu.org/releases/z80asm/z80asm-${Z80ASM_VERSION}.tar.gz
  fi
  tar -xvzf $z80asm_file
  cd $z80asm_src_dir
  make
  cp  -fp ./z80asm $HOME/bin
fi

cd $HOME/bin

z80_os_list="embedded zxspectrum msxdos amstradcpc"
for os in $z80_os_list ; do
  z80_sdas_symlink=z80-${os}-sdasz80
  if [ -f sdasz80 ] ; then
    if [ ! -L "$z80_sdas_symlink" ] ; then
      echo "Adding $z80_sdas_symlink symbolic link to sdasz80"
      ln -s sdasz80 $z80_sdas_symlink
    fi
  fi
  z80_sdar_symlink=z80-${os}-sdar
  if [ -f sdar ] ; then
    if [ ! -L "$z80_sdar_symlink" ] ; then
      echo "Adding $z80_sdar_symlink symbolic link to sdar"
      ln -s sdar $z80_sdar_symlink
    fi
  fi
  z80_sdld_symlink=z80-${os}-sdldz80
  if [ -f sdldz80 ] ; then
    if [ ! -L "$z80_sdld_symlink" ] ; then
      echo "Adding $z80_sdld_symlink symbolic link to sdldz80"
      ln -s sdldz80 $z80_sdld_symlink
    fi
  fi
  z80asm_symlink=z80-${os}-z80asm
  if [ -f z80asm ] ; then
    if [ ! -L "$z80asm_symlink" ] ; then
      echo "Adding $z80asm_symlink symbolic link to z80asm"
      ln -s z80asm $z80asm_symlink
    fi
  fi
done


