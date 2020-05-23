#!/usr/bin/env bash

release_version=3.2.0
is_beta=0
prev_release_version=3.0.4

target_cpu=aarch64
target_os=linux
target_compiler=ppca64

start_cpu=arm
start_os=linux
start_compiler=ppcarm

target_full=${target_cpu}-${target_os}
start_full=${start_cpu}-${start_os}

if [ -z "$MAKE" ] ; then
  MAKE=make
fi

set -u

basedir=`pwd`
readme=$basedir/readme.${target_full}
echo "Special method used to generate ${target_full} ${release_version} distribution" > $readme

cd fpcsrc/compiler/
export PATH=$HOME/pas/fpc-${prev_release_version}/bin:$PATH
echo "Starting with release compiler $start_compiler" >> $readme

echo "$start_compiler -iVDWSOSPTOTP:" >> $readme
$start_compiler -iVDWSOSPTOTP >> $readme

echo "$MAKE cycle OPT=\"-n -gl\" FPC=$start_compiler BINUTILSPREFIX=${start_full}-" >> $readme
$MAKE cycle OPT="-n -gl" FPC=$start_compiler BINUTILSPREFIX=${start_full}-
makeres=$?
if [ $makeres -ne 0 ] ; then
  echo "$start_full cycle failed" >> $readme
  exit
fi

echo "cp ${start_compiler} ${start_compiler}-${release_version}" >> $readme
cp ${start_compiler} ${start_compiler}-${release_version}
NEW_FPC=`pwd`/ppcarm-${release_version}
echo "$MAKE ${target_cpu} FPC=$NEW_FPC" >> $readme
$MAKE ${target_cpu} FPC=$NEW_FPC
makeres=$?
if [ $makeres -ne 0 ] ; then
  echo "$MAKE cross ${target_cpu} failed" >> $readme
  exit
fi

echo "cp ./${target_compiler} ./${target_compiler}-cross-${release_version}" >> $readme
cp ./${target_compiler} ./${target_compiler}-cross-${release_version}
CROSS_FPC=`pwd`/${target_compiler}-cross-${release_version}
echo "$MAKE distclean rtlclean rtl aarch64  FPC=$CROSS_FPC OPT=\"-n -gl\"" >> $readme
$MAKE distclean rtlclean rtl aarch64  FPC=$CROSS_FPC OPT="-n -gl"
makeres=$?
if [ $makeres -ne 0 ] ; then
  echo "$MAKE native ${target_cpu} failed" >> $readme
  exit
fi


echo "cp ./${target_compiler} ./${target_compiler}-${release_version}" >> $readme
cp ./${target_compiler} ./${target_compiler}-${release_version}

cd $basedir

export FPC=`pwd`/fpcsrc/compiler/${target_compiler}-${release_version}
if [ ! -f doc-pdf.tar.gz ] ; then
  scp fpcftp:ftp/beta/3.2.0-rc1/docs/doc-pdf.tar.gz .
fi

echo "Starting ./install/makepack" >> $readme

./install/makepack
makepackres=$?
if [ $makepackres -ne 0 ] ; then
  echo "install/makepack ${target_cpu} failed" >> $readme
  exit
fi
if [ $is_beta -eq 1 ] ; then
  ftpdir=ftp/beta/${release_version}
else
  ftpdir=ftp/dist/${release_version}
fi
ssh fpcftp "cd $ftpdir ; mkdir -p ${target_full}"

TARFILE=`ls -1tr *${target_full}*.tar | tail -1 `

if [ -f "$TARFILE" ] ; then
  echo "Files $readme and $TARFILE uploaded" >> $readme
  echo "Used slightly modifed svn checkout" >> $readme
  echo "svn st -q" >> $readme
  svn st -q >> $readme
  echo "svn diff" >> $readme
  svn diff >> $readme
  echo "svn diff fpcsrc" >> $readme
  svn diff fpcsrc >> $readme

  scp $readme *${target_full}*.tar fpcftp:$ftpdir/${target_full}/
  scpres=$?
  if [ $scpres -eq 0 ] ; then
    echo "Successfully uploaded new release to fpcftp:$ftpdir/${target_full}/"
  else
    echo "Failed upload new release to fpcftp:$ftpdir/${target_full}/i, res=$scpres" >> $readme
  fi
else
  echo "No tar file found"
  ls -1tr *${target_full}*.tar
fi
