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

if [ "$STARTPP" == "" ] ; then
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

if [ "$FTPDIR" == "" ] ; then
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

if [ "$CHECKOUTDIR" == "" ]; then
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

if [ -z "$FPCPASINSTALLDIR" ] ; then
  if [ "$HOST_PC" == "opencsw" ] ; then
    if [ -z "$FPC_SOURCE_CPU" ] ; then
      FPCPASINSTALLDIR=$FPCPASDIR/$FPC_TARGET_CPU
    else
      FPCPASINSTALLDIR=$FPCPASDIR/$FPC_SOURCE_CPU
    fi
  else
    FPCPASINSTALLDIR=$FPCPASDIR
  fi
fi

export FPCPASINSTALLDIR
export SVNVER

if [ -z "$LOGFILE" ] ; then
  LOGFILE=$HOME/logs/makesnapshot-$SVNVER-$SVNDIR-$FPC_TARGET_CPU.log
fi

# Limit resources (64mb data, 8mb stack, 40 minutes)
ulimit -d 65536 -s 8192 -t 2400

(
# PATH=".:${HOME}/bin:/bin:/usr/bin:/usr/local/bin:/usr/ccs/bin:/opt/csw/bin:/opt/sfw/bin"
PATH=$PATH:/opt/csw/bin
if [ -d "$FPCPASINSTALLDIR/fpc-$RELEASEVERSION/bin" ] ; then
  PATH=$FPCPASINSTALLDIR/fpc-$RELEASEVERSION/bin:$PATH
  echo "Adding release $RELEASEVERSION Free Pascal binary directory to PATH"
else
  if [ -d "$FPCPASINSTALLDIR/fpc-$SVNVER/bin" ] ; then
    PATH=$FPCPASINSTALLDIR/fpc-$SVNVER/bin:$PATH
    echo "Adding $SVNVER Free Pascal binary directory to PATH"
    export OVERRIDEVERSIONCHECK=1
  else
    echo "Problem with PATH"
  fi
fi

export PATH

date
uname -a
echo "Start PATH is \"$PATH\""
#env
set | grep PAS

# Clean, ignore errors makefile can be broken
cd $CHECKOUTDIR
rm -rf libgdb
rm -f *.tar.gz
$MAKE distclean TEST_FPC=$STARTPP || true
# $MAKE -C tests distclean TEST_FPC=$STARTPP || true

# Run cvs update
cd $CHECKOUTDIR
svn cleanup
svn up

# add needed files (libgdb.a)
if [ "$LIBGDBZIP" != "" ]; then
        cd $CHECKOUTDIR
        unzip -o ${LIBGDBZIP}
fi

# Copy fv, not needed anymore for 1.9.x
#cd $CHECKOUTDIR/../fv
#cvs up -CPd
#cd $CHECKOUTDIR
#cp -a ../fv $CHECKOUTDIR

# make the snapshot!
cd $CHECKOUTDIR
$MAKE singlezipinstall OS_TARGET=linux SNAPSHOT=1 PP=$STARTPP $EXTRAOPT

if [ "$PPCCPU" == "" ]; then
  PPCCPU=ppc386
fi

# copy current compiler to bin dir
cp $CHECKOUTDIR/compiler/$PPCCPU $INSTALLCOMPILER

# move snapshot
if [ ! -d $HOME/logs/to_upload/to_ftp/$SVNDIR/$FPC_TARGET ] ; then
  mkdir -p $HOME/logs/to_upload/to_ftp/$SVNDIR/$FPC_TARGET
fi
cp -fp *${FPC_TARGET}*gz $HOME/logs/to_upload/to_ftp/$SVNDIR/$FPC_TARGET/

# if [ "$FTPDIR" != "" ]; then
#  cd $CHECKOUTDIR
#  if [ $? = 0 ]; then
#     #  FTP machine must trust this account. Copy public key to that machine
#     # if needed Everything is set
#     ssh ${FTPDIR/:*/} ls -l ${FTPDIR/*:/}
#     res=$?
#     if [ $res -ne 0 ] ; then
#       ssh $FTPSITE mkdir -p ${FTPDIR/*:/}
#     fi
#     scp *.tar.gz ${FTPDIR}
#     if [ $? = 0 ]; then   
#       set ERRORMAILADDR = ""
#     fi
#  fi
#fi

# run testsuite and store results in database
#cd $CHECKOUTDIR/tests
# fpc -iV returns exitcode 1, workaround with || true
#FPCVERSION=0
#[ -f $INSTALLCOMPILER ] && FPCVERSION=`$INSTALLCOMPILER -iV || true`
#for TESTOPTS in ${!TESTSUITEOPTS[@]}; do
#  $MAKE clean fulldb FPC=$STARTPP TEST_FPC=$INSTALLCOMPILER DIGESTVER=$FPCVERSION DIGEST=$HOME/bin/digest DOTEST=$HOME/bin/dotest TEST_OPT="${TESTSUITEOPTS[TESTOPTS]}" TEST_BINUTILSPREFIX="$TEST_BINUTILSPREFIX" EMULATOR="$EMULATOR" V=1 TEST_VERBOSE=1
#done

# clean up, ignore errors... Makefile can be broken
cd $CHECKOUTDIR
rm -rf libgdb
$MAKE distclean || true
#$MAKE -C tests distclean TEST_FPC=$INSTALLCOMPILER || true

date
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
