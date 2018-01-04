#!/bin/bash

. $HOME/bin/fpc-versions.sh

# Latest binutils release version is
# 2.29.1 (2017/09/25)
if [ "X$BINUTILS_RELEASE" == "X" ] ; then
  BINUTILS_RELEASE=2.29.1
fi

# Latest installed Free Pascal release
# used to install generated cross-assembler/linker
FPC_RELEASE=$RELEASEVERSION

# Set DO_STRIP if you want to minimize executable size
if [ "X${DO_STRIP}" == "X" ] ; then
  DO_STRIP=0
fi

SOURCE_OS=`uname -o`
echo "SOURCE_OS=$SOURCE_OS"

# If on Cygwin/Msys system
# be sure to use i686-w64-mingw32 as host
if [ "x$SOURCE_OS" == "xCygwin" ] ; then
  EXEEXT=.exe
  export HOST=i686-w64-mingw32
elif [ "x$SOURCE_OS" == "xMsys" ] ; then
  EXEEXT=.exe
  export HOST=i686-w64-mingw32
else
  EXEEXT=
fi

# Set fpcbindir to install directory
if [ "X$fpcbindir" == "X" ] ; then
  if [[ "x$SOURCE_OS" == "xCygwin" || "x$SOURCE_OS" == "xMsys" ]] ; then
    if [ "X$HOME" != "X" ] ;then
      fpcbindir=$HOME/pas/fpc-${FPC_RELEASE}/bin/i386-win32/
    else
      fpcbindir=e:/pas/fpc-${FPC_RELEASE}/bin/i386-win32/
    fi
    # Link with -static option
    LDFLAGS="-Wl,-static"
  else
    if [ -d $HOME/bin ] ; then
      fpcbindir=$HOME/bin/
    else
      fpcbindir=$HOME/pas/fpc-${FPC_RELEASE}/bin/
    fi
  fi
fi

# Set CFLAGS variable
if [ "X$CFLAGS" != "X" ] ; then
  if [ "$CFLAGS" == " " ]; then
    LOCAL_CFLAGS=""
  else
    LOCAL_CFLAGS=CFLAGS="$CFLAGS"
  fi
else
  LOCAL_CFLAGS=CFLAGS="-gdwarf-4 -O0"
fi

# Set config_option (might have a non empty startig value)
if [ "X$HOST" != "X" ] ; then
  config_option="$config_option --host=$HOST"
else
  config_option="$config_option"
fi

# Usage function
function usage ()
{
  echo "This script requires two parameters"
  echo "param1 is the Free Pascal like prefix i386-linux"
  echo "param2 is the GNU binutils configure target option like i386-unknown-linux-gnu"
}


binutilsdir=binutils-${BINUTILS_RELEASE}
prefix=$1
target=$2

LOGFILE=../$target.log

# $1 is the file base name
# $2 can be a "-new" suffix that needs to be removed

