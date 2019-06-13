#!/usr/bin/env bash
#
# Snapshot building for Free Pascal Compiler
#

. $HOME/bin/fpc-versions.sh


if [ -z "$OS" ] ; then
  OS=`uname -s | tr '[:upper:]' '[:lower:]' `
  # echo "OS is $OS"
fi

if [ "$OS" == "openbsd" ] ; then
  # Last openbsd release is too old and unable to
  # compile current versions
  if [ "$RELEASEVERSION/3.0/}" != "$RELEASEVERSION" ] ; then
    export OVERRIDEVERSIONCHECK=1
  fi
fi

if [ -n "$OVERRIDEVERSIONCHECK" ] ; then
  export PATH=$HOME/pas/fpc-$SVN_VER/bin:$PATH
  STARTPP64=$HOME/pas/fpc-$FIXESVERSION/bin/ppcx64
  STARTPP32=$HOME/pas/fpc-$FIXESVERSION/bin/ppc386
else
  STARTPP64=$HOME/pas/fpc-$RELEASEVERSION/bin/ppcx64
  STARTPP32=$HOME/pas/fpc-$RELEASEVERSION/bin/ppc386
fi


export ERRORMAILADDR=pierre@freepascal.org
# Checkout dir
CHECKOUTDIR=$FIXESDIR
STARTPP=$STARTPP64
INSTALLCOMPILER=$HOME/bin/ppcx64-fixes
MAILFILE=$HOME/logs/snapshot-fixes.mail
LOGFILE=$HOME/logs/snapshot-fixes.log
PPCCPU=ppcx64
FTPDIR=fpc@ftpmaster.freepascal.org:ftp/snapshot/fixes/x86_64-$OS
export NOGDB=1 # LIBGDBDIR=$HOME/pas/libgdb/gdb-7.9.1
. $HOME/bin/makesnapshot.sh

STARTPP=$STARTPP32
INSTALLCOMPILER=$HOME/bin/ppc386-fixes
MAILFILE=$HOME/logs/snapshot32-fixes.mail
LOGFILE=$HOME/logs/snapshot32-fixes.log
PPCCPU=ppc386
FTPDIR=fpc@ftpmaster.freepascal.org:ftp/snapshot/fixes/i386-$OS
# export NOGDB=1 # LIBGDBDIR=$HOME/pas/libgdb/gdb-7.9.1
OPT="-Fl/lib/i386 -Fl/usr/lib/i386"
. $HOME/bin/makesnapshot.sh
