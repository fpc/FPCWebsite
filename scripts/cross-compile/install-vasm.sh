#!/usr/bin/env bash
VASM_VERSION=1_8f
# Add vasm assembler

update=0

if [ ! -f $HOME/bin/vasmm68k_std ] ; then
  update=1
fi

if [ "$1" == "--force" ] ; then
  update=1
fi

cd $HOME/gnu
if [ ! -d vasm ] ; then
  mkdir vasm
  update=1
fi

cd $HOME/gnu/vasm
if [ ! -f vasm${VASM_VERSION}.tar.gz ] ; then
  update=1
fi

if [ $update -eq 1 ] ; then
  if [ ! -f vasm${VASM_VERSION}.tar.gz ] ; then
    wget http://server.owl.de/~frank/tags/vasm${VASM_VERSION}.tar.gz
  fi
  if [ -d vasm ] ; then
    rm -Rf vasm
  fi
  tar -xvzf vasm${VASM_VERSION}.tar.gz 
  cd vasm
  make CPU=m68k SYNTAX=mot
  make CPU=m68k SYNTAX=std
  make CPU=x86 SYNTAX=std
  make CPU=ppc SYNTAX=std
  make CPU=arm SYNTAX=std
  cp vasmm68k_mot vobjdump vasmm68k_std vasmx86_std vasmppc_std vasmarm_std $HOME/bin
  cd $HOME/bin
  ln -sf vasmm68k_std m68k-amiga-vasmm68k_std
  ln -sf vasmm68k_std m68k-atari-vasmm68k_std
  ln -sf vasmm68k_std m68k-linux-vasmm68k_std
fi


