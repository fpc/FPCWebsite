#!/usr/bin/env bash

QEMU_VERSION="$1"
if [ -z "$QEMU_VERSION" ] ; then
  QEMU_VERSION=4.1.0
fi
if [ ! -f qemu-$QEMU_VERSION.tar.xz ] ; then
  echo "Downloading qemu version $QEMU_VERSION"
  wget https://download.qemu.org/qemu-$QEMU_VERSION.tar.xz
fi
if [ -d qemu-$QEMU_VERSION ] ; then
  rm -Rf qemu-$QEMU_VERSION
fi

echo "Unpacking qemu version $QEMU_VERSION"
tar xvJf qemu-$QEMU_VERSION.tar.xz
cd qemu-$QEMU_VERSION
echo "Configuring qemu version $QEMU_VERSION"
export CFLAGS="-gdwarf-4 -I$HOME/gnu/include -L$HOMR/gnu/lib" 
./configure --prefix=$HOME/sys-root --enable-curses --extra-cflags="$CFLAGS"
echo "Making qemu version $QEMU_VERSION"
make
res=$?

if [ $res -eq 0 ] ; then
  echo "Make finished OK, you can install using \"make install\""
fi

