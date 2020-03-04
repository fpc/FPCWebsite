#!/usr/bin/env bash
# Generic snapshot building
#

# set correct locale for widestring tests
# was export LANG=en_US.utf8
export LANG=en_US.UTF-8

. $HOME/bin/fpc-versions.sh

if [ "${HOSTNAME/unstable/}" != "${HOSTNAME}" ] ; then
  HOST_PC=opencsw
fi
 
export MAKE=gmake

if [ -z "$STARTPP" ] ; then
  if [ "`uname -p`" == "sparc" ] ; then
    STARTPP=ppcsparc
  else
    STARTPP=ppc386
  fi
fi

if [ "X$FIXES" == "X1" ] ; then
  SVNDIR=fixes
  SVNVER=$FIXESVERSION
else
  SVNDIR=trunk
  SVNVER=$TRUNKVERSION
fi

if [ -z "$FTPDIR" ] ; then
  if [ "$STARTPP" == "ppc386" ] ; then
    FTPDIR=fpcftp:ftp/snapshot/$SVNDIR/i386-solaris
  fi
  if [ "$STARTPP" == "ppcx64" ] ; then
    FTPDIR=fpcftp:ftp/snapshot/$SVNDIR/x86_64-solaris
  fi
  if [ "$STARTPP" == "ppcsparc" ] ; then
    FTPDIR=fpcftp:ftp/snapshot/$SVNDIR/sparc-solaris
  fi
  if [ "$STARTPP" == "ppcsparc64" ] ; then
    FTPDIR=fpcftp:ftp/snapshot/$SVNDIR/sparc64-solaris
    if [ "$CHECKOUTDIR" == "" ]; then
      CHECKOUTDIR=~/pas/sparc64-solaris-trunk/fpcsrc
    fi
  fi
fi

if [ -z "$CHECKOUTDIR" ]; then
  CHECKOUTDIR=~/pas/$SVNDIR
fi

if [ -d "$CHECKOUTDIR/fpcsrc" ] ; then
  CHECKOUTDIR="$CHECKOUTDIR/fpcsrc"
fi

# Set default CPU if not set
if [ -z "${FPC_TARGET_CPU}" ]; then
  if [ "${STARTPP}" == "ppcx64" ]; then
    FPC_TARGET_CPU=x86_64
  elif [ "${STARTPP}" == "ppc386" ]; then
    FPC_TARGET_CPU=i386
  elif [ "${STARTPP}" == "ppcsparc" ]; then
    FPC_TARGET_CPU=sparc
  elif [ "${STARTPP}" == "ppcsparc64" ]; then
    FPC_TARGET_CPU=sparc64
  else
    FPC_TARGET_CPU=Unknown
  fi
fi

FPC_TARGET=${FPC_TARGET_CPU}-solaris
FPCPASDIR=$HOME/pas

if [ "$HOST_PC" == "opencsw" ] ; then
  if [ -z "$FPC_SOURCE_CPU" ] ; then
    FPCPASINSTALLDIR=$FPCPASDIR/$FPC_TARGET_CPU
  else
    FPCPASINSTALLDIR=$FPCPASDIR/$FPC_SOURCE_CPU
  fi
else
  FPCPASINSTALLDIR=$FPCPASDIR
fi

export SVNVER

if [ -z "$LOGFILE" ] ; then
  LOGFILE=$HOME/logs/makesnapshot-$SVNVER-$SVNDIR-$FPC_TARGET_CPU.log
fi

# Limit resources (64mb data, 8mb stack, 40 minutes)
ulimit -d 65536 -s 8192 -t 2400

function decho ()
{
  echo "`date +%Y-%m-%d-%H-%M`: $*"
}

