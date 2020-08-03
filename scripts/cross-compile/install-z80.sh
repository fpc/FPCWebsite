#!/usr/bin/env bash

# Huge collection of things to install
# on a bare virtual machine with huge disk space

cd $HOME

if [ ! -d bin ] ; then
  mkdir bin
fi

if [ ! -d pas ] ; then
  mkdir pas
fi

if [ ! -s sys-root ] ; then
  mkdir sys-root
fi

if [ ! -d scripts ] ; then
  echo "Installing Free Pascal scripts"
  svn checkout https://svn.freepascal.org/svn/html/scripts
else
  cd scripts
  echo "Updating Free Pascal scripts"
  svn cleanup
  svn up
  cd ..
fi

function maybe_add_symlink ()
{
  file=$1
  if [ ! -f $file ] ; then
    echo "$file does not exist"
    return
  fi
  filename=`basename $file`
  if [ ! -f $HOME/bin/$filename ] ; then
    echo "Adding symlink to $file"
    ( cd bin ; ln -s $file )
  fi
}

cpu=`uname -p | tr [[:upper:]] [[:lower:]] `
os=`uname -s | tr [[:upper:]] [[:lower:]] `
echo "cpu=$cpu, os=$os"

case "$os" in
  SunOS|sunos) os=solaris;;
esac

case "$cpu" in
  sparc|sparc64) CPU32=sparc; CPU64=sparc64;;
  i*86|x86_64|amd64) CPU32=i386; CPU64=x86_64;;
  arm|aarch64|arm64) CPU32=arm; CPU64=aarch64;;
esac

script_dir=~/scripts/nightly-testsuite/$cpu-$os
if [ ! -d "$script_dir" ] ; then
  script_dir=~/scripts/nightly-testsuite/$os
fi

for file in $script_dir/*.sh ; do
  maybe_add_symlink $file
done 

# Get Free Pascal versions from the fpc-versions.sh script
. $HOME/bin/fpc-versions.sh

QEMU_VERSION=5.0.0
NASM_VERSION=2.15.03
VASM_VERSION=1_8h
VLINK_VERSION=0_16e
SDCC_VERSION=4.0.0
do_update=0

cd $HOME/pas

case "$os" in
  solaris) RELEASEVERSION=3.0.2
esac

CPUOS32=$CPU32-$os
CPUOS64=$CPU64-$os

# Add vasm assembler
if [ ! -f $HOME/bin/vasmm68k_std ] ; then
  cd $HOME/gnu
  mkdir vasm
  cd vasm

  wget http://server.owl.de/~frank/tags/vasm${VASM_VERSION}.tar.gz
  tar -xvzf vasm${VASM_VERSION}.tar.gz 
  cd vasm
  make CPU=m68k SYNTAX=mot
  make CPU=m68k SYNTAX=std
  make CPU=x86 SYNTAX=std
  make CPU=ppc SYNTAX=std
  make CPU=arm SYNTAX=std
  make CPU=z80 SYNTAX=std
  cp vasmm68k_mot vobjdump vasmm68k_std vasmx86_std vasmppc_std vasmarm_std vasmz80_std $HOME/bin
fi

# Add vlink linker
if [ ! -f $HOME/bin/vlink ] ; then
  cd $HOME/gnu
  mkdir vlink
  cd vlink
  # wget http://server.owl.de/~frank/tags/vlink${VLINK_VERSION}.tar.gz
  wget http://phoenix.owl.de/tags/vlink${VLINK_VERSION}.tar.gz
  tar -xvzf vlink${VLINK_VERSION}.tar.gz 
  cd vlink
  make
  cp vlink $HOME/bin
fi

# Add z80 assembler and symbolic links
if [ ! -f $HOME/bin/sdasz80 ] ; then
  cd $HOME/gnu
  mkdir sdcc
  cd sdcc
  echo "Uploading sdcc version $SDCC_VERSION"
  wget https://sourceforge.net/projects/sdcc/files/sdcc/$SDCC_VERSION/sdcc-src-$SDCC_VERSION.tar.bz2 .
  tar -xvjf sdcc-src-$SDCC_VERSION.tar.bz2
  mkdir build-sdcc
  cd build-sdcc
  ../sdcc/configure
  make
fi
