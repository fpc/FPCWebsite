#!/usr/bin/env bash

QEMU_VERSION="$1"
if [ -z "$QEMU_VERSION" ] ; then
  QEMU_VERSION=3.1.0
fi
echo "Downloading qem version $QEMU_VERSION"
wget https://download.qemu.org/qemu-$QEMU_VERSION.tar.xz
echo "Unpacking qem version $QEMU_VERSION"
tar xvJf qemu-$QEMU_VERSION.tar.xz
cd qemu-$QEMU_VERSION
echo "Configuring qem version $QEMU_VERSION"
./configure --prefix=$HOME/sys-root
echo "Making qem version $QEMU_VERSION"
make
