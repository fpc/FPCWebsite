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

STARTPP=$HOME/pas/fpc-$RELEASEVERSION/bin/ppc386
INSTALLCOMPILER=$HOME/bin/ppc386-fixes
MAILFILE=$HOME/logs/snapshot32-fixes.mail
LOGFILE=$HOME/logs/snapshot32-fixes.log
PPCCPU=ppc386
FTPDIR=fpc@ftpmaster.freepascal.org:ftp/snapshot/fixes/i386-linux
export NOGDB=1 # LIBGDBDIR=$HOME/pas/libgdb/gdb-7.9.1
OPT="-Fl/lib32 -Fl/usr/lib32 -Fl/usr/lib/gcc/x86_64-linux-gnu/6/32"
. $HOME/bin/makesnapshot.sh
