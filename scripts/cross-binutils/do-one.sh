#!/usr/bin/env bash

. $HOME/bin/fpc-versions.sh

# Latest binutils release version is 2.36 (2021/01/24)
if [ "X$BINUTILS_RELEASE" == "X" ] ; then
  BINUTILS_RELEASE=2.36
fi

BINUTILS_2_36_BZ2_MD5SUM=4009acf0f62bab6696bc87b3370953fa
BINUTILS_2_35_2_BZ2_MD5SUM=5ef92bfbfac46a8457ed2865a0588e9e
BINUTILS_2_35_1_BZ2_MD5SUM=bca600eea3b8fc33ad3265c9c1eee8d4
BINUTILS_2_35_BZ2_MD5SUM=f5ee1b8aab816dce3badf8513be6dd75
BINUTILS_2_34_BZ2_MD5SUM=b0afc4d29db31ee6fdf3ebc34e85e482
BINUTILS_2_33_1_BZ2_MD5SUM=56a3be5f8f8ee874417a4f19ef3f10c8
BINUTILS_2_32_BZ2_MD5SUM=64f8ea283e571200f8b2b7f66fe8a0d6

# Latest installed Free Pascal release
# used to install generated cross-assembler/linker
FPC_RELEASE=$RELEASEVERSION

# Set DO_STRIP if you want to minimize executable size
if [ "X${DO_STRIP}" == "X" ] ; then
  DO_STRIP=0
fi

SOURCE_OS=`uname -o 2> /dev/null`
if [ -z "$SOURCE_OS" ] ; then
  SOURCE_OS=`uname -s`
fi

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
    LOCAL_CFLAGS=CFLAGS="$CFLAGS $ADD_CFLAGS"
  fi
else
  LOCAL_CFLAGS=CFLAGS="$DEBUG_OPT -O0 $ADD_CFLAGS"
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

if [ -n "DO_ONE_PREFIX_PATTERN" ] ; then
  prefix_matches=` echo $prefix | grep "$DO_ONE_PREFIX_PATTERN"`
  if [ -z "$prefix_matches" ] ; then
    echo "prefix $prefix does not match $DO_ONE_PREFIX_PATTERN, skipping"
    exit
  fi
fi

if [ -d "$HOME/sys-root/$prefix" ] ; then
  USE_SYSROOT="=$HOME/sys-root/$prefix"
  echo "Using sysroot: $USE_SYSROOT"
else
  USE_SYSROOT=""
fi

target=$2
if [ -n "DO_ONE_TARGET_PATTERN" ] ; then
  target_matches=` echo $target | grep "$DO_ONE_TARGET_PATTERN"`
  if [ -z "$target_matches" ] ; then
    echo "target $target does not match $DO_ONE_TARGET_PATTERN, skipping"
    exit
  fi
fi


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

  patchfile=""
  if [ ! -d ../${binutilsdir} ] ; then
    tarfile=` cd .. ; ls -1 *${binutilsdir}* | grep -e "*\.tar" -e "*gz" -e "*\.bz2" -e "*\.xz" | head -1 `
    if [ ! -f ../${tarfile} ] ; then
      difffile=` cd .. ; ls -1t *${binutilsdir}* | grep -e "\.patch" -e "\.diff" | head -1 `
      if [ -f "../${difffile}" ] ; then
        echo "File ../${difffile} found"
	BINUTILS_RELEASE=${BINUTILS_RELEASE/-*/}
        echo "Looking for release version $BINUTILS_RELEASE"
        binutilsdir_off=binutils-${BINUTILS_RELEASE}
        tarfile=` cd .. ; ls -1 *${binutilsdir_off}* | grep -e "*\.tar" -e "*gz" -e "*\.bz2" -e "*\.xz" | head -1 `
	if [ -d "${binutilsdir_off}" ] ; then
          cp -Rpf  ${binutilsdir_off} ${binutilsdir}
          echo "Applying patch file ${difffile} to ../${binutilsdir}"
	  ( cd ../${binutilsdir} ; patch -p 1 -i ../${difffile} )
	else
	  patchfile=${difffile}
	  binutilsdir_local=$binutilsdir
	  binutilsdir=${binutilsdir_off}
	fi
      fi
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
      MD5SUM=BINUTILS_${BINUTILS_RELEASE//./_}_BZ2_MD5SUM
      MD5SUM_VAL=${!MD5SUM:-}
      if  [ -n "${MD5SUM_VAL}" ] ; then
        MD5SUM=`which md5sum 2> /dev/null`
        AWK=`which gawk 2> /dev/null`
	if [ -z "$AWK" ] ; then
	  AWK=`which awk 2> /dev/null`
	fi
	if [ -n "$MD5SUM" ] ; then
          if [ -n "$GAWK" ] ; then
            md5val=`$MD5SUM ../$tarfile | $AWK '{print $1;}' `
            if [ "$md5val" != "$MD5SUM_VAL" ] ; then
	      echo "Wrong md5sum control value: expected $MD5SUM_VAL, got $md5val"
	      exit
            fi
          fi
        fi
      fi
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
    if [ -f "../${patchfile}" ] ; then
      echo "Copying ${binutilsdir} to ../${binutilsdir_local}"
      cp -Rpf  ../${binutilsdir} ../${binutilsdir_local}
      binutilsdir=${binutilsdir_local}
      echo "Applying patch file ${patchfile} to ../${binutilsdir}"
      ( cd ../${binutilsdir} ; patch -p 1 -i ../${patchfile} )
    fi
  fi
  if [ ! -d ${prefix} ] ; then
    echo Creating directory ${prefix}
    mkdir ${prefix}
  fi

  cd ${prefix}
  if [ -z "$copy_only" ]; then
    export "$LOCAL_CFLAGS"
    export LDFLAGS="${LDFLAGS}"
    echo "Starting: ../../${binutilsdir}/configure $config_option --target=$target --with-sysroot$USE_SYSROOT --disable-intl --disable-libtool --disable-werror"
    ../../${binutilsdir}/configure $config_option --target=$target --with-sysroot$USE_SYSROOT --disable-intl --disable-libtool --disable-werror 2>&1 | tee $LOGFILE
    configres=$?
    if [ $configres -ne 0 ] ; then
      echo "Configure failed, trying to erase build directory content before second try"
      cd ..
      rm -Rf ${prefix}
      mkdir -p ${prefix}
      cd ${prefix}
      ../../${binutilsdir}/configure $config_option --target=$target --with-sysroot$USE_SYSROOT --disable-intl --disable-libtool --disable-werror 2>&1 | tee $LOGFILE
      configres=$?
    fi
    make all-binutils all-gas all-ld 2>&1 | tee -a $LOGFILE
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
