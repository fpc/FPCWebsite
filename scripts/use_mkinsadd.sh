#!/usr/bin/env bash

. $HOME/bin/fpc-versions.sh

if [ -z "$VERDIR" ] ; then
  if [ "$FIXES"  == "1" ] ; then
    VERDIR=$FIXESDIR
  else
    VERDIR=$TRUNKDIR
  fi
fi

if [ -z "$SED" ] ; then
  GSED=`which gsed 2> /dev/null`
  if [ -f "$GSED" ] ; then
    export SED="$GSED"
  else
    export SED=sed
  fi
fi


MKINSADD=`which mkinsadd`

if [ ! -f "$MKINSADD" ] ; then
  echo "mkinsadd Free Pascal utility not found!"
  exit 1
else
  echo "Using utility $MKINSADD"
fi

pkg_file_list=""

function check_target ()
{
  fpc_target_cpu=$1
  fpc_target_os=$2
  fpc_short_os=$3
  dir=$4
  dirname=`basename $dir`
  if [ "$dirname" == "packages" ] ; then
    zipprefix="--zipprefix=units-"
  else
    zipprefix=""
  fi
  $dir/fpmake pkglist --cpu=$fpc_target_cpu --target=$fpc_target_os $zipprefix
  pkglist=pkg-${fpc_target_os}.lst
  if [ -f "$pkglist" ] ; then
    cp $pkglist ${pkglist}-$dirname
    pkglist=${pkglist}-$dirname
    pkg_file_list+=" ${pkglist}"
  else
    pkglist=pkg-${fpc_target_cpu}-${fpc_target_os}.lst
    if [ -f "$pkglist" ] ; then
      cp $pkglist ${pkglist}-$dirname
      pkglist=${pkglist}-$dirname
      pkg_file_list+=" ${pkglist}"
    else
      echo "not found"
    fi
  fi
  if [ -f "$pkglist" ] ; then
    $SED "s:\.tar\.gz:.zip:g" -i $pkglist
  fi
}

cd $VERDIR
if [ -d fpcsrc ] ; then
  cd fpcsrc
  VERDIR=$VERDIR/fpcsrc
fi

check_target i386 go32v2 dos $VERDIR/packages
check_target i386 go32v2 dos $VERDIR/utils

check_target i386 emx emx $VERDIR/packages
check_target i386 emx emx $VERDIR/utils

check_target i386 os2 os2 $VERDIR/packages
check_target i386 os2 os2 $VERDIR/utils

check_target i386 win32 w32 $VERDIR/packages
check_target i386 win32 w32 $VERDIR/utils

$MKINSADD $VERDIR/installer/install.dat $pkg_file_list


