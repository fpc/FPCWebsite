#!/usr/bin/env bash

QEMU_VERSION="$1"
if [ -z "$QEMU_VERSION" ] ; then
  QEMU_VERSION=5.0.0
fi
if [ ! -f qemu-$QEMU_VERSION.tar.xz ] ; then
  echo "Downloading qemu version $QEMU_VERSION"
  wget https://download.qemu.org/qemu-$QEMU_VERSION.tar.xz
fi
if [ -d qemu-$QEMU_VERSION ] ; then
  rm -Rf qemu-$QEMU_VERSION
fi

echo "Unpacking qemu version $QEMU_VERSION"
tar xvJf qemu-$QEMU_VERSION.tar.xz > tar-qemu-$QEMU_VERSION.log
if [ -f qemu-$QEMU_VERSION.patch ] ; then
  cd qemu-$QEMU_VERSION
  echo "Applying patch ../qemu-$QEMU_VERSION.patch"
  patch -p 1 -i ../qemu-$QEMU_VERSION.patch
  res=$?
  if [ $res -ne 0 ] ; then
    echo "patch failed to apply cleanly, res=$res"
    cd ..
    exit
  fi
  cd ..
fi

if [ -d build-qemu-$QEMU_VERSION ] ; then
  rm -Rf build-qemu-$QEMU_VERSION
fi
mkdir build-qemu-$QEMU_VERSION
cd build-qemu-$QEMU_VERSION
export CFLAGS="-gdwarf-4 -I$HOME/gnu/include -L$HOME/gnu/lib" 
echo "Configuring qemu version $QEMU_VERSION, using CFLAGS=\"$CFLAGS\""
../qemu-$QEMU_VERSION/configure --prefix=$HOME/sys-root --enable-curses --extra-cflags="$CFLAGS"
echo "Making qemu version $QEMU_VERSION"
make > make-$QEMU_VERSION.log 2>&1
res=$?
cd ..
if [ $res -eq 0 ] ; then
  echo "Make finished OK for QEMU version $QEMU_VERSION, you can install using \"make -C ./build-qemu-$QEMU_VERSION install\""
else
  echo "make failed, res=$res, details are in ./qemu-$QEMU_VERSION/make-$QEMU_VERSION.log file"
fi

