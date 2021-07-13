#!/usr/bin/env bash

. $HOME/bin/fpc-versions.sh

ENDIAN=`readelf -h /bin/sh | grep endian`

echo "ENDIAN is $ENDIAN"

if [ "${ENDIAN//big/}" != "${ENDIAN}" ] ; then
  echo " Big endian machine"
  ENDIAN=big
else
  echo "Little endian machine"
  ENDIAN=little
fi

if [ -z "$FIXES" ] ; then
  export FIXES=0
fi

if [ $FIXES -eq 1 ] ; then
  if [ "$CURVER" == "" ]; then
    export CURVER=$FIXESVERSION
  fi
  if [ "$SVNDIR" == "" ]; then
    export SVNDIR=$FIXESDIRNAME
  fi
else
  if [ "$CURVER" == "" ]; then
    export CURVER=$TRUNKVERSION
  fi
  if [ "$SVNDIR" == "" ]; then
    export SVNDIR=$TRUNKDIRNAME
  fi
fi


if [ "${SVNDIR/fixes/}" != "${SVNDIR}" ] ; then
  FTP_SVNDIR=fixes
else
  FTP_SVNDIR=$SVNDIR
fi

if [ -z "$FPC_CPU" ] ; then
  FPC_CPU=aarch64
fi
if [ "$FPC_CPU" == "aarch64" ] ; then
  FPC_CPUSUF=a64
  INSTALL_SUFFIX=""
elif [ "$FPC_CPU" == "arm" ] ; then
  FPC_CPUSUF=arm
  LOGSUF=-32
  INSTALL_SUFFIX=-32
  if [ -z "$ARM_ABI" ] ; then
    export ARM_ABI=gnueabihf
  fi  
  if [ -z "$REQUIRED_ARM_OPT" ] ; then
    export REQUIRED_ARM_OPT="-dFPC_ARMHF -Cparmv7a"
  fi
  export TEST_BINUTILSPREFIX=arm-linux-
  export BINUTILSPREFIX=arm-linux-
  export OPT="${OPT} -Xd"
  export TEST_ABI=$ARM_ABI
  gcc_version=` gcc --version | grep '^gcc' | gawk '{print $NF;}' | sed -n "s:\([0-9.]*\).*:\1:p" ` 
  if [ -d /usr/lib/gcc-cross/arm-linux-$ARM_ABI/$gcc_version ] ; then
    export OPT="$OPT -Fl/usr/lib/gcc-cross/arm-linux-$ARM_ABI/$gcc_version"
  elif [ -d $HOME/sys-root/arm-linux/usr/lib/gcc-cross/arm-linux-$ARM_ABI/$gcc_version ] ; then
    export OPT="$OPT -Fl$HOME/sys-root/arm-linux/usr/lib/gcc-cross/arm-linux-$ARM_ABI/$gcc_version"
  fi
  if [ -d "/usr/arm-linux-$ARM_ABI/lib" ] ; then
    export REQUIRED_ARM_OPT="$REQUIRED_ARM_OPT -Fl/usr/arm-linux-$ARM_ABI/lib"
  elif [ -d "$HOME/sys-root/arm-linux/usr/arm-linux-$ARM_ABI/lib" ] ; then
    export REQUIRED_ARM_OPT="$REQUIRED_ARM_OPT -Fl$HOME/sys-root/arm-linux/usr/arm-linux-$ARM_ABI/lib"
  fi
  if [ -n "$REQUIRED_ARM_OPT" ] ; then
    export OPT="$OPT $REQUIRED_ARM_OPT"
  fi
  export FPCMAKEOPT="-gl -XParm-linux- $REQUIRED_ARM_OPT"
else
  echo "Unsupported CPU $FPC_CPU"
  exit
fi

FPC_OS=linux
FPC_BIN=ppc${FPC_CPUSUF}
FPC_CPUOS=${FPC_CPU}-${FPC_OS}
FPC_VER=$CURVER

export FPC=~/pas/fpc-${FPC_VER}${INSTALL_SUFFIX}/bin/${FPC_BIN}

if [ "${PATH/${FPC_VER}${INSTALL_SUFFIX}//}" = "${PATH}" ] ; then
  echo "Adding ${HOME}/pas/fpc-${FPC_VER}${INSTALL_SUFFIX} binary directory"
  export PATH=${PATH}:${HOME}/pas/fpc-${FPC_VER}${INSTALL_SUFFIX}/bin
fi

MAKE=make
MAKE_OPTIONS="distclean singlezipinstall SNAPSHOT=1 DEBUG=1 NOWPOCYCLE=1"
date=`date +%Y-%m-%d`


cd $HOME/pas/$SVNDIR

cat > README-${FPC_CPUOS} <<EOF
This snapshot was generated ${date} using:
${MAKE} ${MAKE_OPTIONS} OPT="$OPT" FPCMAKEOPT="$FPCMAKEOPT"
started using ${FPC}
${FPC_BIN} -iVDW output is: `${FPC} -iVDW`

uname -a of the machine is:
`uname -a`

"svnversion -c ." output is: `svnversion -c .`

"svnversion -c fpcsrc" output is: `svnversion -c fpcsrc`

Enjoy,

Pierre Muller
EOF


TAR=`ls -t1 ./fpc-${FPC_VER}*.${FPC_CPUOS}.tar.gz | head -1 `

if [ -f "${TAR}" ] ; then
  mv -f  "${TAR}" "${TAR}.old"
fi

${MAKE} ${MAKE_OPTIONS} OPT="$OPT" FPCMAKEOPT="$FPCMAKEOPT" | tee $HOME/logs/${SVNDIR}/makesnapshot-${FPC_CPUOS}-${date}.txt

TAR=`ls -t1 ./fpc-${FPC_VER}*.${FPC_CPUOS}.tar.gz | head -1 `

if [[ ( -n "${TAR}" ) && ( -f "${TAR}" ) ]]; then
  scp ${TAR} README-${FPC_CPUOS} fpcftp:ftp/snapshot/${FTP_SVNDIR}/${FPC_CPUOS}/
  res=$?
  if [ $res -ne 0 ] ; then
    echo "Error uploading ${TAR} for ${FTP_SVNDIR}"
  fi
else
  echo "Failed to create ./fpc-${FPC_VER}*.${FPC_CPUOS}.tar.gz file"
fi
