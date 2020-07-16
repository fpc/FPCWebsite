#!/bin/bash
# Generic snapshot building
#

if [ -z "$LOGFILE" ] ; then
  LOGFILE=$HOME/logs/snapshot.log
fi

echo "Starting $0 script at `date +%Y-%m-%d-%H-%M`" > $LOGFILE

. ${HOME}/bin/fpc-versions.sh

set -u

# set correct locale for widestring tests
export LANG=en_US.utf8
export DB_SSH_EXTRA="-i ${HOME}/.ssh/freepascal"
export SCP_EXTRA="-i ${HOME}/.ssh/freepascal"
export MUTTATTACH=
export RECOMPILE_COMPILER_FIRST=0

export PATH="${PATH}:${HOME}/pas/fpc-${RELEASEVERSION}/bin:${HOME}/bin"
if [ -z "${PPCCPU:-}" ] ; then
  export PPCCPU=fpc
fi
if [ -n "${STARTPP:-}" ] ; then
  export FPCCPU=$STARTPP
fi
if [ -z "${HOSTNAME:-}" ] ; then
  HOSTNAME=`uname -n`
fi


if [ "X`which $PPCCPU`" == "X" ] ; then
  RECOMPILE_COMPILER_FIRST=1
  echo "Re-compiling compiler first because $PPCCPU is not in PATH" >> $LOGFILE
fi

export SOURCE_CPU=`${PPCCPU} -iSP`
export TARGET_CPU=`${PPCCPU} -iTP`
if [ "$SOURCE_CPU" != "$TARGET_CPU" ] ; then
  RECOMPILE_COMPILER_FIRST=1
  echo "Re-compiling compiler first because $PPCCPU is cross-cpu compiler" >> $LOGFILE
fi

export SOURCE_OS=`${PPCCPU} -iSO`
export TARGET_OS=`${PPCCPU} -iTO`
if [ "$SOURCE_OS" != "$TARGET_OS" ] ; then
  RECOMPILE_COMPILER_FIRST=1
  echo "Re-compiling compiler first because $PPCCPU is cross-os compiler" >> $LOGFILE
fi

echo "Running 32-bit sparc fpc on sparc64 machine, needs special options" >> $LOGFILE
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
export gcc_libs_32=` gcc -m32 -print-search-dirs | sed -n "s;libraries: =;;p" | sed "s;:; ;g" | xargs realpath -m | sort | uniq | xargs  ls -1d 2> /dev/null `
NATIVE_OPT32="$NATIVE_OPT32 "
if [ -n "$gcc_libs_32" ] ; then
  for dir in $gcc_libs_32 ; do
    if [ -d "$dir" ] ; then
      if [ "${NATIVE_OPT32/-Fl${dir} /}" == "$NATIVE_OPT32" ] ; then
        NATIVE_OPT32="$NATIVE_OPT32-Fl$dir "
      fi
    fi
  done
fi
SPARC32_GCC_DIR=` gcc -m32 -print-libgcc-file-name | xargs dirname`
if [ -d "$SPARC32_GCC_DIR" ] ; then
  NATIVE_OPT32="$NATIVE_OPT32 -Fl$SPARC32_GCC_DIR"
fi

NATIVE_OPT64=""
export gcc_libs_64=` gcc -m64 -print-search-dirs | sed -n "s;libraries: =;;p" | sed "s;:; ;g" | xargs realpath -m | sort | uniq | xargs  ls -1d 2> /dev/null `
NATIVE_OPT64="$NATIVE_OPT64 "
if [ -n "$gcc_libs_64" ] ; then
  for dir in $gcc_libs_64 ; do
    if [ -d "$dir" ] ; then
      if [ "${NATIVE_OPT64/-Fl${dir} /}" != "$NATIVE_OPT64" ] ; then
        NATIVE_OPT64="$NATIVE_OPT64 -Fl$dir"
      fi
    fi
  done
