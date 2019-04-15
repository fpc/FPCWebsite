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

if [ "$OS" == "openbsd" ] ; then
  export OVERRIDEVERSIONCHECK=1
  STARTPP=$HOME/pas/fpc-$TRUNKVERSION/bin/ppcx64
else
  STARTPP=$HOME/pas/fpc-$RELEASEVERSION/bin/ppcx64
fi

export ERRORMAILADDR=pierre@freepascal.org
# Checkout dir
CHECKOUTDIR=$HOME/pas/trunk
INSTALLCOMPILER=$HOME/bin/ppcx64
MAILFILE=$HOME/logs/snapshot64-trunk.mail
LOGFILE=$HOME/logs/snapshot64-trunk.log
PPCCPU=ppcx64
DISTCLEAN_BEFORE_TESTS=1
FTPDIR=fpc@ftpmaster.freepascal.org:ftp/snapshot/trunk/x86_64-$OS
. $HOME/bin/makesnapshot.sh
