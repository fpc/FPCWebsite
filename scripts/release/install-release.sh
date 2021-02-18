#!/usr/bin/env bash

cd $HOME/pas

set -u

if [ -n "$1" ] ; then
  RELEASE_VERSION=$1
else
  RELEASE_VERSION=3.2.2
fi

$FTP_MACHINE=fpcftp

if ["${RELEASE__VERSION/rc/}" != "${RELEASE_VERSION}" ] ; then
  is_beta=1
  FTP_BASE_DIR=ftp/beta
else
  is_beta=0
  FTP_BASE_DIR=ftp/dist
fi

OS=`uname -s | tr "[:upper:]" "[:lower:]" `
CPU=`uname -m | tr "[:upper:]" "[:lower:]" `

echo "Trying to install Free Pascal release $RELEASE_VERSION on $CPU-$OS"

CPU32=""
CPU64=""

case "$CPU" in
  i*86) CPU32=i386;;
  ppc64le|powerpc64le) CPU64=powerpc64le;;
  ppc64|powerpc64) CPU32=powerpc; CPU64=powerpc64;;
  x86_64|amd64) CPU32=i386; CPU64=x86_64;;
  ppc*|powerpc*) CPU32=powerpc;;
  aarch64|arm64) CPU32=arm; CPU64=aarch64;;
  arm*) CPU32=arm;;
  mipsel*) CPU32=mipsel;;
  mips*) CPU32=mips;;
  m68k) CPU32=m68k;;
  sparc64) CPU32=sparc; CPU64=sparc64;;
  sparc) CPU32=sparc;;
  *) echo "Unknown processor $CPU" ; exit ;;
esac


if [ -n "$CPU32" ] ; then
  TARGET32=$CPU32-$OS
  DIRNAME32=fpc-$RELEASE_VERSION.$TARGET32
  TARFILE32=$DIRNAME32.tar
  scp -p ${FTP_MACHINE}:$FTP_BASE_DIR/$RELEASE_VERSION/$TARGET32/$TARFILE32 .
  res=$?
  if [ $res -ne 0 ] ; then
    DIRNAME32=fpc-$RELEASE_VERSION-$TARGET32
    TARFILE32=$DIRNAME32.tar
    scp -p ${FTP_MACHINE}/$FTP_BASE_DIR/$RELEASE_VERSION/$TARGET32/$TARFILE32 .
    res=$?
  fi
  if [ $res -ne  0 ] ; then
    CPU32=""
  fi
fi

if [ -n "$CPU64" ] ; then
  TARGET64=$CPU64-$OS
  DIRNAME64=fpc-$RELEASE_VERSION.$TARGET64
  TARFILE64=$DIRNAME64.tar
  scp -p ${FTP_MACHINE}/$FTP_BASE_DIR/$RELEASE_VERSION/$TARGET64/$TARFILE64 .
  res=$?
  if [ $res -ne 0 ] ; then
    DIRNAME64=fpc-$RELEASE_VERSION-$TARGET64
    TARFILE64=$DIRNAME64.tar
    scp -p ${FTP_MACHINE}/$FTP_BASE_DIR/$RELEASE_VERSION/$TARGET64/$TARFILE64 .
    res=$?
  fi
  if [ $res -ne 0 ] ; then
    CPU64=""
  fi
fi

if [[ ( -z "$CPU32" ) && ( -z "$CPU64" ) ]] ; then
  echo "No installation file found in ${FTP_MACHINE}:$FTP_BASE_DIR"
  exit
fi

function install_this ()
{
  tarfile="$1"
  dirname="$2"
  installdir="$3"
  force=${4:-}
  if [[ ( -d "$installdir" ) && ( -z "$force" ) ]] ; then
    echo "Directory $installdir already exists, skipping"
    return
  fi
  echo "Unpacking $tarfile in $installdir"
  tar -xvf $tarfile 
  if [ ! -d "$dirname" ] ; then
    altdirname=${dirname/le/}
    if [ -d "$altdirname" ] ; then
      dirname="$altdirname"
    else
      echo "Directory $dirname not found"
      return
    fi
  fi
  echo "Moving to $dirname"
  cd $dirname
  cat > install-answers <<HERE
$installdir







HERE
echo "Installing into $installdir, using install.sh script"
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
  install_this $TARFILE32 $DIRNAME32 $HOME/pas/fpc-$RELEASE_VERSION-32
  install_this $TARFILE64 $DIRNAME64 $HOME/pas/fpc-$RELEASE_VERSION-64
fi
if [ -n "$CPU32" ] ; then
  install_this $TARFILE32 $DIRNAME32 $HOME/pas/fpc-$RELEASE_VERSION
fi
if [ -n "$CPU64" ] ; then
  install_this $TARFILE64 $DIRNAME64 $HOME/pas/fpc-$RELEASE_VERSION force
fi


