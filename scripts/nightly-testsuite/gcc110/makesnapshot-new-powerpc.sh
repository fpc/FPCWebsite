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

FPC_OS=linux
FPC_BIN=ppc${FPC_CPUSUF}
FPC_CPUOS=${FPC_CPU}-${FPC_OS}
FPC_VER=$TRUNKVERSION

export FPC=~/pas/fpc-${FPC_VER}/bin/${FPC_BIN}

if [ "${PATH/${FPC_VER}//}" = "${PATH}" ] ; then
  echo "Adding ${FPC_VER} binary directory"
  export PATH=${PATH}:~/pas/fpc-${FPC_VER}/bin
fi

echo "Adding $HOME/bin to front of PATH"
export PATH=~/bin:$PATH

MAKE=make
OPTS="${OPT} -Xd -Fl/usr/lib -Fl/lib -Fd -Fl/lib/gcc/ppc64-redhat-linux/4.8.3/32"
MAKE_OPTIONS="distclean singlezipinstall SNAPSHOT=1 DEBUG=1 NOWPOCYCLE=1"
date=`date +%Y-%m-%d`


cd ~/pas/trunk

cat > README-${FPC_CPUOS} <<EOF
This snapshot was generated ${date} using:
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


TAR=./fpc-${FPC_VER}.${FPC_CPUOS}.tar.gz

if [ -f ${TAR} ] ; then
  mv -f  ${TAR} ${TAR}.old
fi

echo ${MAKE} ${MAKE_OPTIONS} OPT="${OPTS}" "|" tee makesnapshot-${date}.txt
${MAKE} ${MAKE_OPTIONS} OPT="${OPTS}" | tee makesnapshot-${FPC_CPUOS}-${date}.txt


if [ -f ${TAR} ]; then
  scp ${TAR} README-${FPC_CPUOS} fpcftp:ftp/snapshot/trunk/${FPC_CPUOS}
else
  echo Failed to created ${TAR} file
fi
