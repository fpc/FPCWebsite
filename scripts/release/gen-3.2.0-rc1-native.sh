#!/usr/bin/env bash

release_version=3.2.0-rc1
if [ -z "$FPC" ] ; then
  FPC=fpc
fi

function set_cpu_suffix ()
{
  local cpu
  cpu="$1"
  case $cpu in
   m68k) cpu=68k ;;
   i386) cpu=386 ;;
   i8086) cpu=8086 ;;
   x86_64) cpu=x64 ;;
   aarch64) cpu=a64 ;;
   powerpc) cpu=ppc ;;
   powerpc64) cpu=ppc64 ;;
   riscv32) cpu =rv32 ;;
   risv64) cpu=rv64 ;;
  esac
  cpu_suffix=$cpu
}

target_cpu=`$FPC -iTP`
target_os=`$FPC -iTO`
set_cpu_suffix $target_cpu
target_compiler_suffix=${cpu_suffix}
target_compiler=ppc$target_compiler_suffix

start_cpu=`$FPC -iSP`
start_os=`$FPC -iSO`
set_cpu_suffix ${start_cpu}
start_compiler_suffix=$cpu_suffix
start_compiler=ppc$start_compiler_suffix

target_full=${target_cpu}-${target_os}
start_full=${start_cpu}-${start_os}

if [ -z "$MAKE" ] ; then
  MAKE=`which gmake`
fi

if [ -z "$MAKE" ] ; then
  MAKE=`which make`
fi

set -u

basedir=`pwd`
readme=$basedir/readme.${target_full}
echo "Special method used to generate ${target_full} ${release_version} distribution" > $readme

cd fpcsrc/compiler/
export PATH=$HOME/pas/fpc-3.0.4/bin:$PATH
echo "Starting with release compiler $start_compiler" >> $readme

echo "$start_compiler -iVDWSOSPTOTP:" >> $readme
$start_compiler -iVDWSOSPTOTP >> $readme

if [ "${target_full}" != "${start_full}" ] ; then
  BINUTILSPREFIX_MAKE_OPT="BINUTILSPREFIX=${start_full}-"
else
  BINUTILSPREFIX_MAKE_OPT=
fi

echo "$MAKE cycle OPT=\"-n -gl\" FPC=$start_compiler $BINUTILSPREFIX_MAKE_OPT" >> $readme
$MAKE cycle OPT="-n -gl" FPC=$start_compiler $BINUTILSPREFIX_MAKE_OPT
makeres=$?
if [ $makeres -ne 0 ] ; then
  echo "$start_full cycle failed" >> $readme
  exit
fi

echo "cp ${start_compiler} ${start_compiler}-${release_version}" >> $readme
cp ${start_compiler} ${start_compiler}-${release_version}
NEW_FPC=`pwd`/${start_compiler}-${release_version}

echo "$MAKE ${target_cpu} FPC=$NEW_FPC $BINUTILSPREFIX_MAKE_OPT" >> $readme
$MAKE ${target_cpu} FPC=$NEW_FPC $BINUTILSPREFIX_MAKE_OPT
makeres=$?
if [ $makeres -ne 0 ] ; then
  echo "$MAKE cross ${target_cpu} failed" >> $readme
  exit
fi

if [ "$target_compiler" != "$start_compiler" ] ; then
  echo "cp ./${target_compiler} ./${target_compiler}-cross-${release_version}" >> $readme
  cp ./${target_compiler} ./${target_compiler}-cross-${release_version}
  CROSS_FPC=`pwd`/${target_compiler}-cross-${release_version}
  echo "$MAKE distclean rtlclean rtl $target_cpu  FPC=$CROSS_FPC OPT=\"-n -gl\"" >> $readme
  $MAKE distclean rtlclean rtl $target_cpu  FPC=$CROSS_FPC OPT="-n -gl"
  makeres=$?
  if [ $makeres -ne 0 ] ; then
    echo "$MAKE native ${target_cpu} failed" >> $readme
    exit
  fi
fi

echo "cp ./${target_compiler} ./${target_compiler}-${release_version}" >> $readme
cp ./${target_compiler} ./${target_compiler}-${release_version}

cd $basedir

export FPC=`pwd`/fpcsrc/compiler/${target_compiler}-${release_version}
if [ ! -f doc-pdf.tar.gz ] ; then
  scp fpcftp:ftp/beta/3.2.0-rc1/docs/doc-pdf.tar.gz .
fi

echo "Running 'pyacc h2pas.y h2pas.pas' in fpcsrc/utils/h2pas"
(cd fpcsrc/utils/h2pas ; pyacc h2pas.y h2pas.pas )

echo "Starting ./install/makepack" >> $readme

./install/makepack $target_full
makepackres=$?
if [ $makepackres -ne 0 ] ; then
  echo "install/makepack ${target_full} failed" >> $readme
  exit
fi
ssh fpcftp "cd ftp/beta/${release_version} ; mkdir -p ${target_full}"

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

  scp $readme *${target_full}*.tar fpcftp:ftp/beta/${release_version}/${target_full}
else
  echo "No tar file found"
  ls -1tr *${target_full}*.tar
fi
