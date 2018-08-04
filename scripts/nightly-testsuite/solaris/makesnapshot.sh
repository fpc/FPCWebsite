#!/usr/bin/env bash
# Generic snapshot building
#

# set correct locale for widestring tests
# was export LANG=en_US.utf8
export LANG=en_US.UTF-8

if [ "$CHECKOUTDIR" == "" ]; then
  CHECKOUTDIR=~/pas/trunk
fi

export MAKE=gmake

if [ "$STARTPP" == "" ] ; then
  STARTPP=ppc386
fi

if [ "$FTPDIR" == "" ] ; then
  if [ "$STARTPP" == "ppc386" ] ; then
    FTPDIR=fpcftp:ftp/snapshot/trunk/i386-solaris
  fi
  if [ "$STARTPP" == "ppcx64" ] ; then
    FTPDIR=fpcftp:ftp/snapshot/trunk/x86_64-solaris
  fi
  if [ "$STARTPP" == "ppcsparc" ] ; then
    FTPDIR=fpcftp:ftp/snapshot/trunk/sparc-solaris
  fi
  if [ "$STARTPP" == "ppcsparc64" ] ; then
    FTPDIR=fpcftp:ftp/snapshot/trunk/sparc64-solaris
  fi
fi

# Limit resources (64mb data, 8mb stack, 40 minutes)
ulimit -d 65536 -s 8192 -t 2400

PATH=".:${HOME}/bin:/bin:/usr/bin:/usr/local/bin:/usr/ccs/bin:/opt/csw/bin:/opt/sfw/bin"
(
date

# Clean, ignore errors makefile can be broken
cd $CHECKOUTDIR
rm -rf libgdb
rm -f *.tar.gz
$MAKE distclean TEST_FPC=$STARTPP || true
$MAKE -C tests distclean TEST_FPC=$STARTPP || true

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
if [ "$FTPDIR" != "" ]; then
  cd $CHECKOUTDIR
  if [ $? = 0 ]; then
     #  FTP machine must trust this account. Copy public key to that machine
     # if needed Everything is set
     scp *.tar.gz ${FTPDIR}
     if [ $? = 0 ]; then   
       set ERRORMAILADDR = ""
     fi
  fi
fi

# run testsuite and store results in database
cd $CHECKOUTDIR/tests
# fpc -iV returns exitcode 1, workaround with || true
FPCVERSION=0
[ -f $INSTALLCOMPILER ] && FPCVERSION=`$INSTALLCOMPILER -iV || true`
for TESTOPTS in ${!TESTSUITEOPTS[@]}; do
  $MAKE clean fulldb FPC=$STARTPP TEST_FPC=$INSTALLCOMPILER DIGESTVER=$FPCVERSION DIGEST=$HOME/bin/digest DOTEST=$HOME/bin/dotest TEST_OPT="${TESTSUITEOPTS[TESTOPTS]}" TEST_BINUTILSPREFIX="$TEST_BINUTILSPREFIX" EMULATOR="$EMULATOR" V=1 TEST_VERBOSE=1
done

# clean up, ignore errors... Makefile can be broken
cd $CHECKOUTDIR
rm -rf libgdb
$MAKE distclean || true
$MAKE -C tests distclean TEST_FPC=$INSTALLCOMPILER || true

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
