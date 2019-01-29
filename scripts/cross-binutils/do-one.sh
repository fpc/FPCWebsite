#!/bin/bash

. $HOME/bin/fpc-versions.sh

# Latest binutils release version is
# 2.30 (20i8/01/28)
if [ "X$BINUTILS_RELEASE" == "X" ] ; then
  BINUTILS_RELEASE=2.31.1
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

if [ "x$SOURCE_OS" == "xAIX" ] ; then
  DEBUG_OPT=-g
else
  DEBUG_OPT=-gdwarf-4
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
  LOCAL_CFLAGS=CFLAGS="$DEBUG_OPT -O0"
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
  echo "$0 param1 param2 [--copy | --new-only]"
  echo "This script requires two parameters"
  echo "param1 is the Free Pascal BINUTILS prefix (like i386-linux)"
  echo "param2 is the GNU binutils configure --target option (like i386-unknown-linux-gnu)"
  echo "Optional --copy parameter means only copy existing files to destination binary directory"
  echo "Optional --new-only parameter means skip if cross-assembler is already in destination directory"
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
  makeres=$?
  if [ $makeres -eq 0 ] ; then
    if [ -f ${fpcbindir}/${prefix}-${file}${EXEEXT} ] ; then
      if [ ! -d ${fpcbindir}/prev-binutils ] ; then
        mkdir ${fpcbindir}/prev-binutils
      fi
      mv ${fpcbindir}/${prefix}-${file}${EXEEXT} ${fpcbindir}/prev-binutils
    fi
    if [ -f .libs/${file}${suff}${EXEEXT} ]; then
      cp .libs/${file}${suff}${EXEEXT} ${fpcbindir}${prefix}-${file}${EXEEXT}
    else
      cp ${file}${suff}${EXEEXT} ${fpcbindir}/${prefix}-${file}${EXEEXT}
    fi
    if [ $DO_STRIP -eq 1 ] ; then
      strip -p -s ${fpcbindir}/${prefix}-${file}${EXEEXT}
    fi
  fi
}

  if [ $# -lt 2 ] ; then
    usage
    exit
  fi

  copy_only=$BINUTILS_COPY_ONLY
  if [ "$3" == "--copy" ]; then
    copy_only=1
  fi

  new_only=$BINUTILS_NEW_ONLY
  if [ "$3" == "--new-only" ]; then
    new_only=1
  fi

  if [ "$new_only" == "1" ] ; then
    if [ -f "${fpcbindir}/${prefix}-as" ] ; then
      echo "File ${fpcbindir}/${prefix}-as found, skipping ${prefix} target"
      exit
    fi
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
      echo "Trying bunzip2 -vfd $tarfile"
      (cd .. ; bunzip2 -vfd $tarfile )
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
    ../../${binutilsdir}/configure $config_option --target=$target --with-sysroot --disable-intl --disable-libtool --disable-werror | tee $LOGFILE 2>&1
    configres=$?
    if [ $configres -ne 0 ] ; then
      echo "Configure failed, trying to erase build directory content before second try"
      cd ..
      rm -Rf ${prefix}
      mkdir -p ${prefix}
      cd ${prefix}
      ../../${binutilsdir}/configure $config_option --target=$target --with-sysroot --disable-intl --disable-libtool --disable-werror | tee $LOGFILE 2>&1
      configres=$?
    fi
    make all-binutils all-gas all-ld | tee -a $LOGFILE 2>&1
  fi
  if [ -d gas ] ; then
    cd gas
    copytofpcbin as -new
    cd ..
  else
    echo "No gas directory, no new assembler generated"
  fi
  if [ -d ld ] ; then
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
    # avr also needs objcopy
    if [ "X${target//avr/}" != "X$target" ] ; then
      copytofpcbin  objcopy
    fi
    copytofpcbin  readelf
    copytofpcbin  strip -new
    # aros also needs collect-aros, nm and strip
    if [ "X${target//aros/}" != "X$target" ] ; then
      copytofpcbin  nm -new
    fi
  else
    echo "No binutils directory"
  fi
