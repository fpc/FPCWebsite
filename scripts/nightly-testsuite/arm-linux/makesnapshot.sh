#!/bin/bash
# Generic snapshot building
#

# set correct locale for widestring tests
export LANG=en_US.utf8
export DB_SSH_EXTRA="-i ${HOME}/.ssh/freepascal"
export TEST_SUBMITTER=pierre

if [ "$CHECKOUTDIR" == "" ]; then
    echo "No CHECKOUTDIR set"
    exit 1
fi

# Limit resources (8mb stack, 2 hours)
ulimit -s 8192 -t 7200

# PATH=".:${HOME}/bin:/bin:/usr/bin:/usr/local/bin:${HOME}/fpc-inst/bin"
(
date
echo "Starting makesnapshot in $CHECKOUTDIR at `date`"

# Clean, ignore errors makefile can be broken
cd $CHECKOUTDIR

if [ -d fpcsrc ] ; then
  cd fpcsrc
  FPCSRC=fpcsrc
else
  FPCSRC=.
fi
# rm -rf libgdb
#rm -f *.tar.gz

echo "Starting 'make distclean' in $CHECKOUTDIR at `date`"

make distclean TEST_FPC=$STARTPP FPC=$STARTPP || true
make -C tests distclean TEST_FPC=$STARTPP FPC=$STARTPP || true

# Run cvs update
cd $CHECKOUTDIR
echo "Starting 'svn cleanup' in $CHECKOUTDIR at `date`"

svn cleanup
echo "Starting 'svn up' in $CHECKOUTDIR at `date`"

svn up --non-interactive --accept theirs-full

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

echo "Starting 'make singlezipinstall' in $CHECKOUTDIR at `date`"
make singlezipinstall OS_TARGET=linux SNAPSHOT=1 FPC=$STARTPP $EXTRAOPT OPT="$OPT"

# copy current compiler to bin dir
cp $CHECKOUTDIR/$FPCSRC/compiler/$PPCCPU $INSTALLCOMPILER

if [ "${INSTALL_DIR}" != "" ] ; then
echo "Starting 'make install' in $CHECKOUTDIR at `date`"
make install INSTALL_PREFIX=${INSTALL_DIR} OS_TARGET=linux SNAPSHOT=1 PP=$INSTALLCOMPILER $EXTRAOPT
fi

if [ "$PPCCPU" = "" ]; then
  PPCCPU=ppc386
fi


# move snapshot
if [ "$FTPDIR" != "" ]; then
  cd $CHECKOUTDIR
  if [ $? = 0 ]; then
     #  FTP machine must trust this account. Copy public key to that machine
     # if needed Everything is set
     echo "Starting upload to $FTPDIR at `date`"
     scp $SCPOPT *.tar.gz ${FTPDIR}
  fi
fi

# run testsuite and store results in database
cd $CHECKOUTDIR/$FPCSRC/tests
# fpc -iV returns exitcode 1, workaround with || true
FPCVERSION=0
[ -f $INSTALLCOMPILER ] && FPCVERSION=`$INSTALLCOMPILER -iV || true`
for TESTOPTS in ${!TESTSUITEOPTS[@]}; do
  if [ "x$DISTCLEAN_BEFORE_TESTS" = "x1" ] ; then
      echo "Starting distclean in tests with option \"${TESTSUITEOPTS[TESTOPTS]}\" at `date`"
      make -C ../rtl distclean $EXTRAOPT FPC=$INSTALLCOMPILER
      make -C ../packages distclean $EXTRAOPT FPC=$INSTALLCOMPILER
  fi
  echo "Starting tests with option \"${TESTSUITEOPTS[TESTOPTS]}\" at `date`"
  make clean fulldb FPC=$INSTALLCOMPILER TEST_FPC=$INSTALLCOMPILER DIGESTVER=$FPCVERSION TEST_OPT="${TESTSUITEOPTS[TESTOPTS]}" TEST_BINUTILSPREFIX="$TEST_BINUTILSPREFIX" EMULATOR="$EMULATOR" V=1 TEST_VERBOSE=1 DOTESTOPT=-D
  echo "Ending tests with option \"${TESTSUITEOPTS[TESTOPTS]}\" at `date`"
done

# clean up, ignore errors... Makefile can be broken
# Do not put that into LOGFILE, tail is useless if you do
(cd $CHECKOUTDIR
# rm -rf libgdb
make distclean FPC=$INSTALLCOMPILER || true ) > /dev/null 2>&1
# make -C tests distclean TEST_FPC=$INSTALLCOMPILER || true

date
) > $LOGFILE 2>&1 </dev/null

# send result to webmaster
if [ "${ERRORMAILADDR}" != "" ]; then
        # Create email
	FPCVERSION=`$INSTALLCOMPILER -iV || true`
	FPCDATE=`$INSTALLCOMPILER -iD || true`
        echo "Test results on `date +%Y-%m-%d`" > $MAILFILE
        # truncate the log to only the last 100 lines
        /usr/bin/tail -n 100 $LOGFILE >> $MAILFILE
        mymutt -s "Free Pascal results on fpcarm $FPCVERSION `date +%Y/%m/%d` (Compiler date: $FPCDATE)" ${ERRORMAILADDR} -i $MAILFILE 
fi

# End of script.
