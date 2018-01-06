#!/bin/bash
#
# Snapshot building for Free Pascal Compiler
#
set -e

. $HOME/bin/fpc-versions.sh
export ERRORMAILADDR=pierre@freepascal.org
# Checkout dir
CHECKOUTDIR=$FIXESDIR
STARTPP=$HOME/pas/fpc-$RELEASEVERSION/bin/ppcx64
INSTALLCOMPILER=$HOME/bin/ppcx64-fixes
MAILFILE=$HOME/logs/snapshot-fixes.mail
LOGFILE=$HOME/logs/snapshot-fixes.log
PPCCPU=ppcx64
FTPDIR=fpc@ftpmaster.freepascal.org:ftp/snapshot/fixes/x86_64-linux
export NOGDB=1 # LIBGDBDIR=$HOME/pas/libgdb/gdb-7.9.1
. $HOME/bin/makesnapshot.sh
