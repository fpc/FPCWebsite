#!/bin/bash
#
# Snapshot building for Free Pascal Compiler
#
set -e

. ~/bin/fpc-versions.sh

export PATH=$HOME/bin:${PATH}:~/pas/fpc-$RELEASEVERSION/bin
export TEST_USER=pierre
# Raspberry uses gnueabihf calling convention
export TEST_ABI=gnueabihf

export ERRORMAILADDR=pierre@freepascal.org
# Checkout dir
CHECKOUTDIR=$TRUNKDIR
STARTPP=$HOME/pas/fpc-$RELEASEVERSION/bin/ppcarm
INSTALL_DIR=$HOME/pas/fpc-$TRUNKVERSION
INSTALLCOMPILER=$INSTALL_DIR/bin/ppcarm
MAILFILE=$HOME/logs/snapshot-trunk-arm.mail
LOGFILE=$HOME/logs/snapshot-trunk-`date +%Y-%m-%d`.log
PPCCPU=ppcarm
# DISTCLEAN_BEFORE_TESTS=1
EXTRAOPT=
OPT="-O- -gl"
FTPDIR=fpc@ftp.freepascal.org:ftp/snapshot/trunk/arm-linux-armhf
SCPOPT="-i $HOME/.ssh/freepascal"

. $HOME/bin/makesnapshot.sh
