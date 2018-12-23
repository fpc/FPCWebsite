#!/usr/bin/env bash

. $HOME/bin/fpc-versions.sh

ENDIAN=`readelf -h /bin/sh | grep endian`

echo "ENDIAN is $ENDIAN"

if [ "${ENDIAN//big/}" != "${ENDIAN}" ] ; then
  echo " Big endian machine"
  ENDIAN=big
  FPC_CPU=powerpc64
  FPC_CPUSUF=ppc64
else
  echo "Little endian machine"
  ENDIAN=little
  FPC_CPU=powerpc64
  FPC_CPUSUF=ppc64
fi

FPC_OS=darwin
FPC_BIN=ppc${FPC_CPUSUF}
FPC_CPUOS=${FPC_CPU}-${FPC_OS}

if [ "$CURVER" == "" ]; then
  if [ "X$FIXES" == "X1" ] ; then
    export CURVER=$FIXESVERSION
    if [ -z "$SVNDIR" ] ; then
      SVNDIR=$FIXESDIR
    fi
  else
    export CURVER=3.3.1
  fi
fi
if [ -z "$SVNDIR" ] ; then
  SVNDIR=$TRUNKDIR
fi

if [ "$RELEASEVER" == "" ]; then
  # export RELEASEVER=2.6.4
  export RELEASEVER=3.0.4
fi

FPC_VER=$CURVER

export FPC=~/pas/fpc-${FPC_VER}/bin/${FPC_BIN}

if [ "${PATH/${FPC_VER}//}" = "${PATH}" ] ; then
  echo "Adding ${FPC_VER} binary directory"
  export PATH=${PATH}:~/pas/fpc-${FPC_VER}/bin
fi

echo "Adding $HOME/bin to front of PATH"
export PATH=~/bin:$PATH

MAKE=make
MAKE_OPTIONS="distclean singlezipinstall SNAPSHOT=1 NOGDB=1 DEBUG=1 NOWPOCYCLE=1"
date=`date +%Y-%m-%d`


cd $SVNDIR

cat > README-${FPC_CPUOS} <<EOF
This snapshot was generated ${date} using:
${MAKE} ${MAKE_OPTIONS}
started using ${FPC}
${FPC_BIN} -iVDW output is: `${FPC_BIN} -iVDW`

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

${MAKE} ${MAKE_OPTIONS} > makesnapshot-${FPC_CPUOS}-${date}.txt 2>&1


if [ -f ${TAR} ]; then
  scp ${TAR} README-${FPC_CPUOS} nima:logs/to_upload/to_ftp/
else
  echo Failed to created ${TAR} file
fi
