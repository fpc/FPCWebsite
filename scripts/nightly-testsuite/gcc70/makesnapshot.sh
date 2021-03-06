#!/usr/bin/env bash
# Generic snapshot building
#

# set correct locale for widestring tests
export LANG=en_US.UTF-8
export DB_SSH_EXTRA="-i ${HOME}/.ssh/freepascal"
export SCP_EXTRA="-i ${HOME}/.ssh/freepascal"
export TEST_USER=pierre

if [ "$CHECKOUTDIR" == "" ]; then
    echo "No CHECKOUTDIR set"
    exit 1
fi

# Limit resources (64mb data, 8mb stack, 40 minutes)
ulimit -d 65536 -s 8192 -t 2400

PATH=".:${HOME}/bin:/bin:/usr/bin:/usr/local/bin:/usr/pkg/bin"
(
date

# Clean, ignore errors makefile can be broken
cd $CHECKOUTDIR
if [ -d fpcsrc ] ; then
  FPCSRCDIR=fpcsrc
else
  FPCSRCDIR=.
fi

rm -rf libgdb
rm -f *.tar.gz
gmake distclean FPC=$STARTPP || true
gmake -C $FPCSRCDIR/tests distclean TEST_FPC=$STARTPP FPC=$STARTPP || true

# Run cvs update
cd $CHECKOUTDIR
svn cleanup
svn up

EXTRAOPT="OPT=-Fl${HOME}/pas/test/iconv/lib"

# add needed files (libgdb.a)
if [ "$LIBGDBZIP" != "" ]; then
        cd $CHECKOUTDIR/$FPCSRCDIR
        unzip -o ${LIBGDBZIP}
else
  if [ ! -d $FPCSRCDIR/libgdb ] ; then
    EXTRAOPT="$EXTRAOPT NOGDB=1"
  fi
fi

# Copy fv, not needed anymore for 1.9.x
#cd $CHECKOUTDIR/../fv
#cvs up -CPd
#cd $CHECKOUTDIR
#cp -a ../fv $CHECKOUTDIR

# make the snapshot!
cd $CHECKOUTDIR
gmake info singlezipinstall SNAPSHOT=1 PP=$STARTPP $EXTRAOPT
res=makeres=$?

if [ "$PPCCPU" == "" ]; then
  PPCCPU=ppc386
fi

# copy current compiler to bin dir
echo cp $CHECKOUTDIR/$FPCSRCDIR/compiler/$PPCCPU $INSTALLCOMPILER
cp $CHECKOUTDIR/$FPCSRCDIR/compiler/$PPCCPU $INSTALLCOMPILER

# move snapshot
echo move snapshot
if [ "$FTPDIR" != "" ]; then
  cd $CHECKOUTDIR
  if [ $? -eq 0 ]; then
     #  FTP machine must trust this account. Copy public key to that machine
     # if needed Everything is set
     echo scp ${SCP_EXTRA} *.tar.gz ${FTPDIR}
     scp ${SCP_EXTRA} *.tar.gz ${FTPDIR}
     if [ $? -eq 0 ]; then   
       set ERRORMAILADDR = ""
     fi
       else
	   echo Error moving to $CHECKOUTDIR
  fi
fi

# run testsuite and store results in database
cd $CHECKOUTDIR/$FPCSRCDIR/tests
# fpc -iV returns exitcode 1, workaround with || true
FPCVERSION=0
[ -f $INSTALLCOMPILER ] && FPCVERSION=`$INSTALLCOMPILER -iV || true`
for TESTOPTS in ${!TESTSUITEOPTS[@]}; do
  if [ "x$DISTCLEAN_BEFORE_TESTS" == "x1" ] ; then
    gmake -C ../rtl distclean $EXTRAOPT FPC=$INSTALLCOMPILER
    gmake -C ../packages distclean $EXTRAOPT FPC=$INSTALLCOMPILER
  fi
  gmake clean fulldb FPC=$STARTPP TEST_FPC=$INSTALLCOMPILER DIGESTVER=$FPCVERSION  TEST_OPT="${TESTSUITEOPTS[TESTOPTS]}" TEST_BINUTILSPREFIX="$TEST_BINUTILSPREFIX" EMULATOR="$EMULATOR" V=1 TEST_VERBOSE=1
done

# clean up, ignore errors... Makefile can be broken
cd $CHECKOUTDIR/$FPCSRCDIR
# rm -rf libgdb
cd $CHECKOUTDIR
gmake distclean FPC=$INSTALLCOMPILER || true
gmake -C $FPCSRCDIR/tests distclean TEST_FPC=$INSTALLCOMPILER FPC=$INSTALLCOMPILER || true

date
) > $LOGFILE 2>&1 </dev/null

# send result to webmaster
if [ "${ERRORMAILADDR}" != "" ]; then
        # Create email
        echo "To: ${ERRORMAILADDR}" > $MAILFILE
        echo "From: fpc@freepascal.org" >> $MAILFILE
        echo "Subject: Daily compile routine" >> $MAILFILE
        echo "Reply-to: bugrep@freepascal.org" >> $MAILFILE
        # truncate the log to only the last 100 lines
        /usr/bin/tail -n 100 $LOGFILE >> $MAILFILE
        sendmail -f fpc@freepascal.org ${ERRORMAILADDR} < $MAILFILE >/dev/null 2>&1
fi

# End of script.
