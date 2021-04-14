#!/usr/bin/env bash

. ~/bin/fpc-versions.sh

which svn 2> /dev/null 
res=$?
if [ $res -ne 0 ] ; then
  SVN=
else
  SVN=`which svn 2> /dev/null `
  if [ ! -f "$SVN" ] ; then
    SVN=
  fi
fi

# Limit resources (64mb data, 8mb stack, 40 minutes)

ulimit -d 65536 -s 8192 -t 2400

processor=`uname -p`

# Use same TimeZone as defined inside cron
if [ "X$CRON_TZ" != "X" ] ; then
  export TZ=$CRON_TZ
fi

export LANG=en_US.UTF-8

if [ "$CURVER" == "" ]; then
  if [ "X$FIXES" == "X1" ] ; then
    export CURVER=$FIXESVERSION
    if [ -z "$SVNDIR" ] ; then
      SVNDIR=$FIXESDIR
    fi
  else
    export CURVER=$TRUNKVERSION
  fi
fi
if [ -z "$SVNDIR" ] ; then
  SVNDIR=$TRUNKDIR
fi

if [ "$RELEASEVER" == "" ]; then
  export RELEASEVER=3.2.0
fi

if [ "$FPCBIN" == "" ]; then
  if [ "${processor}" == "arm" ] ; then
    if [ "`uname -m`" == "amd64" ] ; then
      FPCBIN=ppca64
    else
      FPCBIN=ppcarm
    fi
  fi
  if [ "${processor}" == "ppc64" ] ; then
    FPCBIN=ppcppc64
  fi
  if [ "${processor}" == "ppc" ] ; then
    FPCBIN=ppcppc
  fi
fi

do_upload=1
distclean_all=0
MAKE_J_OPT=""
LOGDIR="$HOME/logs/`basename $SVNDIR`"
# If using 32-bit version of compiler
# special as is needed with -a32 option.
# this is in ~/bin/powerpc-as
# ~/bin/powerpc-ld has no option
if [ "$FPCBIN" == "ppcppc" ]; then
  export TEST_BINUTILSPREFIX=powerpc-darwin-
  export BINUTILSPREFIX=powerpc-darwin-
  export OPT="${OPT} -Xd -Fl/usr/lib -Fl/usr/lib/gcc/darwin/default -Fd" 
  # Do not try to compile IDE with GDB
  export NOGDB=1
  if [ "$CURVER" == "3.1.1" ] ; then
    export GDBMI=1
  fi
  do_upload=0
  export FPMAKE_SKIP_CONFIG="-n -XPpowerpc-darwin-"
elif [ "$FPCBIN" == "ppcppc64" ] ; then
  export FPMAKE_SKIP_CONFIG="-n -Fl/usr/lib/gcc/darwin/default -Fl/usr/lib"
  # IDE compilation fails because it tries to use /usr/lib64/libbfd.a 
  # instead of supplied libbfd.a from GDB compilation.
  export SPECIALLINK="-Xd"
  do_upload=0
elif [ "$FPCBIN" == "ppca64" ] ; then
  echo "$FPCBIN handled"
  export OPT="${OPT} -Fl/usr/lib -XR/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk" 
  export FPMAKE_SKIP_CONFIG="-n -Fl/usr/lib -XR/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk"
  export FPCCPUOPT="-O-"
  MAKE_J_OPT="-j 8"
  FPMAKEOPT="-T 8"
  distclean_all=1
else
  echo "Warning: $FPCBIN not handled"
fi


if [ "$MAKE" == "" ]; then
  MAKE=`which gmake 2> /dev/null `
  if [ "$MAKE" == "" ]; then
    MAKE=make
  fi
fi

HOST_PC=${HOSTNAME%%\.*}
export TEST_USER=pierre
FPCRELEASEBINDIR=${HOME}/pas/fpc-${RELEASEVER}/bin

export PATH=${HOME}/pas/fpc-${CURVER}/bin:${HOME}/bin:${HOME}/gnu/usr/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:${FPCRELEASEBINDIR}
   
