#!/bin/bash
#
# Snapshot building for Free Pascal Compiler
#
set -e
. $HOME/bin/fpc-versions.sh

export ERRORMAILADDR=pierre@freepascal.org
# Checkout dir
CHECKOUTDIR=$FIXESDIR
STARTPP=$HOME/pas/fpc-$RELEASEVERSION/bin/fpc
INSTALLCOMPILER=$HOME/bin/ppc386-fixes
MAILFILE=$HOME/logs/snapshot-fixes.mail
LOGFILE=$HOME/logs/snapshot-fixes.log
PPCCPU=ppc386
DISTCLEAN_BEFORE_TESTS=1
FTPDIR=fpc@ftpmaster.freepascal.org:ftp/snapshot/fixes/i386-linux
# export GDBMI=1
export LIBGDBDIR=$HOME/pas/libgdb/gdb-7.9.1
. $HOME/bin/makesnapshot.sh
