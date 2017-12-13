#!/bin/bash
#
# Snapshot building for Free Pascal Compiler
#
set -e

. $HOME/bin/fpc-versions.sh
export ERRORMAILADDR=pierre@freepascal.org
# Checkout dir
CHECKOUTDIR=$TRUNKDIR
STARTPP=$HOME/pas/fpc-$RELEASEVERSION/bin/ppcx64
INSTALLCOMPILER=$HOME/bin/ppcx64-trunk
MAILFILE=$HOME/logs/snapshot-trunk.mail
LOGFILE=$HOME/logs/snapshot-trunk.log
PPCCPU=ppcx64
DISTCLEAN_BEFORE_TESTS=1
FTPDIR=fpc@ftpmaster.freepascal.org:ftp/snapshot/trunk/x86_64-linux
export GDBMI=1

. $HOME/bin/makesnapshot
