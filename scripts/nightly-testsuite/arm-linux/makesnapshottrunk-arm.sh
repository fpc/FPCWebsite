#!/bin/bash
#
# Snapshot building for Free Pascal Compiler
#
set -e

. ~/bin/fpc-versions.sh

export PATH=~/bin:${PATH}:~/pas/fpc-$RELEASEVERSION/bin
export TEST_USER=pierre
# Raspberry uses gnueabihf calling convention
export TEST_ABI=gnueabihf

export ERRORMAILADDR=pierre@freepascal.org
# Checkout dir
CHECKOUTDIR=$TRUNKDIR
STARTPP=/home/pierre/pas/fpc-$RELEASEVERSION/bin/ppcarm
INSTALL_DIR=$HOME/pas/fpc-$TRUNKVERSION
INSTALLCOMPILER=$INSTALL_DIR/bin/ppcarm
MAILFILE=$HOME/logs/snapshot-trunk-arm.mail
LOGFILE=$HOME/logs/snapshot-trunk-`date +%Y-%m-%d`.log
PPCCPU=ppcarm
# DISTCLEAN_BEFORE_TESTS=1
EXTRAOPT=
OPT="-O- -gl"
# TEST_BINUTILSPREFIX="arm-linux-"
# EMULATOR="\"qemu-arm-static -L /home/pierre/linux-user-test-0.3/gnemul/qemu-arm\""
FTPDIR=fpc@ftp.freepascal.org:ftp/snapshot/trunk/arm-linux-armhf
SCPOPT="-i $HOME/.ssh/freepascal"
# FTPDIR=ftpmaster.freepascal.org:ftp/snapshot/v23/i386-linux
# LIBGDBZIP=$HOME/snapshotlibgdb/libgdb-6.2.1-i386-linux.zip

# Include common makesnapshot script
TESTSUITEOPTS=(
  "-O- -gl -Fd"
  "-O2 -gl -Fd"
)
#  "-O- -Cfsse2"
#  "-O-2 -Cfsse2 -CX -XX"
#  "-O-2ppentium4 -Cfsse2 -Cppentium4"
#  "-O- -gw2"
#  "-O-3"
#  "-O-3ppentium4 -Cfsse2 -Cppentium4"
#  "-O- -Cg"
#  "-O-2 -Cg"
# )

. $HOME/bin/makesnapshot.sh
