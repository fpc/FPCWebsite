#!/usr/bin/env bash
#
# Snapshot building for Free Pascal Compiler
#
set -e

. $HOME/bin/fpc-versions.sh

export ERRORMAILADDR=pierre@freepascal.org
# Checkout dir
CHECKOUTDIR=$HOME/pas/trunk
STARTPP=$HOME/pas/fpc-$RELEASEVERSION/bin/ppcx64
INSTALLCOMPILER=$HOME/bin/ppcx64
MAILFILE=$HOME/logs/snapshot64-trunk.mail
LOGFILE=$HOME/logs/snapshot64-trunk.log
PPCCPU=ppcx64
DISTCLEAN_BEFORE_TESTS=1
FTPDIR=fpc@ftpmaster.freepascal.org:ftp/snapshot/trunk/x86_64-netbsd
. $HOME/bin/makesnapshot.sh
