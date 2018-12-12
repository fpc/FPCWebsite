#!/usr/bin/env bash

. $HOME/bin/fpc-versions.sh

export TMP=$HOME/tmp
export TEMP=$TMP
export TMPDIR=$TMP
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

FPC_OS=linux
FPC_BIN=ppc${FPC_CPUSUF}
FPC_CPUOS=${FPC_CPU}-${FPC_OS}

if [ "X$FIXES" == "X1" ] ; then
  FPC_VER=$FIXESVERSION
  FPC_DIRNAME=$FIXESDIRNAME
  FPC_DIR=$FIXESDIR
  FTP_DIRNAME=${FPC_DIRNAME//_*/}
else
  FPC_VER=$TRUNKVERSION
  FPC_DIRNAME=$TRUNKDIRNAME
  FPC_DIR=$TRUNKDIR
  FTP_DIRNAME=${FPC_DIRNAME//_*/}
fi

export FPC=~/pas/fpc-${FPC_VER}/bin/${FPC_BIN}

if [ "${PATH/${FPC_VER}//}" = "${PATH}" ] ; then
  echo "Adding ${FPC_VER} binary directory"
  export PATH=${PATH}:~/pas/fpc-${FPC_VER}/bin
fi

MAKE=make
MAKE_OPTIONS="distclean singlezipinstall SNAPSHOT=1 NOGDB=1 DEBUG=1 NOWPOCYCLE=1"
date=`date +%Y-%m-%d`


cd $FPC_DIR


TAR=`ls -1t ./fpc-${FPC_VER}*.${FPC_CPUOS}.tar.gz 2> /dev/null | head -1 `

if [[ -n "${TAR}" && -f "${TAR}" ]] ; then
  mv -f  ${TAR} ${TAR}.old
fi

${MAKE} ${MAKE_OPTIONS} > ${HOME}/logs/makesnapshot-${FPC_VER}-${date}.txt 2>&1
res=$?

if [ $res -ne 0 ] ; then
  echo "Normal tar file generation error"
  ${MAKE} ${MAKE_OPTIONS} FPCCPUOPT=-O1 > ${HOME}/logs/makesnapshot-O1-${FPC_VER}-${date}.txt 2>&1
  MAKE_EXTRA="FPCCPUOPT=-O1"
  res=$?
  if [ $res -ne 0 ] ; then
    echo "-O1 tar file generation error"
    ${MAKE} ${MAKE_OPTIONS} FPCCPUOPT=-O- > ${HOME}/logs/makesnapshot-O--${FPC_VER}-${date}.txt  2>&1
    MAKE_EXTRA="FPCCPUOPT=-O-"
    res=$?
    if [ $res -ne 0 ] ; then
      echo "-O- tar file generation error"
      exit
    fi
  fi
fi

TAR=`ls -1t ./fpc-${FPC_VER}*.${FPC_CPUOS}.tar.gz 2> /dev/null | head -1 `

cat > README <<EOF
This ${TAR} snapshot was generated ${date} using:
${MAKE} ${MAKE_OPTIONS} ${MAKE_EXTRA}
started using ${FPC}
ppc${FPC_CPU} -iVDW output is: `${FPC} -iVDW`

uname -a of the machine is:
`uname -a`

"svnversion -c ." output is: `svnversion -c .`

"svnversion -c fpcsrc" output is: `svnversion -c fpcsrc`

Enjoy,

Pierre Muller
EOF

if [[ -n "${TAR}" && -f "${TAR}" ]]; then
  echo "scp ${TAR} README fpcftp:ftp/snapshot/$FTP_DIRNAME/${FPC_CPUOS}"
  scp ${TAR} README fpcftp:ftp/snapshot/$FTP_DIRNAME/${FPC_CPUOS}
else
  echo Failed to created ${TAR} file
fi
