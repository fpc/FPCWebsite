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

export MAKE=`which gmake`

if [ -z "$MAKE" ] ; then
  export MAKE=`which make`
fi

if [ -z "$MAKE" ] ; then
  echo "Fatal: no make found"
  exit
fi

# Limit resources (64mb data, 8mb stack, 40 minutes)
# ulimit -d 65536 -s 8192 -t 2400
ulimit -t 2400

PATH="${HOME}/bin:/bin:/usr/bin:/usr/local/bin:/usr/pkg/bin"
(
date

ulimit -a

# Clean, ignore errors makefile can be broken
cd $CHECKOUTDIR
if [ -d fpcsrc ] ; then
  FPCSRCDIR=fpcsrc
else
  FPCSRCDIR=.
fi

rm -rf libgdb
rm -f *.tar.gz
echo "Starting $MAKE distclean"
$MAKE distclean FPC=$STARTPP
res=$?
echo "$MAKE distclean ended, res=$res"
echo "Starting $MAKE distclean in tests"
$MAKE -C $FPCSRCDIR/tests distclean TEST_FPC=$STARTPP FPC=$STARTPP
res=$?
echo "$MAKE distclean in tests ended, res=$res"

# Run cvs update
cd $CHECKOUTDIR
SVN=`which svn`

if [ -n "$SVN" ] ; then
  $SVN cleanup
  $SVN up
fi

#EXTRAOPT="OPT=\"$OPT\""
if [ "${STARTPP/ppc386/}" != "${STARTPP}" ] ; then
  if [ -d /lib/i386 ] ; then
    NEEDED_OPT="$NEEDED_OPT -Fl/lib/i386"
  fi
  if [ -d /usr/lib/i386 ] ; then
    NEEDED_OPT="$NEEDED_OPT -Fl/usr/lib/i386"
  fi
  if [ -d /lib32 ] ; then
    NEEDED_OPT="$NEEDED_OPT -Fl/lib32"
  fi
  if [ -d /usr/lib32 ] ; then
    NEEDED_OPT="$NEEDED_OPT -Fl/usr/lib32"
  fi
  if [ -d /usr/local/lib32 ] ; then
    NEEDED_OPT="$NEEDED_OPT -Fl/usr/local/lib32"
  fi
  SUFFIX=-32
  if [ "$CPU" != "i386" ] ; then
    NEEDED_OPT="-Xd $NEEDED_OPT"
    OS=`${STARTPP} -iTO`
    export BINUTILSPREFIX=i386-${OS}-
    export FPCMAKEOPT="$NEEDED_OPT -XP$BINUTILSPREFIX"
  fi
else
  NEEDED_OPT=
  SUFFIX=-64
fi

if [ -z "$OS" ] ; then
  OS=`uname -s | tr '[:upper:]' '[:lower:]' `
  # echo "OS is $OS"
fi

if [ "$OS" == "openbsd" ] ; then
  NEEDED_OPT+=" -dFPC_USE_LIBC"
fi

# add needed files (libgdb.a)
if [ -n "$LIBGDBZIP" ]; then
  cd $CHECKOUTDIR/$FPCSRCDIR
  unzip -o ${LIBGDBZIP}
fi

# make the snapshot!
cd $CHECKOUTDIR
echo "Starting $MAKE info singlezipinstall SNAPSHOT=1 PP=$STARTPP $EXTRAOPT OPT=\"$OPT $NEEDED_OPT\""
$MAKE info singlezipinstall SNAPSHOT=1 PP=$STARTPP $EXTRAOPT OPT="$OPT $NEEDED_OPT"
res=$?
echo "$MAKE info singlezipinstall SNAPSHOT=1 PP=$STARTPP $EXTRAOPT OPT=\"$OPT $NEEDED_OPT\" ended, res=$res"

if [ -z "$PPCCPU" ]; then
  PPCCPU=ppc386
fi

# copy current compiler to bin dir
if [ -n "$INSTALLCOMPILER" ] ; then
  echo "cp $CHECKOUTDIR/$FPCSRCDIR/compiler/$PPCCPU $INSTALLCOMPILER"
  cp $CHECKOUTDIR/$FPCSRCDIR/compiler/$PPCCPU $INSTALLCOMPILER
fi

# move snapshot
echo "Upload snapshot"
if [ "$FTPDIR" != "" ]; then
  cd $CHECKOUTDIR
  if [ $? -eq 0 ]; then
     #  FTP machine must trust this account. Copy public key to that machine
     # if needed Everything is set
     echo "scp ${SCP_EXTRA} *.tar.gz ${FTPDIR}"
     scp ${SCP_EXTRA} *.tar.gz ${FTPDIR}
     if [ $? -eq 0 ]; then   
       set ERRORMAILADDR = ""
     fi
       else
	   echo "Error moving to $CHECKOUTDIR"
  fi
fi

# run testsuite and store results in database
cd $CHECKOUTDIR/$FPCSRCDIR/tests
# fpc -iV returns exitcode 1, workaround with || true
FPCVERSION=0
[ -f $INSTALLCOMPILER ] && FPCVERSION=`$INSTALLCOMPILER -iV || true`
for TESTOPTS in ${!TESTSUITEOPTS[@]}; do
  if [ "x$DISTCLEAN_BEFORE_TESTS" == "x1" ] ; then
    $MAKE -C ../rtl distclean $EXTRAOPT FPC=$INSTALLCOMPILER > /dev/null
    $MAKE -C ../packages distclean $EXTRAOPT FPC=$INSTALLCOMPILER > /dev/null
  fi
  $MAKE clean fulldb FPC=$STARTPP TEST_FPC=$INSTALLCOMPILER DIGESTVER=$FPCVERSION  TEST_OPT="${TESTSUITEOPTS[TESTOPTS]}" TEST_BINUTILSPREFIX="$TEST_BINUTILSPREFIX" EMULATOR="$EMULATOR" V=1 TEST_VERBOSE=1
done

# clean up, ignore errors... Makefile can be broken
cd $CHECKOUTDIR/$FPCSRCDIR
# rm -rf libgdb
cd $CHECKOUTDIR
$MAKE distclean FPC=$INSTALLCOMPILER > /dev/null
$MAKE -C $FPCSRCDIR/tests distclean TEST_FPC=$INSTALLCOMPILER FPC=$INSTALLCOMPILER > /dev/null

date
) > $LOGFILE 2>&1 </dev/null

# send result to webmaster
if [ "${ERRORMAILADDR}" != "" ]; then
        # Create email
        echo "To: ${ERRORMAILADDR}" > $MAILFILE
        echo "From: fpc@freepascal.org" >> $MAILFILE
        echo "Subject: Free pascal makesnapshot.sh script for $FTPDIR" >> $MAILFILE
        echo "Reply-to: bugrep@freepascal.org" >> $MAILFILE
        # truncate the log to only the last 100 lines
        /usr/bin/tail -n 100 $LOGFILE >> $MAILFILE
        mutt -x -s "Free Pascal $0 results for $FTPDIR" \
     -i $MAILFILE -- pierre@freepascal.org < /dev/null | tee  ${MAILFILE}.log

fi

# End of script.
