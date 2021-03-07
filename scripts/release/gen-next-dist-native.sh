#!/usr/bin/env bash

verbose=0
check_option_arg=1

while [ $check_option_arg -eq 1 ] ; do
  check_option_arg=0
  if [ "$1" == "--verbose" ] ; then
    verbose=1
    check_option_arg=1
    shift
  fi

  # Evaluate all arguments containing an equal sign
  # as variable definition
  if [ "${1/=/_}" != "$1" ] ; then
    eval export "$1"
    check_option_arg=1
    shift
  fi
done

if [ -z "$release_version" ] ; then
  release_version=3.2.2-rc1
  release_version_last_rc=3.2.0-rc1
fi

svn_branch_name=release_${release_version//./_}
svn_branch_name=${svn_branch_name//-/_}

svn_html_base=https://svn.freepascal.org/svn/fpcbuild/tags

if [ -z "$is_beta" ] ; then
  if [ "${release_version/rc/}" != "$release_version" ] ; then
    is_beta=1
  else
    is_beta=0
  fi
fi

if [ -z "$ftpdir" ] ; then
  if [ $is_beta -eq 0 ] ; then
    ftpdir=ftp/dist/$release_version
  else
    ftpdir=ftp/beta/$release_version
  fi
fi

if [ -z "$previous_release_version" ] ; then
  previous_release_version=3.2.0
fi

if [ -z "$FPC" ] ; then
  FPC=fpc
fi

is_64bit=0
is_32bit=0

function set_cpu_suffix ()
{
  local cpu
  cpu="$1"
  case $cpu in
   alpha) cpu=alpha ; is_32bit=1 ; is_little_endian=0 ;;
   aarch64) cpu=a64 ; is_64bit=1 ; is_little_endian=1 ;;
   arm) cpu=arm ; is_32bit=1 ; is_little_endian=1 ;;
   armeb) cpu=arm ; is_32bit=1 ; is_little_endian=0 ;;
   avr) cpu=avr ; is_little_endian=1 ;;
   m68k) cpu=68k ; is_32bit=1 ; is_little_endian=0 ;;
   mips) is_32bit=1 ; is_little_endian=0 ;;
   mipsel) is_32bit=1 ; is_little_endian=1 ;;
   i386) cpu=386 ; is_32bit=1 ; is_little_endian=1 ;;
   i8086) cpu=8086 ; is_little_endian=1 ;;
   jvm) cpu=jvm ; is_32bit=1 ; is_little_endian=0 ;;
   x86_64) cpu=x64 ; is_64bit=1 ; is_little_endian=1 ;;
   powerpc) cpu=ppc ; is_32bit=1 ; is_little_endian=0 ;;
   powerpc64) cpu=ppc64 ; is_64bit=1 ; is_little_endian=0 ;;
   riscv32) cpu=rv32 ; is_32bit=1 ; is_little_endian=1 ;;
   riscv64) cpu=rv64 ; is_64bit=1 ; is_little_endian=1 ;;
   sparc) cpu=sparc ; is_32bit=1 ; is_little_endian=0 ;;
   sparc64) cpu=sparc64 ; is_64bit=1 ; is_little_endian=0 ;;
   xtensa) cpu=xtensa ; is_32bit=1 ; is_little_endian=1 ;;
   zx) cpu=zx ; is_little_endian=1 ;;
  esac
  cpu_suffix=$cpu
}

if [ -z "$target_cpu" ] ; then
  target_cpu=`$FPC -iTP`
  if [ $verbose -eq 1 ] ; then
    echo "Using target_cpu=$target_cpu from $FPC -iTP"
  fi
else
  if [ $verbose -eq 1 ] ; then
    echo "Using target_cpu=$target_cpu from environ/parameters"
  fi
fi

if [ -z "$target_os" ] ; then
  target_os=`$FPC -iTO`
fi

set_cpu_suffix $target_cpu
target_compiler_suffix=${cpu_suffix}
target_compiler=ppc$target_compiler_suffix

