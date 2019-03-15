#!/usr/bin/env bash

. $HOME/bin/fpc-versions.sh

ENDIAN=`readelf -h /bin/sh | grep endian`

echo "ENDIAN is $ENDIAN"

if [ "${ENDIAN//big/}" != "${ENDIAN}" ] ; then
  echo " Big endian machine"
  ENDIAN=big
  FPC_CPU=mips
  FPC_CPUSUF=mips
else
  echo "Little endian machine"
  ENDIAN=little
  FPC_CPU=mipsel
  FPC_CPUSUF=mipsel
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


FPC_CPU=aarch64
FPC_CPUSUF=a64

FPC_OS=linux
FPC_BIN=ppc${FPC_CPUSUF}
FPC_CPUOS=${FPC_CPU}-${FPC_OS}
FPC_VER=$CURVER

export FPC=~/pas/fpc-${FPC_VER}/bin/${FPC_BIN}

if [ "${PATH/${FPC_VER}//}" = "${PATH}" ] ; then
  echo "Adding ${FPC_VER} binary directory"
  export PATH=${PATH}:~/pas/fpc-${FPC_VER}/bin
fi

MAKE=make
MAKE_OPTIONS="distclean singlezipinstall SNAPSHOT=1 DEBUG=1 NOWPOCYCLE=1"
date=`date +%Y-%m-%d`


cd $HOME/pas/$SVNDIR

cat > README <<EOF
This snapshot was generated ${date} using:
${MAKE} ${MAKE_OPTIONS}
started using ${FPC}
ppc${FPC_CPU} -iVDW output is: `${FPC} -iVDW`

uname -a of the machine is:
`uname -a`

"svnversion -c ." output is: `svnversion -c .`

"svnversion -c fpcsrc" output is: `svnversion -c fpcsrc`

Enjoy,

Pierre Muller
EOF


TAR=./fpc-${FPC_VER}.${FPC_CPUOS}.tar.gz

if [ -f ${TAR} ] ; then
  mv -f  ${TAR} ${TAR}.old
fi

${MAKE} ${MAKE_OPTIONS} | tee $HOME/logs/makesnapshot-${date}.txt


if [ -f ${TAR} ]; then
  scp ${TAR} README fpcftp:ftp/snapshot/trunk/${FPC_CPUOS}
else
  echo Failed to created ${TAR} file
fi
