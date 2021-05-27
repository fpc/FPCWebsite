#!/usr/bin/env bash

cd $HOME/pas

if [ -n "$1" ] ; then
  RELEASE_VERSION=$1
else
  RELEASE_VERSION=3.2.2
fi

set -u

FTP_MACHINE=fpcftp

if [ "${RELEASE_VERSION/-rc/}" != "${RELEASE_VERSION}" ] ; then
  is_beta=1
  add_symlinks=1
  FTP_BASE_DIR=ftp/beta
  RELEASE_BASE_VERSION=${RELEASE_VERSION/-rc*/}
  RCPART=${RELEASE_VERSION/$RELEASE_BASE_VERSION/}
else
  is_beta=0
  add_symlinks=0
  FTP_BASE_DIR=ftp/dist
  RELEASE_BASE_VERSION=$RELEASE_VERSION
  RCPART=""
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
  DIRNAME32=fpc-${RELEASE_VERSION/-rc/rc}.$TARGET32
  TARFILE32=${DIRNAME32}.tar
  scp -p ${FTP_MACHINE}:$FTP_BASE_DIR/$RELEASE_VERSION/$TARGET32/$TARFILE32 .
  res=$?
  if [ $res -ne 0 ] ; then
    DIRNAME32=fpc-${RELEASE_VERSION/-rc/rc}-$TARGET32
    TARFILE32=${DIRNAME32}.tar
    scp -p ${FTP_MACHINE}:$FTP_BASE_DIR/$RELEASE_VERSION/$TARGET32/$TARFILE32 .
    res=$?
  fi
  if [ $res -ne  0 ] ; then
    CPU32=""
  fi
fi

if [ -n "$CPU64" ] ; then
  TARGET64=$CPU64-$OS
  DIRNAME64=fpc-${RELEASE_VERSION/-rc/rc}.$TARGET64
  TARFILE64=${DIRNAME64}.tar
  scp -p ${FTP_MACHINE}:$FTP_BASE_DIR/$RELEASE_VERSION/$TARGET64/$TARFILE64 .
  res=$?
  if [ $res -ne 0 ] ; then
    DIRNAME64=fpc-${RELEASE_VERSION/-rc/rc}-$TARGET64
    TARFILE64=${DIRNAME64}.tar
    scp -p ${FTP_MACHINE}:$FTP_BASE_DIR/$RELEASE_VERSION/$TARGET64/$TARFILE64 .
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

# From log file:
# Writing sample configuration file to /home/muller/.fpc.cfg
# Writing sample configuration file to /home/muller/pas/fpc-3.2.2-rc1/lib/fpc/3.2.2/ide/text/fp.cfg
# Writing sample configuration file to /home/muller/pas/fpc-3.2.2-rc1/lib/fpc/3.2.2/ide/text/fp.ini
# Writing sample configuration file to /home/muller/.config/fppkg.cfg
# Writing sample configuration file to /home/muller/.fppkg/config/default

config_file_list="$HOME/.fpc.cfg $HOME/.config/fppkg.cfg $HOME/.fppkg/config/default"

function install_this ()
{
  tarfile="$1"
  dirname="$2"
  installdir="$3"
  cpu="$4"
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

for f in $config_file_list ; do
  if [ -f "$f" ] ; then
    mv -fv "$f" "$f-backup"
  elif [ -d "$f" ] ; then
    if [ -d "$f-dir_backup" ] ; then
      rm -Rf "$f-dir_backup"
    fi
    mv -fv "$f" "$f-dir_backup"
  fi
done

install_log=../install-$RELEASE_VERSION-$cpu.log
echo "Installing into $installdir, using install.sh script"

./install.sh < ./install-answers > $install_log
res=$?
if [ $res -ne 0 ] ; then
  echo "install.sh failed, res=$res, log is in $install_log"
  exit
fi
cd ..
if [ $res -eq 0 ] ; then
  rm -Rf ${dirname}
fi
for f in $config_file_list ; do
  if [[ ( -f "$f" ) || ( -d "$f" ) ]] ; then
    mv -fv "$f" "$f-$RELEASE_VERSION-$cpu"
  fi
  if [ -f "$f-backup" ] ; then
    mv -fv "$f-backup" "$f"
  elif [ -d "$f-dir_backup" ] ; then
    mv -fv "$f-dir_backup" "$f"
  fi
done
if [ $add_symlinks -eq 1 ] ; then
  ln -sf $installdir ${installdir/$RCPART/}
fi
}


PAS_BASE=$HOME/pas
same_install_base=1

if [ -d "$PAS_BASE/$CPU32" ] ; then
  PAS_BASE32=$PAS_BASE/$CPU32
  same_install_base=0
else
  PAS_BASE32=$PAS_BASE
fi

if [ -d "$PAS_BASE/$CPU64" ] ; then
  PAS_BASE64=$PAS_BASE/$CPU64
  same_install_base=0
else
  PAS_BASE64=$PAS_BASE
fi

if [[ ( -n "$CPU32" ) && ( -n "$CPU64" ) && ( $same_install_base -eq 1 ) ]] ; then
  install_this $TARFILE32 $DIRNAME32 $PAS_BASE32/fpc-$RELEASE_VERSION-32 $CPU32
  install_this $TARFILE64 $DIRNAME64 $PAS_BASE64/fpc-$RELEASE_VERSION-64 $CPU64
fi
if [ -n "$CPU32" ] ; then
  install_this $TARFILE32 $DIRNAME32 $PAS_BASE32/fpc-$RELEASE_VERSION $CPU32
fi
if [ -n "$CPU64" ] ; then
  install_this $TARFILE64 $DIRNAME64 $PAS_BASE64/fpc-$RELEASE_VERSION $CPU64 force
fi