fi
SPARC64_GCC_DIR=` gcc -m64 -print-libgcc-file-name | xargs dirname`
if [ -d "$SPARC64_GCC_DIR" ] ; then
  NATIVE_OPT64="$NATIVE_OPT64 -Fl$SPARC64_GCC_DIR"
fi

if [ "${HOSTNAME}" == "stadler" ]; then
  HOST_PC=fpc-sparc64
  USER=pierre
  if [ "X$TARGET_CPU" == "Xsparc" ] ; then
    export ASTARGET=-32
    export NEEDED_OPT="$NATIVE_OPT32"
  else
    export NEEDED_OPT="$NATIVE_OPT64"  
  fi
  # Set until I find out how to cross-compile GDB for sparc32
  export NOGDB=1
  export DO_TESTS=1
elif [ "${HOSTNAME}" == "gcc202" ]; then
  USER=pierre
  if [ "X$TARGET_CPU" == "Xsparc" ] ; then
    export ASTARGET=-32
    export NEEDED_OPT="$NATIVE_OPT32"
  else
    export NEEDED_OPT="$NATIVE_OPT64"  
  fi
  # Set until I find out how to cross-compile GDB for sparc32
  export NOGDB=1
elif [ "${HOSTNAME}" == "deb4g" ]; then
  HOST_PC=fpc-sparc64-T5
  USER=pierre
  if [ "X$TARGET_CPU" == "Xsparc" ] ; then
    export ASTARGET=-32
    export NEEDED_OPT="$NATIVE_OPT32"
  else
    export NEEDED_OPT="$NATIVE_OPT64"  
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
if [ -z "${FPC:-}" ]; then
  export FPC=$STARTPP
fi


function do_snapshot ()
{
# Limit resources (64mb data, 8mb stack, 40 minutes)
# ulimit -d 65536 -s 8192 -t 2400
ulimit -s 8192 -t 2400 2> /dev/null
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

STARTPPNAME=`basename $STARTPP`

if [ $RECOMPILE_COMPILER_FIRST -eq 1 ] ; then
  make -C $FPCSRCDIR/compiler distclean cycle OS_TARGET=$TARGET_OS CPU_TARGET=$TARGET_CPU FPC=fpc OPT=-n
  NEW_FPC=`pwd`/$FPCSRCDIR/compiler/$STARTPPNAME
  export TARGET_VERSION=`$NEW_FPC -iV`
  export INSTALL_PREFIX=${HOME}/pas/fpc-${TARGET_VERSION}
  make -C $FPCSRCDIR/compiler installsymlink FPC=$NEW_FPC
fi

if [ -z "${GDBMI:-}" ]; then
# add needed files (libgdb.a)
if [ -n "${LIBGDBZIP:-}" ]; then
        cd $CHECKOUTDIR/$FPCSRCDIR
        unzip -o ${LIBGDBZIP}
fi
else
  EXTRAOPT="GDBMI=1"
fi
if [ "X$TARGET_CPU" == "Xsparc" ] ; then
  NEEDED_OPT="$NATIVE_OPT32"
else
  NEEDED_OPT="$NATIVE_OPT64"
fi

EXTRA_MAKE_OPT="${EXTRA_MAKE_OPT:-} ${EXTRAOPT:-} NOGDB=1"
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
if [ -z "${FTPDIR:-}" ] ; then
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
[ -f "${INSTALLCOMPILER:-}" ] && FPCVERSION=`$INSTALLCOMPILER -iV || true`
if [ -n "${TESTSUITEOPTS:-}" ] ; then
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
fi

# clean up, ignore errors... Makefile can be broken
cd $CHECKOUTDIR/$FPCSRCDIR
rm -rf libgdb
cd $CHECKOUTDIR
(make distclean || true) > /dev/null 2>&1
(make -C $FPCSRCDIR/tests distclean TEST_FPC=$INSTALLCOMPILER || true) > /dev/null 2>&1

echo "Ending at `date +%Y-%m-%d-%H-%M`" 

}

res=0
do_snapshot >> $LOGFILE 2>&1 </dev/null

echo "Starting $0 script at `date +%Y-%m-%d-%H-%M`" >> $LOGFILE

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
