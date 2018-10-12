#!/bin/bash
# Generic snapshot building
#

# set correct locale for widestring tests

. $HOME/bin/fpc-versions.sh

if [ "X$1" != "X" ] ; then
  CPU_TARGET=$1
fi
if [ "X$2" != "X" ] ; then
  OS_TARGET=$2
fi

export LANG=en_US.utf8
export DB_SSH_EXTRA="-i ${HOME}/.ssh/freepascal"
export SCP_EXTRA="-i ${HOME}/.ssh/freepascal"
export TEST_USER=pierre

if [ "X${OS_TARGET}" == "X" ]; then
  OS_TARGET=linux
fi

if [ "X${CPU_TARGET}" == "X" ]; then
  CPU_TARGET=x86_64
fi

if [ "X${STARTPP}" == "X" ]; then
  STARTPP=ppcx64
fi

if [ "X$FPC_BIN" == "X" ] ; then
  eval FPC_BIN=\${FPC_BIN_${CPU_TARGET}}
  # echo "Using ${FPC_BIN} compiler"
fi

if [ "X$CHECKOUTDIR" == "X" ]; then
    # echo "No CHECKOUTDIR set, using $TRUNKDIR"
    CHECKOUTDIR=$TRUNKDIR
fi

if [ "X$BRANCH" == "X" ]; then
  if [ "X${CHECKOUTDIR%trunk*}" != "X${CHECKOUTDIR}" ] ; then
    BRANCH=${TRUNKDIRNAME}
  else
    BRANCH=${FIXESDIRNAME}
  fi
fi

if [ "X${LOGFILE}" == "X" ]; then
  LOGFILE=$HOME/logs/makesnapshot-${BRANCH}-${CPU_TARGET}-${OS_TARGET}.log
  # echo "Using logfile $LOGFILE"
fi

if [ "X${LONGLOGFILE}" == "X" ]; then
  LONGLOGFILE=${LOGFILE/.log/-long.log}
  # echo "Using longlogfile $LONGLOGFILE"
fi

if [ "X${FTPDIR}" == "X" ] ; then
    FTPDIR=fpc@ftpmaster.freepascal.org:ftp/snapshot/${BRANCH}/${CPU_TARGET}-${OS_TARGET}
    # echo "Saving to ftp server in $FTPDIR"
fi

if [ "X${SCP_EXTRA}" == "X" ] ; then
    SCP_EXTRA="-i $HOME/.ssh/freepascal"
fi

