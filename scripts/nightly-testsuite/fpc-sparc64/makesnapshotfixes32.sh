#!/bin/bash
#
# Snapshot building for Free Pascal Compiler
#
set -e
. $HOME/bin/fpc-versions.sh

export ERRORMAILADDR=pierre@freepascal.org
# Checkout dir
CHECKOUTDIR=$FIXESDIR
STARTPP=$HOME/pas/fpc-$RELEASEVERSION/bin/ppcsparc
INSTALLCOMPILER=$HOME/bin/ppcsparc-fixes
MAILFILE=$HOME/logs/snapshot-fixes.mail
LOGFILE=$HOME/logs/snapshot-fixes.log
PPCCPU=ppcsparc
DISTCLEAN_BEFORE_TESTS=1
FTPDIR=fpc@ftpmaster.freepascal.org:ftp/snapshot/fixes/sparc-linux
# export GDBMI=1
export LIBGDBDIR=$HOME/pas/libgdb/gdb-7.8.2
. $HOME/bin/makesnapshot.sh
