#!/bin/bash
# Generic snapshot building
#
. ${HOME}/bin/fpc-versions.sh

# set correct locale for widestring tests
export LANG=en_US.utf8
export DB_SSH_EXTRA="-i ${HOME}/.ssh/freepascal"
export SCP_EXTRA="-i ${HOME}/.ssh/freepascal"
export MUTTATTACH=

export PATH="${HOME}/pas/fpc-${RELEASEVERSION}/bin:${HOME}/bin:/bin:/usr/bin:/usr/local/bin"

if [ "X$PPCCPU" == "X" ] ; then
  export PPCCPU=fpc
fi
if [ "X$STARTPP" != "X" ] ; then
  export FPCCPU=$STARTPP
fi

if [ "X`which $PPCCPU`" == "X" ] ; then
  # No release of that compiler, use trunk
  export PATH="${HOME}/pas/fpc-${TRUNKVERSION}/bin:${PATH}"
  export MAKE_EXTRA_OPT="$MAKE_EXTRA_OPT OVERRIDEVERSIOCHECK=1"
fi

if [ "X`which $PPCCPU`" == "X" ] ; then
  echo "No $PPCCPU found"
  exit 1
fi

export TARGET_CPU=`${PPCCPU} -iTP`

export TARGET_OS=`${PPCCPU} -iTO`

  echo "Running	32bit sparc fpc on sparc64 machine, needs special options" >> $LOGFILE
  NATIVE_OPT32="-ao-32"
  if [ -d /lib32 ] ; then
    NATIVE_OPT32="$NATIVE_OPT32 -Fl/lib32"
  fi
  if [ -d /usr/lib32 ] ; then
    NATIVE_OPT32="$NATIVE_OPT32 -Fl/usr/lib32"
  fi
  if [ -d /usr/sparc64-linux-gnu/lib32 ] ; then
    NATIVE_OPT32="$NATIVE_OPT32 -Fl/usr/sparc64-linux-gnu/lib32"
  fi
  if [ -d /usr/local/lib32 ] ; then
    NATIVE_OPT32="$NATIVE_OPT32 -Fl/usr/local/lib32"
  fi
  if [ -d $HOME/lib32 ] ; then
    NATIVE_OPT32="$NATIVE_OPT32 -Fl$HOME/gnu/lib32"
  fi
  if [ -d $HOME/lib32 ] ; then
    NATIVE_OPT32="$NATIVE_OPT32 -Fl$HOME/lib32"
  fi
  if [ -d $HOME/local/lib32 ] ; then
    NATIVE_OPT32="$NATIVE_OPT32 -Fl$HOME/local/lib32"
  fi


if [ "${HOSTNAME}" == "stadler" ]; then
  HOST_PC=fpc-sparc64
  USER=pierre
  if [ "X$TARGET_CPU" == "Xsparc" ] ; then
    export ASTARGET=-32
    export NEEDED_OPT="$NEEDED_OPT32"
  fi
  # Set until I find out how to cross-compile GDB for sparc32
  export NOGDB=1
  export DO_TESTS=1
elif [ "${HOSTNAME}" == "gcc202" ]; then
  USER=pierre
  if [ "X$TARGET_CPU" == "Xsparc" ] ; then
    export ASTARGET=-32
    export NEEDED_OPT="$NEEDED_OPT32"
  fi
  # Set until I find out how to cross-compile GDB for sparc32
  export NOGDB=1
elif [ "${HOSTNAME}" == "deb4g" ]; then
  HOST_PC=fpc-sparc64-T5
  USER=pierre
  if [ "X$TARGET_CPU" == "Xsparc" ] ; then
    export ASTARGET=-32
    export NEEDED_OPT="$NEEDED_OPT32"
  fi
  # Set until I find out how to cross-compile GDB for sparc32
  export NOGDB=1
  export DO_TESTS=0
else
  HOST_PC=${HOSTNAME}
  USER=pierre
  export DO_TESTS=0
fi

export TEST_USER=$USER

if [ "$CHECKOUTDIR" == "" ]; then
    echo "No CHECKOUTDIR set"
    exit 1
fi
if [ "X$FPC" == "X" ]; then
  export FPC=$STARTPP
fi


