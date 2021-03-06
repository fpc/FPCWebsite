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

hostname=`hostname`
hostname=${hostname//.*/}

FULL_TARGET=${CPU_TARGET}-${OS_TARGET}

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

PATH="${HOME}/pas/fpc-${RELEASEVERSION}/bin:${HOME}/bin:/bin:/usr/bin:/usr/local/bin"
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
if [ "X$HOSTNAME" == "Xgcc123" ] ; then
  mkdir -p snapshots
  mv -f *.tar.gz snapshots
else
  rm -f *.tar.gz
fi

(make distclean TEST_FPC=$STARTPP || true) > /dev/null
(make -C $FPCSRCDIR/tests distclean TEST_FPC=$STARTPP || true) > /dev/null

# Run cvs update
cd $CHECKOUTDIR

if [ -z "${SKIP_SVN}" ] ; then
  svn cleanup --include-externals
  svn up
fi

if [ "X${GDBMI}" == "X" ] ; then
# add needed files (libgdb.a)
if [ "$LIBGDBZIP" != "" ]; then
        cd $CHECKOUTDIR/$FPCSRCDIR
        unzip -o ${LIBGDBZIP} >> $LONGLOGFILE 2>&1
fi
else
  EXTRAOPT="$EXTRAOPT GDBMI=1"
fi

if [ -z "$global_sysroot" ] ; then
  global_sysroot=$HOME/sys-root
fi

is_64=0
case $CPU_TARGET in
  aarch64|powerpc64|riscv64|sparc64|x86_64) is_64=1;;
esac

# Add a directory to CROSSOPT
# if pattern is found
sysroot=
dir_found=0

