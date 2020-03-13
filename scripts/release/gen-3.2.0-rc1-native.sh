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
cycle_compiler=$start_compiler

FPCNAME=`basename $FPC`
if [ "${FPCNAME/fpc/}" != "$FPCNAME" ] ; then
  FPC=`$FPC -PB`
fi
if [ "${FPC/${start_compiler}/}" == "$FPC" ] ; then
  echo "$FPC and $start_compiler are not compatible"
  exit
else
  start_compiler=$FPC
fi

target_full=${target_cpu}-${target_os}
start_full=${start_cpu}-${start_os}

if [ -z "$MAKE" ] ; then
  MAKE=`which gmake 2> /dev/null`
fi

if [ -z "$MAKE" ] ; then
  MAKE=`which make 2> /dev/null`
fi

if [ -z "$NEEDED_OPT" ] ; then
  NEEDED_OPT=
fi

set -u

if [ "$target_cpu" == "sparc" ] ; then
  # echo "Running 32bit sparc fpc on sparc64 machine, needs special options"
  NATIVE_OPT32="-ao-32 -Xd -vx"
  if [ -d /lib32 ] ; then
    NATIVE_OPT32="$NATIVE_OPT32 -Fl/lib32"
  fi
  if [ -d /usr/lib32 ] ; then
    NATIVE_OPT32="$NATIVE_OPT32 -Fl/usr/lib32"
  fi
  if [ -d /usr/sparc64-linux-gnu/lib32 ] ; then
    NATIVE_OPT32="$NATIVE_OPT32 -Fl/usr/sparc64-linux-gnu/lib32"
  fi
  if [ -d /usr/local/lib32 ] ; then
    NATIVE_OPT32="$NATIVE_OPT32 -Fl/usr/local/lib32"
  fi
  if [ -d $HOME/lib32 ] ; then
    NATIVE_OPT32="$NATIVE_OPT32 -Fl$HOME/gnu/lib32"
  fi
  if [ -d $HOME/lib32 ] ; then
    NATIVE_OPT32="$NATIVE_OPT32 -Fl$HOME/lib32"
  fi
  if [ -d $HOME/local/lib32 ] ; then
    NATIVE_OPT32="$NATIVE_OPT32 -Fl$HOME/local/lib32"
  fi
  NEEDED_OPT="$NEEDED_OPT $NATIVE_OPT32"
fi

basedir=`pwd`
readme=$basedir/readme.${target_full}
echo "Special method used to generate ${target_full} ${release_version} distribution" > $readme

cyclelog=$basedir/cycle.log

cd fpcsrc/compiler/
if [ "$start_os" == "solaris" ] ; then
  if [ "$start_cpu" == "sparc" ] ; then
    export PATH=$HOME/pas/sparc/fpc-3.0.4/bin:$PATH
  elif [ "$start_cpu" == "i386" ] ; then
    export PATH=$HOME/pas/i386/fpc-3.0.4/bin:$PATH
  elif [ "$start_cpu" == "x86_64" ] ; then
    export PATH=$HOME/pas/x86_64/fpc-3.0.4/bin:$PATH
  fi
else
  export PATH=$HOME/pas/fpc-3.0.4/bin:$PATH
fi
echo "Starting with release compiler $start_compiler" >> $readme

echo "$start_compiler -iVDWSOSPTOTP:" >> $readme
$start_compiler -iVDWSOSPTOTP >> $readme

if [ "${target_full}" != "${start_full}" ] ; then
  BINUTILSPREFIX_MAKE_OPT="BINUTILSPREFIX=${start_full}-"
else
  BINUTILSPREFIX_MAKE_OPT=
fi

echo "$MAKE cycle OPT=\"-n -gl\" FPC=$start_compiler $BINUTILSPREFIX_MAKE_OPT" >> $readme
$MAKE cycle OPT="-n -gl $NEEDED_OPT" FPC=$start_compiler $BINUTILSPREFIX_MAKE_OPT > $cyclelog 2>&1
makeres=$?
if [ $makeres -ne 0 ] ; then
  echo "$start_full cycle failed" >> $readme
  exit
fi

NEW_FPC=`pwd`/${cycle_compiler}-${release_version}
echo "cp ./${cycle_compiler} $NEW_FPC" >> $readme
cp ./${cycle_compiler} $NEW_FPC

if [ "$target_compiler" != "$cycle_compiler" ] ; then
  echo "$MAKE ${target_cpu} FPC=$NEW_FPC $BINUTILSPREFIX_MAKE_OPT" >> $readme
  $MAKE ${target_cpu} FPC=$NEW_FPC $BINUTILSPREFIX_MAKE_OPT >> $cyclelog 2>&1
  makeres=$?
  if [ $makeres -ne 0 ] ; then
    echo "$MAKE cross ${target_cpu} failed" >> $readme
    exit
  fi

  echo "cp ./${target_compiler} ./${target_compiler}-cross-${release_version}" >> $readme
  cp ./${target_compiler} ./${target_compiler}-cross-${release_version}
  CROSS_FPC=`pwd`/${target_compiler}-cross-${release_version}
  echo "$MAKE distclean rtlclean rtl $target_cpu  FPC=$CROSS_FPC OPT=\"-n -gl\"" >> $readme
  $MAKE distclean rtlclean rtl $target_cpu  FPC=$CROSS_FPC OPT="-n -gl" >> $cyclelog 2>&1
  makeres=$?
  if [ $makeres -ne 0 ] ; then
    echo "$MAKE native ${target_cpu} failed" >> $readme
    exit
  fi
fi

echo "cp ./${target_compiler} ./${target_compiler}-${release_version}" >> $readme
cp -fp ./${target_compiler} ./${target_compiler}-${release_version}

cd $basedir

export FPC=`pwd`/fpcsrc/compiler/${target_compiler}-${release_version}

if [ ! -f doc-pdf.tar.gz ] ; then
  cd ..
  pdf_doc=`find . -name "doc-pdf.tar.gz" 2> /dev/null | xargs ls -1tr | head -1`
  if [ -f "$pdf_doc" ] ; then
    echo "copying $pdf_doc to $basedir"
    cp -fp "$pdf_doc" $basedir
  else
    echo "Uploading doc-pdf.tar.gz from fpcftp server to here"
    scp fpcftp:ftp/beta/$release_version/docs/doc-pdf.tar.gz .
  fi
fi

cd $basedir

echo "Running 'pyacc h2pas.y h2pas.pas' in fpcsrc/utils/h2pas"
(cd fpcsrc/utils/h2pas ; pyacc h2pas.y h2pas.pas )

export EXTRAOPT="-n -gl $NEEDED_OPT"
echo "Generated on machine: `uname -a`" >> $readme
echo "Starting ./install/makepack $target_full"
echo "Starting ./install/makepack $target_full" >> $readme
echo "with FPC=$FPC and EXTRAOPT=\"$EXTRAOPT\""
echo "with FPC=$FPC and EXTRAOPT=\"$EXTRAOPT\"" >> $readme

logfile=`pwd`/makepack-$target_full.log
bash -v ./install/makepack $target_full > $logfile 2>&1

makepackres=$?
if [ $makepackres -ne 0 ] ; then
  echo "install/makepack ${target_full} failed, logfile is $logfile"
  echo "install/makepack ${target_full} failed, logfile is $logfile" >> $readme
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
