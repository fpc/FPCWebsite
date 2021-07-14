#!/usr/bin/env bash

# Huge collection of things to install
# on a bare virtual machine with huge disk space

cd $HOME

if [ -z "${NASM_VERSION:-}" ] ; then
  NASM_VERSION=2.15.05
fi

recompile=0
if [ ! -f $HOME/bin/nasm ] ; then
  recompile=1
else
  installed_nasm_version=`$HOME/bin/nasm --version`
  if [ "${installed_nasm_version/${NASM_VERSION}/}" == "${installed_nasm_version}" ] ; then
    echo "Installed nasm: $installed_nasm_version is different from wanted version $NASM_VERSION"
    recompile=1
  fi
fi

function recompile_nasm ()
{
  cd $HOME/gnu
  if [ ! -d nasm ] ; then
    mkdir nasm
  fi

  cd nasm

  NASM_SRC=nasm-$NASM_VERSION.tar.gz
  wget https://www.nasm.us/pub/nasm/releasebuilds/$NASM_VERSION/$NASM_SRC
  res=$?
  if [ $res -ne 0 ] ; then
    echo "wget failed to download file $NASM_SRC"
    return
  fi
  tar -xvzf $NASM_SRC
  res=$?
  if [ $res -ne 0 ] ; then
    echo "tar failed to untar file $NASM_SRC"
    return
  fi

  cd nasm-$NASM_VERSION
  ./configure --prefix=$HOME/gnu
  res=$?
  if [ $res -ne 0 ] ; then
    echo "configure failed for $NASM_SRC"
    return
  fi

  make all install
  res=$?
  if [ $res -ne 0 ] ; then
    echo "'make all install' failed for $NASM_SRC"
    return
  fi
}

if [  $recompile -eq 1 ] ; then
  recompile_nasm
fi

cd $HOME/bin
ln -sf $HOME/gnu/bin/nasm nasm
nasm_prefix_list="i8086-msdos i8086-embedded i8086-win16 i386-go32v2 i386-win32 i386-linux i386-embedded"

for pref in $nasm_prefix_list ; do
  if [ ! -L "$pref-nasm" ] ; then
    if [ ! -f "$pref-nasm" ] ; then
      ln -s nasm $pref-nasm
    fi
  fi
done


