#!/usr/bin/env bash

# Limit resources (64mb data, 8mb stack, 40 minutes)

. $HOME/bin/fpc-versions.sh

processor=`uname -p`

if [ "${processor}" = "unknown" ] ; then
  processor=`uname -m `
fi

# Use same TimeZone as defined inside cron
if [ "X$CRON_TZ" != "X" ] ; then
  export TZ=$CRON_TZ
fi

export LANG=en_US.UTF-8

if [ -z "$FPCSVNDIR" ] ; then
  if [ "$FIXES" = "1" ] ; then
    export FPCSVNDIR=$FIXESDIR
  else
    export FPCSVNDIR=$TRUNKDIR
    FIXES=0
  fi
else
  if [ "${FPCSVNDIR/fixes/}" != "${FPCSVNDIR}" ] ; then
    FIXES=1
  else
    FIXES=0
  fi
fi

if [ -z "$CURVER" ]; then
  if [ $FIXES -eq 1 ] ; then
    export CURVER=$FIXESVERSION
  else
    export CURVER=$TRUNKVERSION
  fi
fi

if [ -z "$FPCSVNDIRNAME" ] ; then
  export FPCSVNDIRNAME=`basename $FPCSVNDIR `
fi

if [ -z "$RELEASEVER" ]; then
  export RELEASEVER=$RELEASEVERSION
fi

if [ -z "$FPCBIN" ]; then
  if [ "${processor}" = "ppc64le" ] ; then
    FPCBIN=ppcppc64
  elif [ "${processor}" = "ppc64" ] ; then
    FPCBIN=ppcppc64
  elif [ "${processor}" = "ppc" ] ; then
    FPCBIN=ppcppc
  elif [ "${processor}" = "m68k" ] ; then
    FPCBIN=ppc68k
  fi
fi

run_check_all_rtl=0

TEST_OPT_2="-O3 -Cg"

if [ "${processor}" = "ppc64le" ] ; then
  TEST_ABI=le
  MAKE_J_OPT="-j 16"
  export FPMAKEOPT="-T 16"
  # ulimit -d 65536 -s 8192 -t 2400
  ulimit -s 8192 -t 2400
elif [ "${processor}" = "m68k" ] ; then
  TEST_ABI=
  MAKE_J_OPT=
  export FPMAKEOPT=
  ulimit -s 8192 -t 2400
  TEST_OPT_2="-O2"
else
  TEST_ABI=
  MAKE_J_OPT="-j 8"
  export FPMAKEOPT="-T 8"
  ulimit -d 65536 -s 8192 -t 2400
fi

