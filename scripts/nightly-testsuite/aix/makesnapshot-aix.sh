#!/usr/bin/env bash

. $HOME/bin/fpc-versions.sh

if [ -z "$FIXES" ] ; then
  FIXES=0
fi

if [ $FIXES -eq 0 ] ; then
  FPC_VER=$FIXESVERSION
  SVNDIR=$FIXESDIR
  FTP_SNAPSHOT_DIR=fixes
else
  FPC_VER=$TRUNKVERSION
  SVNDIR=$TRUNKDIR
  FTP_SNAPSHOT_DIR=trunk
fi

if [ -z "$FPC_BIN"  ; then
  FPC_BIN=ppcppc
fi

FPC_CPU=`$FPC_BIN -iTP`
FPC_OS=`$FPC_BIN -iTO`
FPC_FULLVER=`$FPC_BIN -iW`

FPC_OS=aix
FPC_CPUOS=${FPC_CPU}-${FPC_OS}

export FPC=~/pas/fpc-${FPC_VER}/bin/${FPC_BIN}

if [ "${PATH/${FPC_VER}//}" = "${PATH}" ] ; then
  echo "Adding ${FPC_VER} binary directory"
  export PATH=${PATH}:$HOME/pas/fpc-${FPC_VER}/bin
fi

MAKE=make
MAKE_OPTIONS="distclean singlezipinstall SNAPSHOT=1"
date=`date +%Y-%m-%d`


cd $SVNDIR

cat > README <<EOF
This snapshot was generated ${date} using:
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


TAR=`ls -1tr ./fpc-${FPC_VER}*.${FPC_CPUOS}.tar.gz | head -1`

if [ -f "${TAR}" ] ; then
  mv -f  ${TAR} ${TAR}.old
fi

${MAKE} ${MAKE_OPTIONS} | tee makesnapshot-${date}.txt

TAR=`ls -1tr ./fpc-${FPC_VER}*.${FPC_CPUOS}.tar.gz | head -1`

if [ -f ${TAR} ]; then
  scp ${TAR} README fpcftp:ftp/snapshot/$FTP_SNAPSHOT_DIR/${FPC_CPUOS}
else
  echo Failed to created ${TAR} file
fi