machine=`uname -m`

if [ "$machine" = "ppc64le" ] ; then
  is_64bit=1
  is_32bit=0
  is_little_endian=1
  ftp_target_cpu=powerpc64le
fi

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
if [ -z "${ftp_target_cpu:-}" ] ; then
  ftp_target_cpu=$target_cpu
fi

if [ -z "${ftp_target_os:-}" ] ; then
  ftp_target_os=$target_os
fi

ftp_target_full=${ftp_target_cpu}-${ftp_target_os}
start_full=${start_cpu}-${start_os}

if [ -z "$MAKE" ] ; then
  MAKE=`which gmake 2> /dev/null`
fi

if [ -z "$MAKE" ] ; then
  MAKE=`which make 2> /dev/null`
fi

if [ -z "$FIND" ] ; then
  FIND=`which gfind 2> /dev/null`
fi

if [ -z "$FIND" ] ; then
  FIND=`which find 2> /dev/null`
fi

if [ -z "$NEEDED_OPT" ] ; then
  NEEDED_OPT=
fi

set -u

if [ $is_32bit -eq 1 ] ; then
  NATIVE_OPT32=""
  if [ "$target_cpu" == "sparc" ] ; then
    if [ $verbose -eq 1 ] ; then
      echo "Running 32bit sparc fpc on sparc64 machine, needs special options"
    fi
    NATIVE_OPT32="-ao-32 -Xd -vx"
    if [ -d /usr/sparc64-linux-gnu/lib32 ] ; then
      NATIVE_OPT32="$NATIVE_OPT32 -Fl/usr/sparc64-linux-gnu/lib32"
    fi
  fi
  if [ "$target_cpu" == "powerpc" ] ; then
    if [  $verbose -ne 0 ] ;then
      echo "Running 32bit sparc fpc on sparc64 machine, needs special options"
    fi
    NATIVE_OPT32="-Xd -vx"
    if [ -d /usr/powerpc64-linux-gnu/lib32 ] ; then
      NATIVE_OPT32="$NATIVE_OPT32 -Fl/usr/powerpc64-linux-gnu/lib32"
    fi
    export BINUTILSPREFIX=powerpc-
    export NATIVE_OPT32="${NATIVE_OPT32} -Fl/usr/lib -Fl/lib -Fd"
    export FPMAKE_SKIP_CONFIG="-n -XPpowerpc-"
  fi
  if [ -d /lib32 ] ; then
    NATIVE_OPT32="$NATIVE_OPT32 -Fl/lib32"
  fi
  if [ -d /usr/lib32 ] ; then
    NATIVE_OPT32="$NATIVE_OPT32 -Fl/usr/lib32"
  fi
  libgcc_file_name=`gcc -m32 -print-libgcc-file-name 2> /dev/null`
  if [ -f "$libgcc_file_name" ] ; then
    libgcc_dirname=`dirname $libgcc_file_name 2> /dev/null`
    if [ -d "$libgcc_dirname" ] ; then
      NATIVE_OPT32="$NATIVE_OPT32 -Fl$libgcc_dirname"
    fi
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
  if [ "$target_cpu" == "sparc" ] ; then
    FPCMAKEOPT="$NEEDED_OPT"
  fi
fi