# If using 32-bit version of compiler
# special as is needed with -a32 option.
# this is in ~/bin/powerpc-as
# ~/bin/powerpc-ld has no option
if [ "$FPCBIN" = "ppcppc" ]; then
  export TEST_BINUTILSPREFIX=powerpc-
  export BINUTILSPREFIX=powerpc-
  GCC_DIR=` gcc -m32 -print-libgcc-file-name | xargs dirname`
  export OPT="${OPT} -Xd -Fl/usr/lib -Fl/lib -Fd -Fl$GCC_DIR"
  # Do not try to compile IDE with GDB
  export NOGDB=1
  VERSION_NB=${CURVER//.*/}
  RELEASE_NB=${CURVER#*.}
  PATCH_NB=${RELEASE_NB/*./}
  RELEASE_NB=${RELEASE_NB//.*/}
  if [[ ( $VERSION_NB -ge 3 ) && ( $RELEASE_NB -ge 1 ) ]] ; then
    export GDBMI=1
  fi
  export FPMAKE_SKIP_CONFIG="-n -XPpowerpc-"
elif [ "$FPCBIN" = "ppc68k" ] ; then
  GCC_DIR=` gcc -print-libgcc-file-name | xargs dirname`
  export FPMAKE_SKIP_CONFIG="-n -Fl$GCC_DIR"
  export OPT="$OPT -Fl$GCC_DIR"
  # IDE compilation fails because it tries to use /usr/lib64/libbfd.a 
  # instead of supplied libbfd.a from GDB compilation.
  export SPECIALLINK="-Xd"
  export FPCCPUOPT=-O1
else
  GCC_DIR=` gcc -m64 -print-libgcc-file-name | xargs dirname`
  export FPMAKE_SKIP_CONFIG="-n -Fl$GCC_DIR"
  export OPT="$OPT -Fl$GCC_DIR"
  # IDE compilation fails because it tries to use /usr/lib64/libbfd.a 
  # instead of supplied libbfd.a from GDB compilation.
  export SPECIALLINK="-Xd"
fi

if [ "$MAKE" == "" ]; then
  MAKE=make
fi

if [ -n "$FPCCPUOPT" ] ; then
  MAKE="$MAKE \"FPCCPUOPT=$FPCCPUOPT\""
fi

HOST_PC=${HOSTNAME%%\.*}
if [ "$HOST_PC" = "gcc2-power8" ] ; then
  HOST_PC=gcc2-power8-ppc64le
  export OVERRIDEVERSIONCHECK=1
elif [ "$HOST_PC" = "gcc135" ] ; then
  HOST_PC=gcc135-ppc64le
  export OVERRIDEVERSIONCHECK=1
  run_check_all_rtl=1
fi

export TEST_USER=pierre
FPCRELEASEBINDIR=/home/${USER}/pas/fpc-${RELEASEVER}/bin

export PATH=/home/${USER}/pas/fpc-${CURVER}/bin:/home/${USER}/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:${FPCRELEASEBINDIR}

FPCRELEASEBIN=${FPCRELEASEBINDIR}/${FPCBIN}

cd $FPCSVNDIR

LOGDIR=$HOME/logs/$FPCSVNDIRNAME

if [ ! -d "$LOGDIR" ] ; then
  mkdir -p $LOGDIR
fi

export report=$LOGDIR/report.txt 
export makelog=$LOGDIR/make.txt 
export makecleanlog=$LOGDIR/makeclean.txt 
export testslog=$LOGDIR/tests.txt 

echo "Starting $0" > $report
echo "Start time `date +%Y-%m-%d-%H:%M:%S`" >> $report
echo "Start PATH=\"$PATH\"" >> $report
echo "Start FPCBIN `which ${FPCBIN}`" >> $report
Start_version=`${FPCBIN} -iV`
Start_full_version=`${FPCBIN} -iW`
Start_date=`${FPCBIN} -iD`
echo "Start ${FPCBIN} version is ${Start_version} ($Start_full_version) ${Start_date}" >> $report
svn cleanup 1>> $report 2>&1
svn up --force --accept theirs-conflict  1>> $report 2>&1

if [ -d fpcsrc ]; then
  cd fpcsrc
fi

echo "Starting make distclean all" >> $report
${MAKE} distclean all DEBUG=1 FPC=${FPCBIN} OVERRIDEVERSIONCHECK=1 \
  FPMAKE_SKIP_CONFIG="${FPMAKE_SKIP_CONFIG}" 1> ${makelog} 2>&1
makeres=$?

echo "Ending make distclean all; result=${makeres}" >> $report
if [ ${makeres} -ne 0 ]; then
  tail -30 ${makelog} >> $report
fi

if [ ${makeres} -ne 0 ] ; then
  echo "Starting make distclean all, using ${FPCRELEASEBIN}" >> $report
    ${MAKE} distclean all DEBUG=1 FPC=${FPCRELEASEBIN} \
    FPMAKE_SKIP_CONFIG="${FPMAKE_SKIP_CONFIG}" 1> ${makelog} 2>&1
  makeres=$?
  echo "Ending make distclean all with release binary; result=${makeres}" >> $report
  if [ ${makeres} -ne 0 ]; then
    tail -30 ${makelog} >> $report
  fi
fi

if [ ${makeres} -ne 0 ] ; then
  echo "Starting make distclean all, using ${FPCRELEASEBIN} and FPCCPUOPT=\"-O1\"" >> $report
    ${MAKE} distclean all DEBUG=1 FPC=${FPCRELEASEBIN} FPCCPUOPT="-O1" \
    FPMAKE_SKIP_CONFIG="${FPMAKE_SKIP_CONFIG}" 1> ${makelog} 2>&1
  makeres=$?
  echo "Ending make distclean all with release binary and FPCCPUOPT=\"-O1\"; result=${makeres}" >> $report
  if [ ${makeres} -ne 0 ]; then
    tail -30 ${makelog} >> $report
  fi
fi

if [ ${makeres} -ne 0 ] ; then
  echo "Starting make distclean all, using ${FPCRELEASEBIN} and FPCCPUOPT=\"-O-\"" >> $report
    ${MAKE} distclean all DEBUG=1 FPC=${FPCRELEASEBIN} FPCCPUOPT="-O-" \
    FPMAKE_SKIP_CONFIG="${FPMAKE_SKIP_CONFIG}" 1> ${makelog} 2>&1
  makeres=$?
  echo "Ending make distclean all with release binary and FPCCPUOPT=\"-O-\"; result=${makeres}" >> $report
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
  ${MAKE} DEBUG=1 install INSTALL_PREFIX=~/pas/fpc-${Build_version} FPC=${NEWFPCBIN}  1>> ${makelog} 2>&1
  makeres=$?
  echo "Ending make install; result=${makeres}" >> $report
  if [ ${makeres} -ne 0 ]; then
    tail -30 ${makelog} >> $report
  fi
else
  echo "Make all failed, trying to install new by parts" >> $report
  INSTALLSRC=compiler
  echo "Starting make install in $INSTALLSRC" >> $report
  ${MAKE} -C ${INSTALLSRC} install INSTALL_PREFIX=~/pas/fpc-${Build_version} FPC=${NEWFPCBIN} 1>> ${makelog} 2>&1
  makeres=$?
  echo "Ending make install in ${INSTALLSRC}; result=${makeres}" >> $report
  INSTALLSRC=rtl
  echo "Starting make install in $INSTALLSRC" >> $report
  ${MAKE} -C ${INSTALLSRC} install INSTALL_PREFIX=~/pas/fpc-${Build_version} FPC=${NEWFPCBIN} 1>> ${makelog} 2>&1
  makeres=$?
  echo "Starting make install in $INSTALLSRC" >> $report
  echo "Ending make install in ${INSTALLSRC}; result=${makeres}" >> $report
  INSTALLSRC=packages
  echo "Starting make install in $INSTALLSRC" >> $report
  ${MAKE} -C ${INSTALLSRC} install INSTALL_PREFIX=~/pas/fpc-${Build_version} FPC=${NEWFPCBIN} 1>> ${makelog} 2>&1
  makeres=$?
  echo "Ending make install in ${INSTALLSRC}; result=${makeres}" >> $report
  INSTALLSRC=utils
  echo "Starting make install in $INSTALLSRC" >> $report
  ${MAKE} -C ${INSTALLSRC} install INSTALL_PREFIX=~/pas/fpc-${Build_version} FPC=${NEWFPCBIN} 1>> ${makelog} 2>&1
  makeres=$?
  echo "Ending make install in ${INSTALLSRC}; result=${makeres}" >> $report
fi

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

if [ $run_check_all_rtl -eq 1 ] ; then
  $HOME/bin/check-all-rtl.sh FIXES=$FIXES
fi

# Start the testsuite generation part
cd tests
# Limit resources (64mb data, 8mb stack, 4 minutes)

ulimit -d 65536 -s 8192 -t 240

echo "Starting make distclean fulldb, TEST_OPT=\"${TEST_OPT}\" TEST_ABI=${TEST_ABI}" >> $report
${MAKE} distclean TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} TEST_ABI=${TEST_ABI} \
  TEST_FPC=${FPC}  FPC=${FPC} OPT="${OPT}" TEST_OPT="${TEST_OPT}" \
  DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1> $testslog 2>&1
${MAKE} ${MAKE_J_OPT} fulldb TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} TEST_ABI=${TEST_ABI} \
  TEST_FPC=${FPC}  FPC=${FPC} OPT="${OPT}" TEST_OPT="${TEST_OPT}" \
  DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1>> $testslog 2>&1
