#!/usr/bin/env bash

# Huge collection of things to install
# on a bare virtual machine with huge disk space

cd $HOME

# Get Free Pascal versions from the fpc-versions.sh script
. $HOME/bin/fpc-versions.sh

if [ -z "$SDCC_VERSION" ] ; then
  SDCC_VERSION=4.0.0
fi

recompile=0

if [ ! -f $HOME/bin/sdasz80 ] ; then
  recompile=1
fi

if [ $recompile -eq 1 ] ; then
  cd $HOME/gnu
  if [ ! -d sdcc ] ; then
    mkdir sdcc
  fi
  cd sdcc
  SDCC_SRC=sdcc-src-$SDCC_VERSION.tar.bz2
  if [ ! -f "$SDCC_SRC" ] ; then
    echo "Uploading sdcc version $SDCC_VERSION"
    wget https://sourceforge.net/projects/sdcc/files/sdcc/$SDCC_VERSION/$SDCC_SRC
    tar -xvjf sdcc-src-$SDCC_SRC
  fi
  mkdir build-sdcc
  cd build-sdcc
  ../sdcc$SDCC_VERSION/configure
  cp ./bin/sdasz80 $HOME/bin
  cp ./bin/sdldz80 $HOME/bin
  make
  cd $HOME/bin
fi

z80_os_list="embedded zxspectrum msxdos amstradcpc"
for os in $z80_os_list ; do
  z80_sdas_symlink=z80-${os}-sdasz80
  if [ ! -L "$z80_sdas_symlink" ] ; then
    echo "Adding $z80_sdas_symlink symbolic link to sdasz80"
    ln -s sdasz80 $z80_sdas_symlink
  fi
  z80_sdld_symlink=z80-${os}-sdldz80
  if [ ! -L "$z80_sdld_symlink" ] ; then
    echo "Adding $z80_sdld_symlink symbolic link to sdldz80"
    ln -s sdldz80 $z80_sdld_symlink
  fi
done