function add_dir ()
{
  pattern="$1"
  file_list=

  if [ "${pattern:0:1}" == "-" ] ; then
    find_expr="${pattern}"
    pattern="$2"
  else
    find_expr=
  fi

  echo "add_dir: testing \"$pattern\""
  if [ "${pattern/\//_}" != "$pattern" ] ; then
    if [ -f "$sysroot/$pattern" ] ; then
      file_list=$pattern
    else
      find_expr="-wholename"
    fi
  else
    find_expr="-iname"
  fi

  if [ -z "$file_list" ] ; then
    file_list=` find -L $sysroot/ $find_expr "$pattern" `
  fi

  for file in $file_list ; do
    use_file=0
    file_type=`file $file`
    if [ "$file_type" != "${file_type//symbolic link/}" ] ; then
      ls_line=`ls -l $file`
      echo "ls line is \"$ls_line\""
      link_target=${ls_line/* /}
      echo "link target is \"$link_target\""
      if [[ "${link_target:0:1}" == / || "${link_target:0:2}" == ~[/a-z] ]] ; then
        is_absolute=1
        add_dir $link_target
      else
        is_absolute=0
        dir=`dirname $file`
        add_dir $dir/$link_target
      fi
      continue
    fi

    file_is_64=`echo $file_type | grep "64-bit" `
    if [[ ( -n "$file_is_64" ) && ( $is_64 -eq 1 ) ]] ; then
      use_file=1
    fi
    if [[ ( -z "$file_is_64" ) && ( $is_64 -eq 0 ) ]] ; then
      use_file=1
    fi
    if [ $use_file -eq 0 ] ; then
      file_is_64=`objdump -f $file | grep "format.*64" `
      if [[ ( -n "$file_is_64" ) && ( $is_64 -eq 1 ) ]] ; then
        use_file=1
      fi
      if [[ ( -z "$file_is_64" ) && ( $is_64 -eq 0 ) ]] ; then
        use_file=1
      fi
    fi
    if [ "$OS_TARGET" == "aix" ] ; then
      # AIX puts 32 and 64 bit versions into the same library
      use_file=1
    fi
    echo "file=$file, is_64=$is_64, file_is_64=\"$file_is_64\""
    if [ $use_file -eq 1 ] ; then
      file_dir=`dirname $file`
      echo "Adding $file_dir"
      if [ "${CROSSOPT/-Fl$file_dir /}" == "$CROSSOPT" ] ; then
        echo "Adding $file_dir directory to library path list"
        CROSSOPT="$CROSSOPT -Fl$file_dir "
        dir_found=1
      fi
    fi
  done
}
 
CROSSOPT_ORIG="$CROSSOPT"
sysroot=

if [ -d "$global_sysroot/${FULL_TARGET}" ] ; then
  sysroot=$global_sysroot/${FULL_TARGET}
else
  # For Android we set special variables if NDK is present
  if [ "${OS_TARGET}" == "android" ] ; then
    if [ "${CPU_TARGET}" == "aarch64" ] ; then
      if [ -n "$AARCH64_ANDROID_ROOT" ] ; then
        sysroot=$AARCH64_ANDROID_ROOT
      fi
    elif [ "${CPU_TARGET}" == "arm" ] ; then
      if [ -n "$ARM_ANDROID_ROOT" ] ; then
        sysroot=$ARM_NDROID_ROOT
      fi
    elif [ "${CPU_TARGET}" == "i386" ] ; then
      if [ -n "$I386_ANDROID_ROOT" ] ; then
        sysroot=$I386_ANDROID_ROOT
      fi
    elif [ "${CPU_TARGET}" == "mipsel" ] ; then
      if [ -n "$MIPSEL_ANDROID_ROOT" ] ; then
        sysroot=$MIPSEL_ANDROID_ROOT
      fi
    elif [ "${CPU_TARGET}" == "x86_64" ] ; then
      if [ -n "$X86_64_ANDROID_ROOT" ] ; then
        sysroot=$X86_64_ANDROID_ROOT
      fi
    fi
  fi 
fi

# Avoid putting --sysroot several time,
# reset sysroot variable if -k--sysroot= is found
if [ "${CROSSOPT/-k--sysroot=/}" != "${CROSSOPT}" ] ; then
  sysroot=
fi

if [ -n "$sysroot" ] ; then
  echo "Checking for BUILDFULLNATIVE=1, sysroot=\"$sysroot\""
  dir_found=0
  add_dir "crt1.o"
  add_dir "crti.o"
  add_dir "crtbegin.o"
  add_dir "libc.a"
  add_dir -regex "'.*/libc\.so\..*'"
  add_dir "ld.so"
  add_dir -regex "'.*/ld\.so\.[0-9.]*'"
  if [ "${OS_TARGET}" == "linux" ] ; then
    add_dir -regex "'.*/ld-linux.*\.so\.*[0-9.]*'"
  fi
  if [ "${OS_TARGET}" == "haiku" ] ; then
    add_dir "libroot.so"
    add_dir "libnetwork.so"
  fi
  if [ "${OS_TARGET}" == "beos" ] ; then
    add_dir "libroot.so"
    add_dir "libnetwork.so"
  fi
  if [ "$OS_TARGET" == "aix" ] ; then
    add_dir "libm.a"
    add_dir "libbsd.a"
    if [ $is_64 -eq 1 ] ; then
      add_dir "crt*_64.o"
    fi
  fi
  if [ $dir_found -eq 1 ] ; then
    export BUILDFULLNATIVE=1
    CROSSOPT="$CROSSOPT -Xd -XR$sysroot"
    if [ "${OS_TARGET}" != "openbsd" ] ; then
      # OpenBSD linkers do not support --sysroot option by default
      CROSSOPT="$CROSSOPT -Xd -k--sysroot=$sysroot"
    fi
    echo "Using BUILDFULLNATIVE=1 with CROSSOPT=\"$CROSSOPT\""
    # -Xr is only supported for these OSes:
    #  suppported_targets_x_smallr = systems_linux + systems_solaris + systems_android
    #                       + [system_i386_haiku,system_x86_64_haiku]
    #                       + [system_i386_beos]
    #                       + [system_m68k_amiga];
    if [[ ( "${OS_TARGET}" = "linux" )
          || ( "${OS_TARGET}" = "solaris" )
          || ( "${OS_TARGET}" = "haiku" )
          || ( "${OS_TARGET}" = "android" )
          || (( "${OS_TARGET}" = "amiga" ) && ( "${CPU_TARGET}" = "m68k" ))
       ]] ; then
      CROSSOPT="$CROSSOPT -Xr$sysroot"
    fi
    echo "CROSSOPT set to \"$CROSSOPT\""
    export OPTLEVEL3="$CROSSOPT"
  else
    echo "No library found, not using sysroot"
  fi
fi
# make the snapshot!
cd $CHECKOUTDIR

if [ "X$BUILDFULLNATIVE" == "X1" ] ; then
  if [ "${MAKE_EXTRA/BUILDFULLNATIVE=1/}" == "${MAKE_EXTRA}" ] ; then
    MAKE_EXTRA+=" BUILDFULLNATIVE=1"
  fi
fi

# Regenerate native rtl units, needed for bs_units
echo "Running make -C ${FPCSRCDIR}/rtl clean all PP=$STARTPP"
make -C ${FPCSRCDIR}/rtl clean all PP=$STARTPP >> $LONGLOGFILE 2>&1
echo "Running make singlezipinstall $MAKE_EXTRA OS_TARGET=${OS_TARGET} CPU_TARGET=${CPU_TARGET} SNAPSHOT=1 PP=$STARTPP CROSSOPT=\"$CROSSOPT\" OPT=\"$OPT\"" 
make singlezipinstall $MAKE_EXTRA OS_TARGET=${OS_TARGET} CPU_TARGET=${CPU_TARGET} SNAPSHOT=1 PP=$STARTPP CROSSOPT="$CROSSOPT" OPT="$OPT" >> $LONGLOGFILE 2>&1
res=$?

if [ $res -ne 0 ] ; then
  echo "make singlezipinstall failed, res=$res"
  no_libgdb_error=`grep "No libgdb.a found, supply NOGDB=1" $LONGLOGFILE `
  if [ -n "$no_libgdb_error" ] ; then
    echo "Trying a second time with NOGDB=1"
    echo "Running make singlezipinstall OS_TARGET=${OS_TARGET} CPU_TARGET=${CPU_TARGET} SNAPSHOT=1 $MAKE_EXTRA PP=$STARTPP CROSSOPT=\"$CROSSOPT\" OPT=\"$OPT\" NOGDB=1" >> $LONGLOGFILE
    echo "Running make singlezipinstall OS_TARGET=${OS_TARGET} CPU_TARGET=${CPU_TARGET} SNAPSHOT=1 $MAKE_EXTRA PP=$STARTPP CROSSOPT=\"$CROSSOPT\" OPT=\"$OPT\" NOGDB=1" 
    make singlezipinstall OS_TARGET=${OS_TARGET} CPU_TARGET=${CPU_TARGET} SNAPSHOT=1 $MAKE_EXTRA PP=$STARTPP CROSSOPT="$CROSSOPT" OPT="$OPT" NOGDB=1 >> $LONGLOGFILE 2>&1
    res=$?
  fi
fi

if [ "$BUILDFULLNATIVE" == "1" ] ; then
  if [ $res -eq 0 ] ; then
    if [ "${MAKE_EXTRA/BUILDFULLNATIVE=1/}" == "${MAKE_EXTRA}" ] ; then
      MAKE_EXTRA="$MAKE_EXTRA BUILDFULLNATIVE=1"
    fi
  else
    echo "Try again, without BUILDFULLNATIVE" >> $LONGLOGFILE
    echo "Try again, without BUILDFULLNATIVE"
    export BUILDFULLNATIVE=
    export MAKE_EXTRA=
    CROSSOPT="$CROSSOPT_ORIG"
    export OPTLEVEL3="$CROSSOPT"
    echo "Running make -C ${FPCSRCDIR}/rtl clean all PP=$STARTPP"
    make -C ${FPCSRCDIR}/rtl clean all PP=$STARTPP >> $LONGLOGFILE 2>&1
    echo "Running make singlezipinstall OS_TARGET=${OS_TARGET} CPU_TARGET=${CPU_TARGET} SNAPSHOT=1 $MAKE_EXTRA PP=$STARTPP CROSSOPT=\"$CROSSOPT\" OPT=\"$OPT\"" >> $LONGLOGFILE
    echo "Running make singlezipinstall OS_TARGET=${OS_TARGET} CPU_TARGET=${CPU_TARGET} SNAPSHOT=1 $MAKE_EXTRA PP=$STARTPP CROSSOPT=\"$CROSSOPT\" OPT=\"$OPT\"" 
    make singlezipinstall OS_TARGET=${OS_TARGET} CPU_TARGET=${CPU_TARGET} SNAPSHOT=1 $MAKE_EXTRA PP=$STARTPP CROSSOPT="$CROSSOPT" OPT="$OPT" >> $LONGLOGFILE 2>&1
    res=$?
    if [ $res -ne 0 ] ; then
      echo "make singlezipinstall failed, res=$res"
      no_libgdb_error=`grep "No libgdb.a found, supply NOGDB=1" $LONGLOGFILE `
      if [ -n "$no_libgdb_error" ] ; then
        echo "Trying a second time with NOGDB=1"
        echo "Running make singlezipinstall OS_TARGET=${OS_TARGET} CPU_TARGET=${CPU_TARGET} SNAPSHOT=1 $MAKE_EXTRA PP=$STARTPP CROSSOPT=\"$CROSSOPT\" OPT=\"$OPT\" NOGDB=1" >> $LONGLOGFILE
        echo "Running make singlezipinstall OS_TARGET=${OS_TARGET} CPU_TARGET=${CPU_TARGET} SNAPSHOT=1 $MAKE_EXTRA PP=$STARTPP CROSSOPT=\"$CROSSOPT\" OPT=\"$OPT\" NOGDB=1" 
        make singlezipinstall OS_TARGET=${OS_TARGET} CPU_TARGET=${CPU_TARGET} SNAPSHOT=1 $MAKE_EXTRA PP=$STARTPP CROSSOPT="$CROSSOPT" OPT="$OPT" NOGDB=1 >> $LONGLOGFILE 2>&1
        res=$?
      fi
    fi
  fi
fi

if [ $res -ne 0 ] ; then
  echo "make singlezipinstall failed, res=$res" >> $LONGLOGFILE
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

SNAPSHOTFILE=`ls -1 *fpc-*.tar.gz 2> /dev/null`

if [ -n "$MAKESNAPSHOT_SUFFIX" ] ; then
  mv ${SNAPSHOTFILE} ${SNAPSHOTFILE/.tar.gz/${MAKESNAPSHOT_SUFFIX}.tar.gz}
  SNAPSHOTFILE=`ls -1 *fpc-*.tar.gz`
fi

READMEFILE=README-${SNAPSHOTFILE/.tar.gz/}

cat > $READMEFILE <<EOF
This snapshot $SNAPSHOTFILE was generated ${date} on ${hostname} using:
make singlezipinstall OS_TARGET=${OS_TARGET} CPU_TARGET=${CPU_TARGET} SNAPSHOT=1 $MAKE_EXTRA PP=$STARTPP CROSSOPT="$CROSSOPT" OPT="$OPT"
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

if [ -z "$MAKE_TESTS_TARGET" ] ; then
  # Default make tests target is 'fulldb' 
  # which also means upload to testuite database
  # export with value full to avoid upload
  MAKE_TESTS_TARGET=fulldb
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

  echo "Running make clean $MAKE_TESTS_TARGET FPC=$STARTPP TEST_OS_TARGET=${OS_TARGET} TEST_FPC=$INSTALLCOMPILER DIGESTVER=$FPCVERSION \
    TEST_OPT=\"${TESTSUITEOPTS[TESTOPTS]}\" TEST_BINUTILSPREFIX=\"$TEST_BINUTILSPREFIX\" EMULATOR=\"$EMULATOR\" V=1 TEST_VERBOSE=1"
  make clean $MAKE_TESTS_TARGET FPC=$STARTPP TEST_OS_TARGET=${OS_TARGET} TEST_FPC=$INSTALLCOMPILER DIGESTVER=$FPCVERSION \
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