testsres=$?
echo "Ending make distclean fulldb, TEST_OPT=\"${TEST_OPT}\"; result=${testsres}" >> $report

tail -30 $testslog >> $report
echo "End time `date +%Y-%m-%d-%H:%M:%S`" >> $report

TEST_OPT="${TEST_OPT_2} ${TEST_OPT}"
echo "Starting make clean fulldb with TEST_OPT=\"${TEST_OPT}\" TEST_ABI=${TEST_ABI}" >> ${report}
echo "Start time `date +%Y-%m-%d-%H:%M:%S`" >> $report
${MAKE} distclean TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} TEST_ABI=${TEST_ABI} \
  TEST_FPC=${FPC}  FPC=${FPC} OPT="${OPT}" \
  TEST_OPT="${TEST_OPT}"  DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1>> $testslog 2>&1
${MAKE} ${MAKE_J_OPT} fulldb TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} TEST_ABI=${TEST_ABI} \
  TEST_FPC=${FPC}  FPC=${FPC} OPT="${OPT}" \
  TEST_OPT="${TEST_OPT}"  DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1>> $testslog 2>&1
testsres=$?
echo "Ending make distclean fulldb with TEST_OPT=${TEST_OPT}; result=${testsres}" >> $report

tail -30 $testslog >> $report

echo "End time `date +%Y-%m-%d-%H:%M:%S`" >> $report

mutt -x -s "Free Pascal results on ${HOST_PC}, ${FPC_CPU_TARGET}-${FPC_OS_TARGET}, ${Build_version} ${Build_date}" \
     -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log


# Cleanup

if [ "${testsres}" == "0" ]; then
  cd $FPCSVNDIR
  ${MAKE} distclean 1>> ${makecleanlog} 2>&1
fi