FPCRELEASEBIN=${FPCRELEASEBINDIR}/${FPCBIN}

cd $SVNDIR

FULLSVNDIR="`pwd`"
SVNDIRNAME=`basename "$FULLSVNDIR"`

if [ ! -d "$LOGDIR" ] ; then
  mkdir -p "$LOGDIR"
fi

export report=$LOGDIR/report-$SVNDIRNAME.txt 
export makelog=$LOGDIR/make-$SVNDIRNAME.txt 
export makecleanlog=$LOGDIR/makeclean-$SVNDIRNAME.txt 

echo "Starting $0" > $report
echo "Start time `date +%Y-%m-%d-%H:%M:%S`" >> $report
echo "Start FPCBIN `which ${FPCBIN}`" >> $report
Start_version=`${FPCBIN} -iV`
Start_date=`${FPCBIN} -iD`
echo "Start ${FPCBIN} version is ${Start_version} ${Start_date}" >> $report
if [ -n "$SVN" ] ; then
  $SVN cleanup --include-externals 1>> $report 2>&1
  $SVN up --force --accept theirs-conflict  1>> $report 2>&1
fi

if [ -d fpcsrc ]; then
  cd fpcsrc
fi

echo "Starting make distclean all" >> $report
${MAKE} distclean all DEBUG=1 FPC=${FPCBIN} OVERRIDEVERSIONCHECK=1 \
  FPMAKE_SKIP_CONFIG="${FPMAKE_SKIP_CONFIG}" OPT="$OPT" 1> ${makelog} 2>&1
makeres=$?

echo "Ending make distclean all; result=${makeres}" >> $report
if [ ${makeres} -ne 0 ]; then
  tail -30 ${makelog} >> $report
fi

if [ ${makeres} -ne 0 ] ; then
  echo "Starting make distclean all, using ${FPCRELEASEBIN}" >> $report
    ${MAKE} distclean all DEBUG=1 FPC=${FPCRELEASEBIN} OPT="$OPT" \
    FPMAKE_SKIP_CONFIG="${FPMAKE_SKIP_CONFIG}" 1> ${makelog} 2>&1
  makeres=$?
  echo "Ending make distclean all with release binary; result=${makeres}" >> $report
  if [ ${makeres} -ne 0 ]; then
    tail -30 ${makelog} >> $report
  fi

fi


NEWFPCBIN=`pwd`/compiler/${FPCBIN}

if [ -f ${NEWFPCBIN} ] ; then
  Build_version=`${NEWFPCBIN} -iV`
  Build_date=`${NEWFPCBIN} -iD`
else
  echo "make all failed to create new binary" >> $report
  mutt -x -s "Free Pascal compilation failed ${HOST_PC}" \
     -i $report -a ${makelog} -- pierre@freepascal.org < /dev/null | tee  ${report}.log
  exit
fi

echo "New ${NEWFPCBIN} version is ${Build_version} ${Build_date}" >> $report

if [ ${makeres} -eq 0 ] ; then
  echo "Starting make install" >> $report
  ${MAKE} DEBUG=1 install INSTALL_PREFIX=~/pas/fpc-${Build_version} FPC=${NEWFPCBIN} OPT="$OPT"  1>> ${makelog} 2>&1
  makeres=$?
  echo "Ending make install; result=${makeres}" >> $report
  if [ ${makeres} -ne 0 ]; then
    tail -30 ${makelog} >> $report
  fi
