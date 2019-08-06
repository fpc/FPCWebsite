#!/bin/bash
#
# Snapshot building for Free Pascal Compiler
#
set -e

. ~/bin/fpc-versions.sh

export PATH=$HOME/bin:${PATH}:~/pas/fpc-$RELEASEVERSION/bin
export TEST_USER=pierre

export ERRORMAILADDR=pierre@freepascal.org
# Checkout dir
CHECKOUTDIR=$FIXESDIR
STARTPP=$HOME/pas/fpc-$RELEASEVERSION/bin/ppcarm
INSTALL_DIR=$HOME/pas/fpc-$FIXESVERSION
INSTALLCOMPILER=$INSTALL_DIR/bin/ppcarm
MAILFILE=$HOME/logs/snapshot-fixes-arm.mail
LOGFILE=$HOME/logs/snapshot-fixes-`date +%Y-%m-%d`.log
PPCCPU=ppcarm
# DISTCLEAN_BEFORE_TESTS=1
EXTRAOPT=
OPT="-O- -gl"
FTPDIR=fpc@ftp.freepascal.org:ftp/snapshot/fixes/arm-linux-armhf
SCPOPT="-i $HOME/.ssh/freepascal"

. $HOME/bin/makesnapshot.sh
