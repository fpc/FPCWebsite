#!/bin/bash
export CPU=`uname -p`

. ~/bin/fpc-versions.sh

if [ "$CPU" == "sparc" ] ; then
  LOCKFILE=$HOME/pas/trunk/lock
  while [ -f $LOCKFILE ] ; do
    sleep 60
  done

  echo "Generating snapshot for sparc" > $LOCKFILE
  CHECKOUTDIR=$HOME/pas/trunk
  LOGFILE=~/logs/makesnapshot-trunk-sparc.log
  FTPDIR=fpcftp:ftp/snapshot/trunk/sparc-solaris
  STARTPP=ppcsparc
  . $HOME/bin/makesnapshot.sh > $LOGFILE 2>&1
  if [ ! -z "$SPARC64_SNAPSHOT" ] ; then
    echo "Generating snapshot for sparc64" > $LOCKFILE
    LOGFILE=~/logs/makesnapshot-trunk-sparc64.log
    FTPDIR=fpcftp:ftp/snapshot/trunk/sparc64-solaris
    STARTPP=ppcsparc64
    . $HOME/bin/makesnapshot.sh > $LOGFILE 2>&1
  fi
  rm -f $LOCKFILE

  LOCKFILE=$HOME/pas/fixes/lock
  while [ -f $LOCKFILE ] ; do
    sleep 60
  done

  echo "Generating snapshot for sparc" > $LOCKFILE
  CHECKOUTDIR=$HOME/pas/fixes
  LOGFILE=~/logs/makesnapshot-fixes-sparc.log
  FTPDIR=fpcftp:ftp/snapshot/fixes/sparc-solaris
  STARTPP=ppcsparc
  . $HOME/bin/makesnapshot.sh > $LOGFILE 2>&1
  rm -f $LOCKFILE
fi

if [ "$CPU" == "i386" ] ; then
  LOCKFILE=$HOME/pas/trunk/lock
  while [ -f $LOCKFILE ] ; do
    sleep 60
  done

  echo "Generating snapshot for i386" > $LOCKFILE
  CHECKOUTDIR=$HOME/pas/trunk
  LOGFILE=~/logs/makesnapshot-trunk-i386.log
  FTPDIR=fpcftp:ftp/snapshot/trunk/i386-solaris
  STARTPP=ppc386
  . $HOME/bin/makesnapshot.sh > $LOGFILE 2>&1
  echo "Generating snapshot for x86_64" > $LOCKFILE
  LOGFILE=~/logs/makesnapshot-trunk-x86_64.log
  FTPDIR=fpcftp:ftp/snapshot/trunk/x86_64-solaris
  STARTPP=ppcx64
  . $HOME/bin/makesnapshot.sh > $LOGFILE 2>&1
  rm -f $LOCKFILE

  LOCKFILE=$HOME/pas/fixes/lock
  while [ -f $LOCKFILE ] ; do
    sleep 60
  done

  echo "Generating snapshot for i386" > $LOCKFILE
  CHECKOUTDIR=$HOME/pas/fixes
  LOGFILE=~/logs/makesnapshot-fixes-i386.log
  FTPDIR=fpcftp:ftp/snapshot/fixes/i386-solaris
  STARTPP=ppc386
  . $HOME/bin/makesnapshot.sh > $LOGFILE 2>&1
  LOGFILE=~/logs/makesnapshot-fixes-x86_64.log
  FTPDIR=fpcftp:ftp/snapshot/fixes/x86_64-solaris
  STARTPP=ppcx64
  . $HOME/bin/makesnapshot.sh > $LOGFILE 2>&1
  rm -f $LOCKFILE
fi