else
  echo "Make all failed, trying to install new by parts" >> $report
  INSTALLSRC=compiler
  ${MAKE} -C ${INSTALLSRC} install INSTALL_PREFIX=~/pas/fpc-${Build_version} FPC=${NEWFPCBIN} OPT="$OPT" 1>> ${makelog} 2>&1
  makeres=$?
  echo "Ending make install in ${INSTALLSRC}; result=${makeres}" >> $report
  INSTALLSRC=rtl
  ${MAKE} -C ${INSTALLSRC} install INSTALL_PREFIX=~/pas/fpc-${Build_version} FPC=${NEWFPCBIN} OPT="$OPT" 1>> ${makelog} 2>&1
  makeres=$?
  echo "Ending make install in ${INSTALLSRC}; result=${makeres}" >> $report
  if [ ${makeres} -ne 0 ]; then
    tail -30 ${makelog} >> $report
  fi
  INSTALLSRC=packages
  ${MAKE} -C ${INSTALLSRC} clean install INSTALL_PREFIX=~/pas/fpc-${Build_version} FPC=${NEWFPCBIN} OPT="$OPT" 1>> ${makelog} 2>&1
  makeres=$?
  echo "Ending make install in ${INSTALLSRC}; result=${makeres}" >> $report
  if [ ${makeres} -ne 0 ]; then
    tail -30 ${makelog} >> $report
  fi
  INSTALLSRC=utils
  ${MAKE} -C ${INSTALLSRC} clean install INSTALL_PREFIX=~/pas/fpc-${Build_version} FPC=${NEWFPCBIN} OPT="$OPT" 1>> ${makelog} 2>&1
  makeres=$?
  echo "Ending make install in ${INSTALLSRC}; result=${makeres}" >> $report
  if [ ${makeres} -ne 0 ]; then
    tail -30 ${makelog} >> $report
  fi
fi

# Start the testsuite generation part
cd tests
# Limit resources (64mb data, 8mb stack, 4 minutes)

ulimit -d 65536 -s 8192 -t 240

export FPC=`which ${FPCBIN}`
diff "${FPC}" "${NEWFPCBIN}" 
is_same=$?

if [ ${is_same} -ne 0 ] ; then
  echo " ${FPC} is different from ${NEWFPCBIN}" >> $report
  mutt -x -s "Free Pascal compilation failed ${HOST_PC}" \
     -i $report -a ${makelog} -- pierre@freepascal.org < /dev/null | tee  ${report}.log
  exit
fi

FPC_OS_TARGET=`${NEWFPCBIN} -iTO`
FPC_CPU_TARGET=`${NEWFPCBIN} -iTP`
export TEST_OPT="${OPT}"
echo "New FPC is ${FPC}" >> $report