function copytofpcbin ()
{
  file=$1
  suff=$2
  if [ -f ${file}${suff}${EXEEXT} ]; then
    rm ${file}${suff}${EXEEXT}
  fi
  if [ -f .libs/${file}${suff}${EXEEXT} ]; then
    rm .libs/${file}${suff}${EXEEXT}
  fi
  echo "Copying $file to $fpcbindir"
  make LDFLAGS="$LDFLAGS"
  if [ -f .libs/${file}${suff}${EXEEXT} ]; then
    cp .libs/${file}${suff}${EXEEXT} ${fpcbindir}${prefix}-${file}${EXEEXT}
  else
    cp ${file}${suff}${EXEEXT} ${fpcbindir}/${prefix}-${file}${EXEEXT}
  fi
  if [ $DO_STRIP -eq 1 ] ; then
    strip -p -s ${fpcbindir}/${prefix}-${file}${EXEEXT}
  fi
}

  if [ $# -lt 2 ] ; then
    usage
    exit
  fi

  if [ "$3" == "copy" ]; then
    copy_only=1
  fi

  if [ ! -d ../${binutilsdir} ] ; then
    tarfile=` cd .. ; ls -1 *${binutilsdir}* | grep -e ".*tar" -e "*gz" -e "*.bz2" -e "*.xz" | head -1 `
    if [ ! -f ../${tarfile} ] ; then
      echo "No ${binutilsdir} package found, trying to upload from ftp.gnu.org depository"
      # Should have all from 2.7 to 2.29 (somaetimes with 'a' suffix
      echo "Trying wget ftp://ftp.gnu.org/gnu/binutils/binutils-${BINUTILS_RELEASE}.tar.bz2"
      ( cd .. ; wget ftp://ftp.gnu.org/gnu/binutils/binutils-${BINUTILS_RELEASE}.tar.bz2 )
      res=$?
      if [ $res -ne 0 ] ; then
        echo "Trying wget ftp://ftp.gnu.org/gnu/binutils/binutils-${BINUTILS_RELEASE}a.tar.bz2"
        ( cd .. ; wget ftp://ftp.gnu.org/gnu/binutils/binutils-${BINUTILS_RELEASE}a.tar.bz2 )
	res=$?
      fi
      if [ $res -ne 0 ] ; then
        echo "Trying wget ftp://ftp.gnu.org/gnu/binutils/binutils-${BINUTILS_RELEASE}.tar.gz"
        ( cd .. ; wget ftp://ftp.gnu.org/gnu/binutils/binutils-${BINUTILS_RELEASE}.tar.gz )
	tarfile=`cd .. ; ls -1  binutils-${BINUTILS_RELEASE}*.tar.gz `
	taropt=z
      else
	tarfile=`cd .. ; ls -1  binutils-${BINUTILS_RELEASE}*.tar.bz2 `
	taropt=j
      fi
    fi
    tarsuffix=${tarfile//*./}
    echo "tar suffix is ${tarsuffix}"
    if [ "$tarsuffix" == "gz" ] ; then
      taropt=z
      echo "Trying gunzip $tarfile"
      (cd .. ; gunzip $tarfile )
      if [ -f ../${tarfile//.gz/} ] ; then
        tarfile=${tarfile//.gz/}
	taropt=
      fi
    elif [ "$tarsuffix" == "bz2" ] ; then
      taropt=j
      echo "Trying bzip2 -vd $tarfile"
      (cd .. ; bzip2 -vd $tarfile )
      if [ -f ../${tarfile//.bz2/} ] ; then
        tarfile=${tarfile//.bz2/}
	taropt=
      fi
    fi
    # Try to extract 
    echo "Trying to extract tarfile $tarfile"
    echo "( cd .. ; tar -x${taropt}vf $tarfile )"
    ( cd .. ; tar -x${taropt}vf $tarfile )
    res=$?
    if [ ! -d ../${binutilsdir} ] ; then
      echo "Failed to upload/untar sources for ${BINUTILS_RELEASE}"
      exit 1
    fi
  fi
  if [ ! -d ${prefix} ] ; then
    echo Creating directory ${prefix}
    mkdir ${prefix}
  fi

  cd ${prefix}
  if [ "$copy_only" == "" ]; then
    export "$LOCAL_CFLAGS"
    export LDFLAGS="${LDFLAGS}"
    ../../${binutilsdir}/configure $config_option --target=$target  --disable-intl --disable-libtool --disable-werror | tee $LOGFILE 2>&1
    make all-binutils all-gas all-ld | tee -a $LOGFILE 2>&1
  fi
  if [ -d gas ] ; then
    cd gas
    copytofpcbin as -new
    cd ..
  else
    echo "No gas directory, no new assembler generated"
  fi
  if [ -d gas ] ; then
    cd ld
    copytofpcbin ld -new
    cd ..
  else
    echo "No ld directory, no new linker generated"
  fi

  if [ -d binutils ] ; then
    cd binutils
    copytofpcbin  ar
    copytofpcbin  objdump
    copytofpcbin  readelf
    # aros also needs collect-aros, nm and strip
    if [ "X${target//aros/}" != "X$target" ] ; then
      copytofpcbin  nm
      copytofpcbin  strip -new
    fi
  else
    echo "No binutils directory"
  fi
