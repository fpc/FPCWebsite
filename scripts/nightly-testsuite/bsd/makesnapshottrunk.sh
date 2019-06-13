#!/usr/bin/env bash
#
# Snapshot building for Free Pascal Compiler
#

. $HOME/bin/fpc-versions.sh

if [ -z "$OS" ] ; then
  OS=`uname -s | tr '[:upper:]' '[:lower:]' `
  # echo "OS is $OS"
fi

if [ "$OS" == "openbsd" ] ; then
  # Last openbsd release is too old and unable to
  # compile current versions
  if [ "$RELEASEVERSION/3.0/}" != "$RELEASEVERSION" ] ; then
    export OVERRIDEVERSIONCHECK=1
  fi
fi

if [ -n "$OVERRIDEVERSIONCHECK" ] ; then
  export PATH=$HOME/pas/fpc-$SVN_VER/bin:$PATH
  STARTPP64=$HOME/pas/fpc-$TRUNKVERSION/bin/ppcx64
  STARTPP32=$HOME/pas/fpc-$TRUNKVERSION/bin/ppc386
else
  STARTPP64=$HOME/pas/fpc-$RELEASEVERSION/bin/ppcx64
  STARTPP32=$HOME/pas/fpc-$RELEASEVERSION/bin/ppc386
fi


export ERRORMAILADDR=pierre@freepascal.org
# Checkout dir
CHECKOUTDIR=$TRUNKDIR
INSTALLCOMPILER=$HOME/bin/ppcx64-trunk
MAILFILE=$HOME/logs/snapshot-trunk.mail
LOGFILE=$HOME/logs/snapshot-trunk.log
STARTPP=$STARTPP64
PPCCPU=ppcx64
DISTCLEAN_BEFORE_TESTS=1
FTPDIR=fpc@ftpmaster.freepascal.org:ftp/snapshot/trunk/x86_64-$OS
export GDBMI=1

. $HOME/bin/makesnapshot.sh

STARTPP=$STARTPP32
INSTALLCOMPILER=$HOME/bin/ppc386-trunk
MAILFILE=$HOME/logs/snapshot32-trunk.mail
LOGFILE=$HOME/logs/snapshot32-trunk.log
PPCCPU=ppc386
DISTCLEAN_BEFORE_TESTS=1
FTPDIR=fpc@ftpmaster.freepascal.org:ftp/snapshot/trunk/i386-$OS
export GDBMI=1
OPT="-Fl/lib/i386 -Fl/usr/lib/i386"

. $HOME/bin/makesnapshot.sh

