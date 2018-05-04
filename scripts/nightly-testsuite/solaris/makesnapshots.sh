#!/bin/bash

CHECKOUTDIR=$HOME/pas/trunk
LOGFILE=~/logs/makesnapshot-trunk-i386.log
FTPDIR=fpcftp:ftp/snapshot/trunk/i386-solaris
STARTPP=ppc386
. $HOME/bin/makesnapshot.sh > $LOGFILE 2>&1
LOGFILE=~/logs/makesnapshot-trunk-x86_64.log
FTPDIR=fpcftp:ftp/snapshot/trunk/x86_64-solaris
STARTPP=ppcx64
. $HOME/bin/makesnapshot.sh > $LOGFILE 2>&1

CHECKOUTDIR=$HOME/pas/fixes
LOGFILE=~/logs/makesnapshot-fixes-i386.log
FTPDIR=fpcftp:ftp/snapshot/fixes/i386-solaris
STARTPP=ppc386
. $HOME/bin/makesnapshot.sh > $LOGFILE 2>&1
LOGFILE=~/logs/makesnapshot-fixes-x86_64.log
FTPDIR=fpcftp:ftp/snapshot/fixes/x86_64-solaris
STARTPP=ppcx64
. $HOME/bin/makesnapshot.sh > $LOGFILE 2>&1

