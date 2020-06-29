#!/usr/bin/env bash

cd $HOME/pas

set -u

RELEASE=3.2.0

OS=`uname -s | tr "[:upper:]" "[:lower:]" `
CPU=`uname -m | tr "[:upper:]" "[:lower:]" `

echo "Trying to install Free Pascal release $RELEASE on $CPU-$OS"

CPU32=""
CPU64=""

case "$CPU" in
  i*86) CPU32=i386;;
  ppc64|ppc64le) CPU32=powerpc; CPU64=powerpc64 ;;
  x86_64|amd64) CPU32=i386; CPU64=x86_64 ;;
  ppc) CPU32=powerpc;;
  aarch64|arm64) CPU32=arm ; CPU64=aarch64 ;;
  arm*) CPU32=arm;;
  mipsel*) CPU32=mipsel;;
  mips*) CPU32=mips;;
  m68k) CPU32=m68k;;
  *) echo "Unknown processor $CPU" ; exit ;;
esac


if [ -n "$CPU32" ] ; then
  TARGET32=$CPU32-$OS
  DIRNAME32=fpc-$RELEASE.$TARGET32
  TARFILE32=$DIRNAME32.tar
  scp -p fpcftp:ftp/dist/$RELEASE/$TARGET32/$TARFILE32 .
  res=$?
  if [ $res -ne 0 ] ; then
    DIRNAME32=fpc-$RELEASE-$TARGET32
    TARFILE32=$DIRNAME32.tar
    scp -p fpcftp:ftp/dist/$RELEASE/$TARGET32/$TARFILE32 .
    res=$?
  fi
  if [ $res -ne  0 ] ; then
    CPU32=""
  fi
fi

if [ -n "$CPU64" ] ; then
  TARGET64=$CPU64-$OS
  DIRNAME64=fpc-$RELEASE.$TARGET64
  TARFILE64=$DIRNAME64.tar
  scp -p fpcftp:ftp/dist/$RELEASE/$TARGET64/$TARFILE64 .
  res=$?
  if [ $res -ne 0 ] ; then
    DIRNAME64=fpc-$RELEASE-$TARGET64
    TARFILE64=$DIRNAME64.tar
    scp -p fpcftp:ftp/dist/$RELEASE/$TARGET64/$TARFILE64 .
    res=$?
  fi
  if [ $res -ne 0 ] ; then
    CPU64=""
  fi
fi

function install_this ()
{
  tarfile=$1
  dirname=$2
  installdir=$3
  echo "Unpacking $tarfile"
  tar -xvf $tarfile 
  if [ ! -d "$dirname" ] ; then
    echo "Directory $dirname not found"
    return
  fi
  echo "Moving to $dirname"
  cd $dirname
  cat > install-answers <<HERE
$installdir







HERE
./install.sh < ./install-answers > ./install.log
res=$?
if [ $res -ne 0 ] ; then
  echo "install.sh failed, res=$res, log is in `pwd`/install.log"
  exit
fi
cd ..
if [ $res -eq 0 ] ; then
  rm -Rf ${dirname}
fi
}

if [[ ( -n "$CPU32" ) && ( -n "$CPU64" ) ]] ; then
  install_this $TARFILE32 $DIRNAME32 $HOME/pas/fpc-$RELEASE-32
  install_this $TARFILE64 $DIRNAME64 $HOME/pas/fpc-$RELEASE-64
fi
if [ -n "$CPU32" ] ; then
  install_this $TARFILE32 $DIRNAME32 $HOME/pas/fpc-$RELEASE
fi
if [ -n "$CPU64" ] ; then
  install_this $TARFILE64 $DIRNAME64 $HOME/pas/fpc-$RELEASE
fi