function run_tests ()
{
  LOCAL_TEST_OPT="$1"
  TESTSUFFIX="${LOCAL_TEST_OPT// /_}"
  export testslog="$LOGDIR/tests-${TESTSUFFIX}.txt" 
  LOCAL_TEST_OPT+=" ${TEST_OPT}"
  rm -Rf $testslog
  echo "Start time: `date +%Y-%m-%d-%H:%M:%S`" >> $report
  if [ $distclean_all -eq 1 ] ; then
    echo "Starting make -C .. distclean with TEST_OPT=\"${LOCAL_TEST_OPT}\"" >> $report
    ${MAKE} ${MAKE_J_OPT} -C .. distclean TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
      TEST_FPC=${FPC}  FPC=${FPC} OPT="${OPT}" TEST_OPT="${LOCAL_TEST_OPT}" \
      DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1>> $testslog 2>&1
    testsres=$?
    echo "Ending make -C .. distclean with TEST_OPT=\"${LOCAL_TEST_OPT}\"; result=${testsres}" >> $report
  fi
  echo "Starting make distclean with TEST_OPT=\"${LOCAL_TEST_OPT}\"" >> $report
  ${MAKE} ${MAKE_J_OPT} distclean TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
    TEST_FPC=${FPC}  FPC=${FPC} OPT="${OPT}" TEST_OPT="${LOCAL_TEST_OPT}" \
    DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1>> $testslog 2>&1
  testsres=$?
  echo "Ending make distclean with TEST_OPT=\"${LOCAL_TEST_OPT}\"; result=${testsres}" >> $report
  echo "Starting make full with TEST_OPT=\"${LOCAL_TEST_OPT}\"" >> $report
  ${MAKE} ${MAKE_J_OPT} full TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
    TEST_FPC=${FPC}  FPC=${FPC} OPT="${OPT}" TEST_OPT="${LOCAL_TEST_OPT}" FPMAKEOPT="$FPMAKEOPT" \
    DB_SSH_EXTRA=" -i ~/.ssh/freepascal" TEST_COMMENT="$LOCAL_TEST_OPT" 1>> $testslog 2>&1
  testsres=$?
  echo "Ending make full with TEST_OPT=\"${LOCAL_TEST_OPT}\"; result=${testsres}" >> $report
  if [ $testsres -ne 0 ] ; then
    echo "See file $testslog" >> $report
    return
  fi
  if [ $do_upload -eq 1 ] ;  then
    echo "Starting make uploadrun TEST_OPT=\"${LOCAL_TEST_OPT}\"" >> $report
    ${MAKE} ${MAKE_J_OPT} uploadrun TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
      TEST_FPC=${FPC}  FPC=${FPC} OPT="${OPT}" TEST_OPT="${LOCAL_TEST_OPT}" \
      DB_SSH_EXTRA=" -i ~/.ssh/freepascal"  TEST_COMMENT="$LOCAL_TEST_OPT" 1>> $testslog 2>&1
    testsres=$?
    echo "Ending make uploadrun with TEST_OPT=\"${LOCAL_TEST_OPT}\"; result=${testsres}" >> $report
  else
    echo "Starting make digest TEST_OPT=\"${LOCAL_TEST_OPT}\"" >> $report
    ${MAKE} ${MAKE_J_OPT} digest TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
      TEST_FPC=${FPC}  FPC=${FPC} OPT="${OPT}" TEST_OPT="${LOCAL_TEST_OPT}" \
      DB_SSH_EXTRA=" -i ~/.ssh/freepascal"  TEST_COMMENT="$LOCAL_TEST_OPT" 1>> $testslog 2>&1
    testsres=$?
    echo "Ending make digest with TEST_OPT=\"${LOCAL_TEST_OPT}\"; result=${testsres}" >> $report
    echo "Starting make tarfile TEST_OPT=\"${LOCAL_TEST_OPT}\"" >> $report
    ${MAKE} ${MAKE_J_OPT} tarfile TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
      TEST_FPC=${FPC}  FPC=${FPC} OPT="${OPT}" TEST_OPT="${LOCAL_TEST_OPT}" \
      DB_SSH_EXTRA=" -i ~/.ssh/freepascal"  TEST_COMMENT="$LOCAL_TEST_OPT" 1>> $testslog 2>&1
    testsres=$?
    echo "Ending make digest with TEST_OPT=\"${LOCAL_TEST_OPT}\"; result=${testsres}" >> $report
    scp -q output/$FPC_CPU_TARGET-$FPC_OS_TARGET/*.gz nima:logs/to_upload/ >> $report
  fi
  for f in longlog log faillist ; do 
    if [ -f "output/$FPC_CPU_TARGET-$FPC_OS_TARGET/$f" ] ; then
      cp -fp  output/$FPC_CPU_TARGET-$FPC_OS_TARGET/$f $LOGDIR/$f-${TESTSUFFIX}
    fi
  done
  echo "End time `date +%Y-%m-%d-%H:%M:%S`" >> $report
}


if [ $do_upload -eq 1 ] ; then
  distclean_all=0
  run_tests "-O-"
  run_tests "-O1"
  run_tests "-O2"
  run_tests "-O3"
  run_tests "-O4"
  run_tests "-CriotR"
  distclean_all=1
  run_tests "-O- -dALL_RECOMPILED"
  run_tests "-O1 -dALL_RECOMPILED"
  run_tests "-O2 -dALL_RECOMPILED"
  run_tests "-O3 -dALL_RECOMPILED"
  run_tests "-O4 -dALL_RECOMPILED"
  run_tests "-CriotR -dALL_RECOMPILED"
else
  run_tests ""
  run_tests "-O3 -Cg "
fi

mutt -x -s "Free Pascal results on ${HOST_PC}, ${FPC_CPU_TARGET}-${FPC_OS_TARGET}, ${Build_version} ${Build_date}" \
     -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log


# Cleanup

if [ "${testsres}" == "0" ]; then
  cd $SVNDIR
  ${MAKE} distclean 1>> ${makecleanlog} 2>&1
fi


