#!/bin/bash
# Generic snapshot building
#

# set correct locale for widestring tests
export LANG=en_US.utf8
export DB_SSH_EXTRA="-i ${HOME}/.ssh/freepascal"
export SCP_EXTRA="-i ${HOME}/.ssh/freepascal"
export TEST_USER=pierre

if [ "$CHECKOUTDIR" == "" ]; then
    echo "No CHECKOUTDIR set"
    exit 1
fi
if [ "X$FPC" == "X" ]; then
  export FPC=$STARTPP
fi

PATH=".:${HOME}/bin:/bin:/usr/bin:/usr/local/bin"
(
# Limit resources (64mb data, 8mb stack, 40 minutes)
ulimit -d 65536 -s 8192 -t 2400
date

# Clean, ignore errors makefile can be broken
cd $CHECKOUTDIR
# Run cvs update
svn cleanup
svn up --accept theirs-conflict

if [ -d fpcsrc ] ; then
  FPCSRCDIR=fpcsrc
  svn cleanup
  svn up --accept theirs-conflict
else
  FPCSRCDIR=.
fi

rm -rf libgdb
rm -f *.tar.gz
make distclean TEST_FPC=$STARTPP || true
make -C $FPCSRCDIR/tests distclean TEST_FPC=$STARTPP || true

if [ "X${GDBMI}" == "X" ]; then
# add needed files (libgdb.a)
if [ "$LIBGDBZIP" != "" ]; then
        cd $CHECKOUTDIR/$FPCSRCDIR
        unzip -o ${LIBGDBZIP}
fi
else
  EXTRAOPT="GDBMI=1"
fi

NEEDED_OPT="-Fl/usr/lib/i386-linux-gnu"
EXTRAOPT="$EXTRAOPT OPT=\"$NEEDED_OPT\""

# make the snapshot!
cd $CHECKOUTDIR
make singlezipinstall OS_TARGET=linux SNAPSHOT=1 PP=$STARTPP $EXTRAOPT

if [ "$PPCCPU" == "" ]; then
  PPCCPU=ppc386
fi

# copy current compiler to bin dir
cp $CHECKOUTDIR/$FPCSRCDIR/compiler/$PPCCPU $INSTALLCOMPILER

# move snapshot
if [ "$FTPDIR" != "" ]; then
  cd $CHECKOUTDIR
  if [ $? = 0 ]; then
     #  FTP machine must trust this account. Copy public key to that machine
     # if needed Everything is set
     scp ${SCP_EXTRA} *.tar.gz ${FTPDIR}
     if [ $? = 0 ]; then   
       set ERRORMAILADDR = ""
     fi
  fi
fi

# run testsuite and store results in database
cd $CHECKOUTDIR/$FPCSRCDIR/tests
# fpc -iV returns exitcode 1, workaround with || true
FPCVERSION=0
[ -f $INSTALLCOMPILER ] && FPCVERSION=`$INSTALLCOMPILER -iV || true`
for TESTOPTS in ${!TESTSUITEOPTS[@]}; do
  if [ "x$DISTCLEAN_BEFORE_TESTS" == "x1" ] ; then
    make -C ../rtl distclean $EXTRAOPT FPC=$INSTALLCOMPILER
    make -C ../packages distclean $EXTRAOPT FPC=$INSTALLCOMPILER
  fi
  make clean fulldb FPC=$STARTPP TEST_FPC=$INSTALLCOMPILER $EXTRAOPT \
    DIGESTVER=$FPCVERSION  TEST_OPT="${TESTSUITEOPTS[TESTOPTS]} $NEEDED_OPT" \
    TEST_BINUTILSPREFIX="$TEST_BINUTILSPREFIX" EMULATOR="$EMULATOR" \
    V=1 TEST_VERBOSE=1
done

# clean up, ignore errors... Makefile can be broken
cd $CHECKOUTDIR/$FPCSRCDIR
rm -rf libgdb
cd $CHECKOUTDIR
make distclean || true
make -C $FPCSRCDIR/tests distclean TEST_FPC=$INSTALLCOMPILER || true

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
