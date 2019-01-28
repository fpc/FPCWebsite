#!/usr/bin/env bash

. $HOME/bin/fpc-versions.sh

if [ -z "$FIXES" ] ; then
  FIXES=0
fi

if [ $FIXES -eq 1 ] ; then
  echo "Starting fixes snapshot"
  FPC_VER=$FIXESVERSION
  SVNDIR=$FIXESDIR
  FTP_SNAPSHOT_DIR=fixes
else
  echo "Starting trunk snapshot"
  FPC_VER=$TRUNKVERSION
  SVNDIR=$TRUNKDIR
  FTP_SNAPSHOT_DIR=trunk
fi

if [ -z "$FPC_BIN" ] ; then
  FPC_BIN=ppcppc
fi

FULL_PATH_FPC=`which $FPC_BIN 2> /dev/null`

if [ -z "$FULL_PATH_FPC" ] ; then
  export PATH=$HOME/pas/fpc-$RELEASEVERSION/bin:$PATH
fi

export FPC=~/pas/fpc-${FPC_VER}/bin/${FPC_BIN}

FPC_CPU=`$FPC -iTP`
FPC_OS=`$FPC -iTO`
FPC_FULLVER=`$FPC -iW`

FPC_OS=aix
FPC_CPUOS=${FPC_CPU}-${FPC_OS}

if [ "${PATH/${FPC_VER}//}" = "${PATH}" ] ; then
  echo "Adding ${FPC_VER} binary directory"
  export PATH=$HOME/pas/fpc-${FPC_VER}/bin:$PATH
fi

if [ -z "$MAKE" ]; then
  MAKE=` which gmake 2> /dev/null `
  if [ -z "$MAKE" ] ; then
    MAKE=make
  fi
fi


MAKE_OPTIONS="distclean singlezipinstall SNAPSHOT=1"
date=`date +%Y-%m-%d`


cd $SVNDIR


TAR=`ls -1tr ./fpc-${FPC_VER}*.${FPC_CPUOS}.tar.gz | head -1`

if [ -f "${TAR}" ] ; then
  mv -f  ${TAR} ${TAR}.old
fi

${MAKE} ${MAKE_OPTIONS} > $HOME/logs/makesnapshot-${FTP_SNAPSHOT_DIR}-${FPC_CPU}-${date}.txt 2>&1
res=$?

TAR=`ls -1tr ./fpc-${FPC_VER}*.${FPC_CPUOS}.tar.gz | head -1`

if [ -f ${TAR} ]; then
cat > readme <<EOF
This $TAR snapshot was generated ${date} using:
${MAKE} ${MAKE_OPTIONS}
started using ${FPC}
${FPC_BIN} -iVDW output is: `${FPC} -iVDW`

uname -a of the machine is:
`uname -a`

"svnversion -c ." output is: `svnversion -c .`

"svnversion -c fpcsrc" output is: `svnversion -c fpcsrc`

Enjoy,

Pierre Muller
EOF

  scp ${TAR} readme fpcftp:ftp/snapshot/$FTP_SNAPSHOT_DIR/${FPC_CPUOS}
else
  echo Failed to created ${TAR} file
fi