if [ $is_64bit -eq 1 ] ; then
  NATIVE_OPT64=""
  if [ "$target_cpu" == "sparc64" ] ; then
    NATIVE_OPT64="-ao-64 -Xd -vx"
    if [ -d /usr/lib/sparc64-linux-gnu ] ; then
      NATIVE_OPT64="$NATIVE_OPT64 -Fl/usr/lib/sparc64-linux-gnu"
    fi
  fi
  if [ -d /lib64 ] ; then
    NATIVE_OPT64="$NATIVE_OPT64 -Fl/lib64"
  fi
  if [ -d /usr/lib64 ] ; then
    NATIVE_OPT64="$NATIVE_OPT64 -Fl/usr/lib64"
  fi
  libgcc_file_name=`gcc -m64 -print-libgc-file-name 2> /dev/null`
  if [ -f "$libgcc_file_name" ] ; then
    libgcc_dirname=`dirname $llibgcc_file_name 2> /dev/null`
    if [ -d "$libgcc_dirname" ] ; then
      NATIVE_OPT64="$NATIVE_OPT64 -Fl$libgcc_dirname"
    fi
  fi
  if [ -d /usr/local/lib64 ] ; then
    NATIVE_OPT64="$NATIVE_OPT64 -Fl/usr/local/lib64"
  fi
  if [ -d $HOME/gnu/lib64 ] ; then
    NATIVE_OPT64="$NATIVE_OPT64 -Fl$HOME/gnu/lib64"
  fi
  if [ -d $HOME/lib64 ] ; then
    NATIVE_OPT64="$NATIVE_OPT64 -Fl$HOME/lib64"
  fi
  if [ -d $HOME/local/lib64 ] ; then
    NATIVE_OPT64="$NATIVE_OPT64 -Fl$HOME/local/lib64"
  fi
  NEEDED_OPT="$NEEDED_OPT $NATIVE_OPT64"
  if [ "$target_cpu" == "sparc64" ] ; then
    FPCMAKEOPT="$NEEDED_OPT"
  fi
fi

basedir=`pwd`

if [ -d "$svn_branch_name" ] ; then
  cd $svn_branch_name
fi

svn_version=`svnversion -c . 2> /dev/null`

if [[ ( -z "$svn_version" ) || ( "$svn_version" = "Unversioned directory" ) || ( "$svn_version" = "exported" )  ]] ; then
  cd $HOME/pas/release-build
  svn checkout $svn_html_base/$svn_branch_name
  checkout_res=$?
  if [ $checkout_res -ne 0 ] ; then
    echo "Failed to checkout $svn_branch_name"
    exit
  fi
  cd $svn_branch_name
  svn_version=`svnversion -c . 2> /dev/null`

  if [ -z "$svn_version" ] ; then
    echo "svnversion fails, aborting"
    exit
  fi
fi

basedir=`pwd`

readme=$basedir/readme.${ftp_target_full}
echo "Special method used to generate ${target_full} ${release_version} distribution" > $readme
echo "svn version is $svn_version"
echo "svn version is $svn_version" >> $readme

cyclelog=$basedir/cycle.log

cd fpcsrc/compiler/
if [ "$start_os" == "openbsd" ] ; then
  NEEDED_OPT="$NEEDED_OPT -dFPC_USE_LIBC"
elif [ "$start_os" == "solaris" ] ; then
  if [ "$start_cpu" == "sparc" ] ; then
    export PATH=$HOME/pas/sparc/fpc-${previous_release_version}/bin:$PATH
  elif [ "$start_cpu" == "i386" ] ; then
    export PATH=$HOME/pas/i386/fpc-${previous_release_version}/bin:$PATH
  elif [ "$start_cpu" == "x86_64" ] ; then
    export PATH=$HOME/pas/x86_64/fpc-${previous_release_version}/bin:$PATH
  fi
elif [[ ( "$start_os" == "linux" ) && ( "$start_cpu" == "mips" || "start_cpu" == "mipsel" ) ]] ; then
  if [ "$start_cpu" == "mips" ] ; then
    export PATH=$HOME/pas/mips/fpc-${previous_release_version}/bin:$PATH
  elif [ "$start_cpu" == "mipsel" ] ; then
    export PATH=$HOME/pas/mipsel/fpc-${previous_release_version}/bin:$PATH
  fi
