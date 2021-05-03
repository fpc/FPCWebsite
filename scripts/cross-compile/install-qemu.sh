#!/usr/bin/env bash

if [ -n "$1" ] ; then
  QEMU_VERSION="$1"
fi

if [ -z "$QEMU_VERSION" ] ; then
  QEMU_VERSION=6.0.0
fi

if [ ! -d $HOME/gnu/qemu ] ; then
  mkdir -p $HOME/gnu/qemu
fi

QEMU_NAME=qemu-$QEMU_VERSION

cd $HOME/gnu/qemu

if [ ! -f $QEMU_NAME.tar.xz ] ; then
  echo "Downloading qemu version $QEMU_VERSION"
  wget https://download.qemu.org/$QEMU_NAME.tar.xz
  res=$?
  if [ $res -ne 0 ] ; then
    echo "Failed to download $QEMU_NAME.tar.xz"
    exit
  fi
fi
if [ -d $QEMU_NAME ] ; then
  mv -f $QEMU_NAME prev-$QEMU_NAME
fi

echo "Unpacking qemu version $QEMU_VERSION"
tar xvJf $QEMU_NAME.tar.xz > tar-$QEMU_NAME.log
if [ -f $QEMU_NAME.patch ] ; then
  if [ -d $QEMU_NAME-ori ] ; then
    rm -Rf qemu_$QEMU_VERSION-ori
  fi
  cp -Rfp $QEMU_NAME $QEMU_NAME-ori
  cd $QEMU_NAME
  echo "Applying patch ../$QEMU_NAME.patch"
  patch -p 1 -i ../$QEMU_NAME.patch
  res=$?
  if [ $res -ne 0 ] ; then
    echo "patch failed to apply cleanly, res=$res"
    cd ..
    exit
  fi
  cd ..
  diff -urN $QEMU_NAME-ori $QEMU_NAME > $QEMU_NAME-check.patch
fi

if [ -d build-$QEMU_NAME ] ; then
  rm -Rf build-$QEMU_NAME
fi
mkdir build-$QEMU_NAME
cd build-$QEMU_NAME
export CFLAGS="-gdwarf-4"
#  -I$HOME/gnu/include -L$HOME/gnu/lib" 
echo "Configuring qemu version $QEMU_VERSION, using CFLAGS=\"$CFLAGS\""
../$QEMU_NAME/configure --prefix=$HOME/sys-root --enable-curses --extra-cflags="$CFLAGS"
echo "Making qemu version $QEMU_VERSION"
make $MAKE_OPT > make-$QEMU_VERSION.log 2>&1
res=$?
cd ..
if [ $res -eq 0 ] ; then
  echo "Make finished OK for QEMU version $QEMU_VERSION, you can install using \"make -C ./build-$QEMU_NAME install\""
else
  echo "make failed, res=$res, details are in ./$QEMU_NAME/make-$QEMU_VERSION.log file"
fi

