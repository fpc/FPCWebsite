#!/usr/bin/env bash

. $HOME/bin/fpc-versions.sh

ENDIAN=`readelf -h /bin/sh | grep endian`

echo "ENDIAN is $ENDIAN"

if [ "${ENDIAN//big/}" != "${ENDIAN}" ] ; then
  echo " Big endian machine"
  ENDIAN=big
  FPC_CPU=powerpc
  FPC_CPUSUF=ppc
else
  echo "Little endian machine"
  ENDIAN=little
  FPC_CPU=powerpc
  FPC_CPUSUF=ppc
fi
GCC_DIR=` gcc -m32 -print-libgcc-file-name | xargs dirname`

FPC_OS=linux
FPC_BIN=ppc${FPC_CPUSUF}
FPC_CPUOS=${FPC_CPU}-${FPC_OS}
if [ -z "$CURVER" ] ; then
  CURVER=$TRUNKVERSION
fi
if [ -z "$FPCSVNDIR" ] ; then
  FPCSVNDIR=$TRUNKDIR
fi
if [ -z "$FTP_SNAPSHOT_DIR" ] ; then
  FTP_SNAPSHOT_DIR=$TRUNKDIRNAME
fi

export FPC=~/pas/fpc-${CURVER}/bin/${FPC_BIN}

if [ "${PATH/${CURVER}//}" = "${PATH}" ] ; then
  echo "Adding ${CURVER} binary directory"
  export PATH=${PATH}:~/pas/fpc-${CURVER}/bin
fi

echo "Adding $HOME/bin to front of PATH"
export PATH=~/bin:$PATH

MAKE=make
OPTS="${OPT} -Xd -Fl/usr/lib -Fl/lib -Fd -Fl$GCC_DIR"
MAKE_OPTIONS="distclean singlezipinstall SNAPSHOT=1 DEBUG=1 NOWPOCYCLE=1"
date=`date +%Y-%m-%d`


cd $FPCSVNDIR
FPC_BRANCH=$FPC_SNAPSHOT_DIR
CURFULLVER=`$FPC_BIN -iW`

cat > README-${FPC_CPUOS} <<EOF
This ${FPC_BRANCH} snapshot was generated ${date} using:
${MAKE} ${MAKE_OPTIONS} OPT="${OPTS}"
started using ${FPC}
${FPC_BIN} -iVDW output is: `${FPC_BIN} -iVDW`

uname -a of the machine is:
`uname -a`

"svnversion -c ." output is: `svnversion -c .`

"svnversion -c fpcsrc" output is: `svnversion -c fpcsrc`

Enjoy,

Pierre Muller
EOF


TAR=./fpc-${CURFULLVER}.${FPC_CPUOS}.tar.gz

if [ -f ${TAR} ] ; then
  mv -f  ${TAR} ${TAR}.old
fi

echo ${MAKE} ${MAKE_OPTIONS} OPT="${OPTS}" "|" tee makesnapshot-${FPC_BRANCH}-${date}.txt
${MAKE} ${MAKE_OPTIONS} OPT="${OPTS}" > makesnapshot-${FPC_CPUOS}-${FPC_BRANCH}-${date}.txt 2>&1


if [ -f ${TAR} ]; then
  scp ${TAR} README-${FPC_CPUOS} fpcftp:ftp/snapshot/$FTP_SNAPSHOT_DIR/${FPC_CPUOS}
else
  echo Failed to created ${TAR} file
fi