(
decho "Starting $0"
uname -a
# PATH=".:${HOME}/bin:/bin:/usr/bin:/usr/local/bin:/usr/ccs/bin:/opt/csw/bin:/opt/sfw/bin"
PATH=$PATH:/opt/csw/bin
if [ -d "$FPCPASINSTALLDIR/fpc-$RELEASEVERSION/bin" ] ; then
  PATH=$FPCPASINSTALLDIR/fpc-$RELEASEVERSION/bin:$PATH
  decho "Adding release $FPCPASINSTALLDIR/fpc-$RELEASEVERSION/bin Free Pascal binary directory to PATH"
else
  if [ -d "$FPCPASINSTALLDIR/fpc-$SVNVER/bin" ] ; then
    PATH=$FPCPASINSTALLDIR/fpc-$SVNVER/bin:$PATH
    decho "Adding $FPCPASINSTALLDIR/fpc-$SVNVER/bin Free Pascal binary directory to PATH"
    export OVERRIDEVERSIONCHECK=1
  else
    decho "Problem with PATH"
  fi
fi

export PATH

decho "Start PATH is \"$PATH\""
#env
set | grep PAS

# Clean, ignore errors makefile can be broken
cd $CHECKOUTDIR
rm -rf libgdb
rm -f *.tar.gz
decho "$MAKE distclean TEST_FPC=$STARTPP"
$MAKE distclean TEST_FPC=$STARTPP
res=$?
decho "$MAKE distclean TEST_FPC=$STARTPP finished res=$res"
# $MAKE -C tests distclean TEST_FPC=$STARTPP || true

# Run cvs update
cd $CHECKOUTDIR
decho "Starting svn cleanup"
svn cleanup
decho "Starting svn up"
svn up

# add needed files (libgdb.a)
if [ "$LIBGDBZIP" != "" ]; then
        cd $CHECKOUTDIR
        decho "Unzipping ${LIBGDBZIP}"
        unzip -o ${LIBGDBZIP}
fi

# make the snapshot!
decho "cd $CHECKOUTDIR"
cd $CHECKOUTDIR
decho "pwd=`pwd`"
README=readme

echo "Starting $0 at `date +%Y-%m-%d-%H-%M`" > $README
echo "Main svn version: `svnversion -c .`" >> $README
if [ -d fpcsrc ] ; then
  echo "fpcsrc svn version: `svnversion -c fpcsrc`" >> $README
fi

echo "Starting $MAKE singlezipinstall OS_TARGET=solaris SNAPSHOT=1 PP=$STARTPP $EXTRAOPT" >> $README
decho "Starting $MAKE singlezipinstall OS_TARGET=solaris SNAPSHOT=1 PP=$STARTPP $EXTRAOPT"
$MAKE singlezipinstall OS_TARGET=solaris SNAPSHOT=1 PP=$STARTPP $EXTRAOPT
res=$?
echo "Finished $MAKE singlezipinstall OS_TARGET=solaris SNAPSHOT=1 PP=$STARTPP $EXTRAOPT, res=$res" >> $README
decho "Finished $MAKE singlezipinstall OS_TARGET=solaris SNAPSHOT=1 PP=$STARTPP $EXTRAOPT, res=$res"

if [ $res -ne 0 ] ; then
  decho "Failed to generate new snapshot"
else
  decho "$MAKE singlezipinstall finished OK"
  # move snapshot
  if [ ! -d $HOME/logs/to_upload/to_ftp/$SVNDIR/$FPC_TARGET ] ; then
    decho "mkdir -p $HOME/logs/to_upload/to_ftp/$SVNDIR/$FPC_TARGET"
    mkdir -p $HOME/logs/to_upload/to_ftp/$SVNDIR/$FPC_TARGET
  fi

  for file in *${FPC_TARGET}*gz $README ; do
    decho "cp -fp $file $HOME/logs/to_upload/to_ftp/$SVNDIR/$FPC_TARGET/"
    cp -fp $file $HOME/logs/to_upload/to_ftp/$SVNDIR/$FPC_TARGET/
  done
fi

# clean up, ignore errors... Makefile can be broken
cd $CHECKOUTDIR
rm -rf libgdb
decho "$MAKE distclean"
$MAKE distclean
res=$?
decho "$MAKE distclean finished, res=$res"
) > $LOGFILE 2>&1 </dev/null

# send result to webmaster
if [ "${ERRORMAILADDR}" != "" ]; then
        # Create email
        echo "To: ${ERRORMAILADDR}" > $MAILFILE
        echo "From: pierre@freepascal.org" >> $MAILFILE
        echo "Subject: Daily compile routine" >> $MAILFILE
        echo "Reply-to: bugrep@freepascal.org" >> $MAILFILE
        # truncate the log to only the last 100 lines
        /usr/bin/tail -n 100 $LOGFILE >> $MAILFILE
        sendmail -f fpc@freepascal.org ${ERRORMAILADDR} < $MAILFILE >/dev/null 2>&1
fi

# End of script.