function do_snapshot ()
{
# Limit resources (64mb data, 8mb stack, 40 minutes)
# ulimit -d 65536 -s 8192 -t 2400
ulimit -s 8192 -t 2400
echo "Starting at `date +%Y-%m-%d-%H-%M`" 

echo "PATH=\"${PATH}\""
echo "$PPCCPU is \"`which $PPCCPU`\""

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
(make distclean TEST_FPC=$STARTPP || true) > /dev/null 2>&1
(make -C $FPCSRCDIR/tests distclean TEST_FPC=$STARTPP || true) > /dev/null 2>&1

if [ "X${GDBMI}" == "X" ]; then
# add needed files (libgdb.a)
if [ "$LIBGDBZIP" != "" ]; then
        cd $CHECKOUTDIR/$FPCSRCDIR
        unzip -o ${LIBGDBZIP}
fi
else
  EXTRAOPT="GDBMI=1"
fi
if [ "X$TARGET_CPU" == "Xsparc" ] ; then
  NEEDED_OPT="-ao-32 -Fl/usr/lib32 -Fo/usr/lib32 -Fl/usr/sparc64-linux-gnu/lib32 -Fl/home/pierre/local/lib32"
else
  NEEDED_OPT=
fi
EXTRA_MAKE_OPT="$EXTRA_MAKE_OPT $EXTRAOPT NOGDB=1"
if [ "X$TARGET_CPU" == "Xsparc" ] ; then
  EXTRA_MAKE_OPT="$EXTRA_MAKE_OPT ASTARGET=-32"
  export ASTARGET=-32
fi
export NOGDB=1
# make the snapshot!
cd $CHECKOUTDIR
echo "Starting make singlezipinstall OS_TARGET=$TARGET_OS SNAPSHOT=1 PP=$STARTPP CPU_TARGET=$TARGET_CPU $EXTRA_MAKE_OPT OPT=\"$NEEDED_OPT\""
make singlezipinstall OS_TARGET=$TARGET_OS SNAPSHOT=1 PP=$STARTPP CPU_TARGET=$TARGET_CPU $EXTRA_MAKE_OPT OPT="$NEEDED_OPT"
res=$?
if [ $res -ne 0 ] ; then
  echo "make singlezipinstall failed res=$res"
  export MUTTATTACH="-a $LOGFILE"
else
  echo "Ended make singlezipinstall OK"
fi

if [ "X$TARGET_CPU" == "Xsparc64" ] ; then
  NEWPPCCPU=`pwd`/fpcsrc/compiler/ppcsparc64
else
  NEWPPCCPU=`pwd`/fpcsrc/compiler/ppcsparc
fi

SNAPSHOTFILE=`ls -1 *fpc-*.tar.gz 2> /dev/null`
READMEFILE=README-${SNAPSHOTFILE/.tar.gz/}
date=`date +%Y-%m-%d`

cat > $READMEFILE <<EOF
This snapshot $SNAPSHOTFILE was generated ${date} using:
make singlezipinstall OS_TARGET=${OS_TARGET} CPU_TARGET=${CPU_TARGET} SNAPSHOT=1 PP=$STARTPP CROSSOPT="$CROSSOPT" OPT="$OPT"
started using ${STARTPP}
${NEWPPCCPU} -iVDW output is: `${NEWPPCCPU} -iVDW`

uname -a of the machine is:
`uname -a`

"svnversion -c ." output is: `svnversion -c .`

"svnversion -c fpcsrc" output is: `svnversion -c fpcsrc`

Enjoy,

Pierre Muller
EOF


# copy current compiler to bin dir
if [ -f $CHECKOUTDIR/$FPCSRCDIR/compiler/$PPCCPU ] ; then
  echo "cp $CHECKOUTDIR/$FPCSRCDIR/compiler/$PPCCPU $INSTALLCOMPILER"
  cp $CHECKOUTDIR/$FPCSRCDIR/compiler/$PPCCPU $INSTALLCOMPILER
else
  echo "New executable $CHECKOUTDIR/$FPCSRCDIR/compiler/$PPCCPU not found" 
  export MUTTATTACH="-a $LOGFILE"
fi

# move snapshot
if [ "X$FTPDIR" == "X" ] ; then
  echo "variable FTPDIR not set"
  export MUTTATTACH="-a $LOGFILE"
else
  cd $CHECKOUTDIR
  res=$?
  if [ $res -ne 0 ] ; then
    echo "ch to $CHECKOUTDIR failed"
  export MUTTATTACH="-a $LOGFILE"
  else
    #  FTP machine must trust this account. Copy public key to that machine
    # if needed Everything is set
    echo "Starting scp ${SCP_EXTRA} *.tar.gz ${FTPDIR}"
    ssh ${SCP_EXTRA} ${FTPDIR//:*/} mkdir -p ${FTPDIR//*:/}
    scp ${SCP_EXTRA} *.tar.gz ${READMEFILE} ${FTPDIR}
    res=$?
    if [ $res -ne 0 ] ; then
      echo "scp failed res=$res"
      export MUTTATTACH="-a $LOGFILE"
    else
      echo 'set ERRORMAILADDR = ""'
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
(make distclean || true) > /dev/null 2>&1
(make -C $FPCSRCDIR/tests distclean TEST_FPC=$INSTALLCOMPILER || true) > /dev/null 2>&1

echo "Ending at `date +%Y-%m-%d-%H-%M`" 

}

res=0
do_snapshot > $LOGFILE 2>&1 </dev/null

# send result to webmaster
if [ "${ERRORMAILADDR}" != "" ]; then
        # Create email
        echo "To: ${ERRORMAILADDR}" > $MAILFILE
        echo "From: fpc@freepascal.org" >> $MAILFILE
        echo "Subject: Daily compile routine" >> $MAILFILE
        echo "Reply-to: bugrep@freepascal.org" >> $MAILFILE
        # truncate the log to only the last 100 lines
        if [ $res -ne 0 ] ; then
          /usr/bin/tail -n 100 $LOGFILE >> $MAILFILE
        else
          echo "Script $0 finished successfully" >> $MAILFILE
        fi
        # sendmail -f fpc@freepascal.org ${ERRORMAILADDR} < $MAILFILE >/dev/null 2>&1
	mutt -x -s "Daily makesnapshot.sh script on ${HOST_PC} for $CHECKOUTDIR" \
     	  -i $MAILFILE $MUTTATTACH -- ${ERRORMAILADDR}  < /dev/null | tee  ${report}.log

fi


# End of script.
