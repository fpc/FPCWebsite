#!/bin/bash
#
# Snapshot building for Free Pascal Compiler
#
set -e
. $HOME/bin/fpc-versions.sh

export ERRORMAILADDR=pierre@freepascal.org
# Checkout dir
CHECKOUTDIR=$FIXESDIR
STARTPP=$HOME/pas/fpc-$FIXESVERSION/bin/ppcsparc64-native
INSTALLCOMPILER=$HOME/bin/ppcsparc64-fixes
MAILFILE=$HOME/logs/snapshot-fixes64.mail
LOGFILE=$HOME/logs/snapshot-fixes64.log
PPCCPU=ppcsparc64
DISTCLEAN_BEFORE_TESTS=1
FTPDIR=fpc@ftpmaster.freepascal.org:ftp/snapshot/fixes/sparc64-linux
export GDBMI=1
# Disable optimization for now
# export EXTRA_MAKE_OPT="FPCCPUOPT=-O-"
. $HOME/bin/makesnapshot.sh
