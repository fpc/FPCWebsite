#!/usr/bin/env bash

. $HOME/bin/fpc-versions.sh

if [ -z "$HOMEBIN" ] ; then
  HOMEBIN=$HOME/bin
fi

if [ -z "$BASEDIR" ] ; then
  BASEDIR=$HOME/pas
fi

export TMP=$HOME/tmp
export TEMP=$TMP
export TMPDIR=$TMP
ENDIAN=`readelf -h /bin/sh | grep endian`

function decho ()
{
  echo "`date +%Y-%m-%d-%H:%M`: $*"
}

decho "Starting $0, ENDIAN is $ENDIAN"

if [ "${ENDIAN//big/}" != "${ENDIAN}" ] ; then
  decho " Big endian machine"
  ENDIAN=big
  FPC_CPU=mips
  FPC_CPUSUF=mips
else
  decho "Little endian machine"
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

export FPC=$BASEDIR/fpc-${FPC_VER}/bin/${FPC_BIN}

if [ "${PATH/${FPC_VER}//}" = "${PATH}" ] ; then
  decho "Appending ${BASEDIR}/fpc-${FPC_VER}/bin directory to PATH"
  export PATH=${PATH}:$BASEDIR/fpc-${FPC_VER}/bin
fi

MAKE=make
MAKE_OPTIONS="distclean singlezipinstall SNAPSHOT=1 NOGDB=1 DEBUG=1 NOWPOCYCLE=1"
date=`date +%Y-%m-%d`
start_date_time=`date +%Y-%m-%d-%H-%M`
LOGFILE=${HOME}/logs/makesnapshot-${FPC_CPU}-${FPC_VER}-${date}.txt

cd $FPC_DIR


TAR=`ls -1t ./fpc-${FPC_VER}*.${FPC_CPUOS}.tar.gz 2> /dev/null | head -1 `

if [[ -n "${TAR}" && -f "${TAR}" ]] ; then
  mv -f  ${TAR} ${TAR}.old
fi


decho "Starting ${MAKE} ${MAKE_OPTIONS}" > $LOGFILE
${MAKE} ${MAKE_OPTIONS} >> $LOGFILE 2>&1
res=$?
decho "Ending ${MAKE} ${MAKE_OPTIONS}, res=$res" >> $LOGFILE

if [ $res -ne 0 ] ; then
  decho "Normal tar file generation error"
  MAKE_EXTRA="FPCCPUOPT=-O1"
  LOGFILE=${HOME}/logs/makesnapshot-O1-${FPC_CPU}-${FPC_VER}-${date}.txt
  decho "Starting ${MAKE} ${MAKE_OPTIONS} FPCCPUOPT=-O1" > $LOGFILE
  ${MAKE} ${MAKE_OPTIONS} FPCCPUOPT=-O1 >> $LOGFILE 2>&1
  res=$?
  decho "Ending ${MAKE} ${MAKE_OPTIONS}, res=$res" >> $LOGFILE
  if [ $res -ne 0 ] ; then
    decho "-O1 tar file generation error"
    MAKE_EXTRA="FPCCPUOPT=-O-"
    LOGFILE=${HOME}/logs/makesnapshot-O--${FPC_CPU}-${FPC_VER}-${date}.txt
    decho "Starting ${MAKE} ${MAKE_OPTIONS} FPCCPUOPT=-O-" > $LOGFILE
    ${MAKE} ${MAKE_OPTIONS} FPCCPUOPT=-O- >> $LOGFILE 2>&1
    res=$?
    decho "Ending ${MAKE} ${MAKE_OPTIONS}, res=$res" >> $LOGFILE
    if [ $res -ne 0 ] ; then
      decho "-O- tar file generation error"
      exit
    fi
  fi
else

fi

TAR=`ls -1t ./fpc-${FPC_VER}*.${FPC_CPUOS}.tar.gz 2> /dev/null | head -1 `
end_date_time=`date +%Y-%m-%d-%H-%M`

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

decho "Script $0 from $start_date_time to $end_date_time"
decho "Script $0 from $start_date_time to $end_date_time" >> $LOGFILE
if [[ -n "${TAR}" && -f "${TAR}" ]]; then
  decho "scp ${TAR} README fpcftp:ftp/snapshot/$FTP_DIRNAME/${FPC_CPUOS}"
  scp ${TAR} README fpcftp:ftp/snapshot/$FTP_DIRNAME/${FPC_CPUOS}a
  scpres=$?
  decho "Upload of ${TAR} and README to fpcftp server, res=$scpres"
  decho "Upload of ${TAR} and README to fpcftp server, res=$scpres" >> $LOGFILE
else
  decho "Failed to created ${TAR} file"
  decho "Failed to created ${TAR} file" >> $LOGFILE
fi
