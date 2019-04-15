#!/usr/bin/env bash
#
# Snapshot building for Free Pascal Compiler
#
set -e

. $HOME/bin/fpc-versions.sh

if [ -z "$OS" ] ; then
  OS=`uname -s | tr '[:upper:]' '[:lower:]' `
  # echo "OS is $OS"
fi

export ERRORMAILADDR=pierre@freepascal.org
# Checkout dir
CHECKOUTDIR=$TRUNKDIR
STARTPP=$HOME/pas/fpc-$RELEASEVERSION/bin/ppcx64
INSTALLCOMPILER=$HOME/bin/ppcx64-trunk
MAILFILE=$HOME/logs/snapshot-trunk.mail
LOGFILE=$HOME/logs/snapshot-trunk.log
PPCCPU=ppcx64
DISTCLEAN_BEFORE_TESTS=1
FTPDIR=fpc@ftpmaster.freepascal.org:ftp/snapshot/trunk/x86_64-$OS
export GDBMI=1

. $HOME/bin/makesnapshot.sh

STARTPP=$HOME/pas/fpc-$RELEASEVERSION/bin/ppc386
INSTALLCOMPILER=$HOME/bin/ppc386-trunk
MAILFILE=$HOME/logs/snapshot32-trunk.mail
LOGFILE=$HOME/logs/snapshot32-trunk.log
PPCCPU=ppc386
DISTCLEAN_BEFORE_TESTS=1
FTPDIR=fpc@ftpmaster.freepascal.org:ftp/snapshot/trunk/i386-$OS
export GDBMI=1
OPT="-Fl/lib/i386 -Fl/usr/lib/i386"

. $HOME/bin/makesnapshot.sh

