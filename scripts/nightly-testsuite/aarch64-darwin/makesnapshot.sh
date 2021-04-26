#!/usr/bin/env bash

. $HOME/bin/fpc-versions.sh

MACHINE_CPU=`uname -m`
if [ "$MACHINE_CPU" != "arm64" ] ; then
  ENDIAN=`readelf -h /bin/sh | grep endian`
fi

if [ "$MACHINE_CPU" == "arm64" ] ; then
  echo "aarch64 machine"
  FPC_CPU=aarch64
  FPC_CPUSUF=a64
  ENDIAN=little
elif [ "${ENDIAN//big/}" != "${ENDIAN}" ] ; then
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

FPC_OS=darwin
FPC_BIN=ppc${FPC_CPUSUF}
FPC_CPUOS=${FPC_CPU}-${FPC_OS}

if [ "$CURVER" == "" ]; then
  if [ "X$FIXES" == "X1" ] ; then
    export CURVER=$FIXESVERSION
    if [ -z "$SVNDIR" ] ; then
      SVNDIR=$FIXESDIR
    fi
    ftp_subdir=fixes
  else
    export CURVER=3.3.1
    ftp_subdir=trunk
  fi
fi

if [ -z "$ftp_subdir" ] ; then
  if [ -n "$FIXES" ] ; then
    ftp_subdir=fixes
  else
    ftp_subdir=trunk
  fi
fi

if [ -z "$SVNDIR" ] ; then
  SVNDIR=$TRUNKDIR
fi

if [ -z "$RELEASEVER" ]; then
  export RELEASEVER=3.2.2
fi

FPC_VER=$CURVER

export FPC=~/pas/fpc-${FPC_VER}/bin/${FPC_BIN}

if [ "${PATH/${FPC_VER}//}" = "${PATH}" ] ; then
  echo "Adding ${FPC_VER} binary directory"
  export PATH=${PATH}:~/pas/fpc-${FPC_VER}/bin
fi

echo "Adding $HOME/bin to front of PATH"
export PATH=~/bin:$PATH

if [ -z "$MAKE" ] ; then
  MAKE=`which gmake 2> /dev/null`
  if [ -z "$MAKE" ] ; then
    MAKE=`which make 2> /dev/null`
  fi
fi

if [ -z "$MAKE" ] ; then
  echo "Unable to find make"
  exit
fi

MAKE_OPTIONS="distclean singlezipinstall SNAPSHOT=1 DEBUG=1"
if [ "$FPC_CPU" != "aarch64" ] ; then
  OPTS="${OPT} -Xd -Fl/usr/lib -Fl/usr/lib/gcc/darwin/default"
  MAKE_OPTIONS="$MAKE_OPTIONS NOWPOCYCLE=1"
else
  OPTS="$OPT -XR/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk"
fi

date=`date +%Y-%m-%d`


echo "Switching to directory $SVNDIR"

cd $SVNDIR

echo "Directory is now `pwd`"
SVNVERSION=` which svnversion`
if [ -f "$SVNVERSION" ] ; then
  svn_info="\"$SVNVERSION -c .\" output is: `$SVNVERSION -c .`"
  svn_fpcsrc_info="\"$SVNVERSION -c fpcsrc\" output is: `$SVNVERSION -c fpcsrc`"
fi

cat > README-${FPC_CPUOS} <<EOF
This snapshot was generated ${date} using:
${MAKE} ${MAKE_OPTIONS} OPT="${OPTS}"
started using ${FPC}
${FPC_BIN} -iVDW output is: `${FPC_BIN} -iVDW`

${svn_info}
${svn_fpcsrc_info}
uname -a of the machine is:
`uname -a`


Enjoy,

Pierre Muller
EOF


TAR=` ls -1t ./fpc-${FPC_VER}.*${FPC_CPUOS}.tar.gz 2> /dev/null | head -1 `

if [ -f "${TAR}" ] ; then
  mv -f  "${TAR}" "${TAR}.old"
fi

echo "${MAKE} ${MAKE_OPTIONS} OPT=\"${OPTS}\" > makesnapshot-${date}.txt 2>&1"

LOGDIR=~/logs/$ftp_subdir
if [ ! -d "$LOGDIR" ] ; then
  mkdir -p "$LOGDIR"
fi

logfile=$LOGDIR/makesnapshot-${FPC_CPUOS}-${date}.txt

${MAKE} ${MAKE_OPTIONS} OPT="${OPTS}" > $logfile 2>&1

TAR=` ls -1t ./fpc-${FPC_VER}.*${FPC_CPUOS}.tar.gz 2> /dev/null | head -1 `

if [ -f "${TAR}" ]; then
  ssh  fpcftp "mkdir -p ftp/snapshot/$ftp_subdir/$FPC_CPUOS"
  scp ${TAR} README-${FPC_CPUOS} fpcftp:ftp/snapshot/$ftp_subdir/$FPC_CPUOS
else
  echo "Failed to created ${TAR} file, see $logfile"
fi
