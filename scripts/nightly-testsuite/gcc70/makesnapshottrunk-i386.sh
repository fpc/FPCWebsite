#!/usr/bin/env bash
#
# Snapshot building for Free Pascal Compiler
#
set -e

. $HOME/bin/fpc-versions.sh

export ERRORMAILADDR=pierre@freepascal.org
# Checkout dir
CHECKOUTDIR=$HOME/pas/trunk
STARTPP=$HOME/pas/fpc-$RELEASEVERSION/bin/ppc386
INSTALLCOMPILER=$HOME/bin/ppc386
MAILFILE=$HOME/logs/snapshot32-trunk.mail
LOGFILE=$HOME/logs/snapshot32-trunk.log
PPCCPU=ppc386
DISTCLEAN_BEFORE_TESTS=1
FTPDIR=fpc@ftpmaster.freepascal.org:ftp/snapshot/trunk/i386-netbsd
. $HOME/bin/makesnapshot.sh