else
  fpc_dir="`dirname $FPC 2> /dev/null`"
  if [ -d "$fpc_dir" ] ; then
    export PATH=$fpc_dir:$HOME/pas/fpc-${previous_release_version}/bin:$PATH
  elif [[ ( is_64bit -eq 0 ) && ( -d $HOME/pas/fpc-${previous_release_version}-32/bin ) ]] ; then
    export PATH=$HOME/pas/fpc-${previous_release_version}-32/bin:$PATH
  elif [ -d $HOME/pas/fpc-${previous_release_version}-64/bin ] ; then
    export PATH=$HOME/pas/fpc-${previous_release_version}-64/bin:$PATH
  else
    export PATH=$HOME/pas/fpc-${previous_release_version}/bin:$PATH
  fi
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
  pdf_doc=`$FIND . -name "doc-pdf.tar.gz" 2> /dev/null | xargs ls -1tr | head -1`
  if [ -f "$pdf_doc" ] ; then
    echo "copying $pdf_doc to $basedir"
    cp -fp "$pdf_doc" $basedir
  else
    ftpdocdir=${ftpdir}/docs
    echo "Uploading doc-pdf.tar.gz from fpcftp server to here"
    scp fpcftp:${ftpdocdir}/doc-pdf.tar.gz .
    scpres=$?
    if [ $scpres -ne 0 ] ; then
      ftpdocdir=ftp/beta/${release_version_last_rc}/docs
      echo "Uploading doc-pdf.tar.gz from fpcftp server to here"
      scp fpcftp:${ftpdocdir}/doc-pdf.tar.gz .
      scpres=$?
    fi
    if [ $scpres -ne 0 ] ; then
      echo "Unable to upload docs"
      exit
    fi
  fi
  echo "copying uploaded doc-pdf.tar.gz to $basedir"
  cp -fp doc-pdf.tar.gz $basedir
fi

cd $basedir

if [ -f "`which pyacc`" ] ;then
  echo "Running 'pyacc h2pas.y h2pas.pas' and 'plex ./scan.l ./scan.pas' in fpcsrc/utils/h2pas"
  (cd fpcsrc/utils/h2pas ; pyacc ./h2pas.y ./h2pas.pas ; plex ./scan.l ./scan.pas )
fi

export EXTRAOPT="-n -gl -vwx $NEEDED_OPT"
echo "Generated on machine: `uname -a`" >> $readme
echo "Starting ./install/makepack $target_full"
echo "Starting ./install/makepack $target_full" >> $readme
echo "with EXTRAOPT=\"$EXTRAOPT\""
echo "with EXTRAOPT=\"$EXTRAOPT\"" >> $readme

logfile=`pwd`/makepack-$target_full.log
( unset FPC ; bash ./install/makepack $target_full ) > $logfile 2>&1

makepackres=$?
if [ $makepackres -ne 0 ] ; then
  echo "install/makepack ${target_full} failed, logfile is $logfile"
  echo "install/makepack ${target_full} failed, logfile is $logfile" >> $readme
  exit
fi
ssh fpcftp "cd ${ftpdir} ; mkdir -p ${ftp_target_full}"

TARFILE=`ls -1tr *${target_full}*.tar | tail -1 `

if [ -f "$TARFILE" ] ; then
  if [ "${ftp_target_full}" != "${target_full}" ] ; then
    NEWTARFILE=${TARFILE//${target_full}/${ftp_target_full}}
    if [ "$TARFILE" != "$NEWTARFILE" ] ; then
      cp -f $TARFILE $NEWTARFILE
      TARFILE=$NEWTARFILE
    fi
  fi
  echo "Files $readme and $TARFILE uploaded" >> $readme
  echo "Used slightly modifed svn checkout" >> $readme
  echo "svn st -q" >> $readme
  svn st -q >> $readme
  echo "svn diff" >> $readme
  svn diff >> $readme
  echo "svn diff fpcsrc" >> $readme
  svn diff fpcsrc >> $readme

  scp $readme $TARFILE fpcftp:${ftpdir}/${ftp_target_full}/
else
  echo "No tar file found"
  ls -1tr *${target_full}*.tar
fi