PATH=".:${HOME}/bin:/bin:/usr/bin:/usr/local/bin:${HOME}/pas/fpc-${RELEASEVERSION}/bin"
(
date=`date "+%Y-%m-%d %H:%M" `
echo $date
echo "$LONGLOGFILE started at $date" > $LONGLOGFILE

# Limit resources (64mb data, 8mb stack, 40 minutes)
# ulimit -d 65536 -s 8192 -t 2400
ulimit -t 2400

# Clean, ignore errors makefile can be broken
cd $CHECKOUTDIR
if [ -d fpcsrc ] ; then
  FPCSRCDIR=fpcsrc
else
  FPCSRCDIR=.
fi

rm -rf libgdb
rm -f *.tar.gz
(make distclean TEST_FPC=$STARTPP || true) > /dev/null
(make -C $FPCSRCDIR/tests distclean TEST_FPC=$STARTPP || true) > /dev/null

# Run cvs update
cd $CHECKOUTDIR
svn cleanup
svn up

if [ "X${GDBMI}" == "X" ] ; then
# add needed files (libgdb.a)
if [ "$LIBGDBZIP" != "" ]; then
        cd $CHECKOUTDIR/$FPCSRCDIR
        unzip -o ${LIBGDBZIP} >> $LONGLOGFILE 2>&1
fi
else
  EXTRAOPT="GDBMI=1"
fi


# make the snapshot!
cd $CHECKOUTDIR
# Regenerate native rtl units, needed for bs_units
echo "Running make -C ${FPCSRCDIR}/rtl clean all PP=$STARTPP"
make -C ${FPCSRCDIR}/rtl clean all PP=$STARTPP >> $LONGLOGFILE 2>&1
echo "Running make singlezipinstall OS_TARGET=${OS_TARGET} CPU_TARGET=${CPU_TARGET} SNAPSHOT=1 PP=$STARTPP $EXTRAOPT OPT=\"$OPT\"" 
make singlezipinstall OS_TARGET=${OS_TARGET} CPU_TARGET=${CPU_TARGET} SNAPSHOT=1 PP=$STARTPP $EXTRAOPT OPT="$OPT" >> $LONGLOGFILE 2>&1
res=$?

if [ $res -ne 0 ] ; then
  echo "make singlezipinstall failed, res=$res"
  exit $res
fi

if [ "$PPCCPU" == "" ]; then
  PPCCPU=${FPC_BIN}
fi

# copy current compiler to bin dir
if [ "X$INSTALLCOMPILER" != "X" ] ; then
  cp $CHECKOUTDIR/$FPCSRCDIR/compiler/$PPCCPU $INSTALLCOMPILER
else
  INSTALLCOMPILER=$CHECKOUTDIR/$FPCSRCDIR/compiler/$PPCCPU
fi

NEWFPC=$CHECKOUTDIR/$FPCSRCDIR/compiler/$PPCCPU
if [ ! -f $NEWFPC ] ; then
  PPCCPU=${PPCCPU/ppc/ppcross}
  NEWFPC=$CHECKOUTDIR/$FPCSRCDIR/compiler/$PPCCPU
fi

NEWCROSSFPC=${NEWFPC/ppc/ppcross}

if [ -f $NEWCROSSFPC ] ; then
  CROSS=1
else
  CROSS=0
  NEWCROSSFPC=$NEWFPC
fi

SNAPSHOTFILE=`ls -1 *.tar.gz`
READMEFILE=README-${SNAPSHOTFILE/.tar.gz/}

cat > $READMEFILE <<EOF
This snapshot $SNAPSHOTFILE was generated ${date} using:
make singlezipinstall OS_TARGET=${OS_TARGET} CPU_TARGET=${CPU_TARGET} SNAPSHOT=1 PP=$STARTPP $EXTRAOPT OPT="$OPT"
started using ${STARTPP}
${PPCCPU} -iVDW output is: `${NEWCROSSFPC} -iVDW`

uname -a of the machine is:
`uname -a`

"svnversion -c ." output is: `svnversion -c .`

"svnversion -c fpcsrc" output is: `svnversion -c fpcsrc`

Enjoy,

Pierre Muller
EOF

# upload snapshot
if [ "X$FTPDIR" != "X" ] ; then
  cd $CHECKOUTDIR
  if [ $? -eq 0 ]; then
     #  FTP machine must trust this account. Copy public key to that machine
     # if needed Everything is set
     ssh ${SCP_EXTRA} ${FTPDIR%:*} mkdir -p ${FTPDIR#*:}
     echo "Running scp ${SCP_EXTRA} $SNAPSHOTFILE $READMEFILE ${FTPDIR}"
     scp ${SCP_EXTRA} $SNAPSHOTFILE $READMEFILE ${FTPDIR}
     if [ $? -eq 0 ]; then   
       set ERRORMAILADDR = ""
     fi
  fi
fi

# run testsuite and store results in database
cd $CHECKOUTDIR/$FPCSRCDIR/tests
for TESTOPTS in ${!TESTSUITEOPTS[@]}; do
  # fpc -iV returns exitcode 1, workaround with || true
  FPCVERSION=0
  [ -f $INSTALLCOMPILER ] && FPCVERSION=`$INSTALLCOMPILER -iV || true`
  if [ "x$DISTCLEAN_BEFORE_TESTS" == "x1" ] ; then
    make -C ../rtl distclean $EXTRAOPT FPC=$INSTALLCOMPILER >> /dev/null
    make -C ../packages distclean $EXTRAOPT FPC=$INSTALLCOMPILER >> /dev/null
  fi
  if [ -f ../compiler/ppc ] ; then
    # We have a cross compiler,
    # We need to recompile the rtl using native compiler/ppc compiler
    echo Recompiling native rtl
    make -C ../rtl PP=`pwd`/../compiler/ppc
    export FPCFPMAKE=`pwd`/../compiler/ppc
  else
    export FPCFPMAKE= 
  fi

  echo "Running make clean fulldb FPC=$STARTPP TEST_OS_TARGET=${OS_TARGET} TEST_FPC=$INSTALLCOMPILER DIGESTVER=$FPCVERSION \
    TEST_OPT=\"${TESTSUITEOPTS[TESTOPTS]}\" TEST_BINUTILSPREFIX=\"$TEST_BINUTILSPREFIX\" EMULATOR=\"$EMULATOR\" V=1 TEST_VERBOSE=1"
  make clean fulldb FPC=$STARTPP TEST_OS_TARGET=${OS_TARGET} TEST_FPC=$INSTALLCOMPILER DIGESTVER=$FPCVERSION \
    TEST_OPT="${TESTSUITEOPTS[TESTOPTS]}" TEST_BINUTILSPREFIX="$TEST_BINUTILSPREFIX" EMULATOR="$EMULATOR" V=1 TEST_VERBOSE=1 >> $LONGLOGFILE 2>&1
done

# clean up, ignore errors... Makefile can be broken
cd $CHECKOUTDIR/$FPCSRCDIR
rm -rf libgdb
cd $CHECKOUTDIR
echo "Cleaning with ${MAKE} distclean"
make distclean > /dev/null || true
echo "Cleaning in tests with ${MAKE} distclean"
if [[ ( -n "$INSTALLCOMPILER" ) && ( -f "$INSTALLCOMPILER" ) ]] ; then
  make -C $FPCSRCDIR/tests distclean TEST_FPC="$INSTALLCOMPILER" > /dev/null || true
fi

date
) > $LOGFILE 2>&1 </dev/null

res=$?

# send result to webmaster
if [ "${ERRORMAILADDR}" != "" ]; then
        # Create email
        echo "To: ${ERRORMAILADDR}" > $MAILFILE
        echo "From: fpc@freepascal.org" >> $MAILFILE
        echo "Subject: Daily snapshot routine" >> $MAILFILE
        echo "Reply-to: bugrep@freepascal.org" >> $MAILFILE
        # truncate the log to only the last 100 lines
        /usr/bin/tail -n 100 $LOGFILE >> $MAILFILE
        sendmail -f pierre@freepascal.org ${ERRORMAILADDR} < $MAILFILE >/dev/null 2>&1
fi

exit $res
# End of script.
