#!/usr/bin/env bash

release_version=3.2.2-rc1
prev_release_version=3.2.0

target_cpu=arm
target_os=linux
target_compiler=ppcarm

start_cpu=arm
start_os=linux
start_compiler=ppcarm

linux_target_name=arm-linux-gnueabihf

target_full=${target_cpu}-${target_os}
start_full=${start_cpu}-${start_os}

if [ -z "$MAKE" ] ; then
  MAKE=make
fi

if [ -z "$is_beta" ] ; then
  if [ "${release_version/rc/}" != "$release_version" ] ; then
    is_beta=1
  else
    is_beta=0
  fi
fi

set -u

basedir=`pwd`
readme=$basedir/readme.${target_full}
echo "Special method used to generate ${target_full} ${release_version} distribution" > $readme
echo "generated `date` on `hostname` machine" >> $readme
echo "uname -a: `uname -a`" >> $readme
cd fpcsrc/compiler/
export PATH=$HOME/pas/fpc-${prev_release_version}/bin:$PATH
echo "Starting with release compiler $start_compiler" >> $readme

echo "$start_compiler -iVDWSOSPTOTP:" >> $readme
$start_compiler -iVDWSOSPTOTP >> $readme

echo "$MAKE cycle OPT=\"-n -gl -Cparmv7a\" FPC=$start_compiler BINUTILSPREFIX=${start_full}-" >> $readme
$MAKE cycle OPT="-n -gl" FPC=$start_compiler BINUTILSPREFIX=${start_full}-
makeres=$?
if [ $makeres -ne 0 ] ; then
  echo "$start_full cycle failed" >> $readme
  exit
fi

echo "cp ${start_compiler} ${start_compiler}-${release_version}" >> $readme
cp ${start_compiler} ${start_compiler}-${release_version}
cd $basedir

export FPC=`pwd`/fpcsrc/compiler/${target_compiler}-${release_version}
if [ ! -f doc-pdf.tar.gz ] ; then
  scp fpcftp:ftp/beta/3.2.0-rc1/docs/doc-pdf.tar.gz .
fi

TARGET_GCC=`find ${PATH//:/ } -regex ".*/${linux_target_name}-gcc-[0-9_.-]*" | head -1 `
if [ -f "$TARGET_GCC" ] ; then
  echo "Found gcc compiler $TARGET_GCC" >> $readme
  libgcc_name=`$TARGET_GCC -print-libgcc-file-name`
  libgcc_dir=`dirname $libgcc_name`
  GCC_OPT="-Fl$libgcc_dir"
  echo "Adding liggcc directory $libgcc_dir" >> $readme
else
  GCC_OPT=""
fi

export EXTRAOPT="-Cparmv7a -Fl/usr/${linux_target_name}/lib -Fl/lib/${linux_target_name} $GCC_OPT"
export BINUTILSPREFIX=arm-linux-

echo "Starting ./install/makepack with EXTRAOPT=\"$EXTRAOPT\" and BINUTILSPREFIX=$BINUTILSPREFIX" >> $readme

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
    echo "Failed upload new release to fpcftp:$ftpdir/${target_full}/, res=$scpres" >> $readme
  fi
else
  echo "No tar file found"
  ls -1tr *${target_full}*.tar
fi
