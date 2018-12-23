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
    export CURVER=3.3.1
  fi
fi
if [ -z "$SVNDIR" ] ; then
  SVNDIR=$TRUNKDIR
fi

if [ "$RELEASEVER" == "" ]; then
  # export RELEASEVER=2.6.4
  export RELEASEVER=3.0.4
fi

if [ "$FPCBIN" == "" ]; then
  if [ "${processor}" == "ppc64" ] ; then
    FPCBIN=ppcppc64
  fi
  if [ "${processor}" == "ppc" ] ; then
    FPCBIN=ppcppc
  fi
fi

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
  export FPMAKE_SKIP_CONFIG="-n -XPpowerpc-darwin-"
else
  export FPMAKE_SKIP_CONFIG="-n -Fl/usr/lib/gcc/darwin/default -Fl/usr/lib"
  # IDE compilation fails because it tries to use /usr/lib64/libbfd.a 
  # instead of supplied libbfd.a from GDB compilation.
  export SPECIALLINK="-Xd"
fi

if [ "$MAKE" == "" ]; then
  MAKE=make
fi

HOST_PC=${HOSTNAME%%\.*}
export TEST_USER=pierre
FPCRELEASEBINDIR=${HOME}/pas/fpc-${RELEASEVER}/bin

export PATH=${HOME}/pas/fpc-${CURVER}/bin:${HOME}/bin:${HOME}/gnu/usr/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:${FPCRELEASEBINDIR}
   
FPCRELEASEBIN=${FPCRELEASEBINDIR}/${FPCBIN}

cd $SVNDIR

export report=`pwd`/report.txt 
export makelog=`pwd`/make.txt 
export makecleanlog=`pwd`/makeclean.txt 
export testslog=`pwd`/tests.txt 

echo "Starting $0" > $report
echo "Start time `date +%Y-%m-%d-%H:%M:%S`" >> $report
echo "Start FPCBIN `which ${FPCBIN}`" >> $report
Start_version=`${FPCBIN} -iV`
Start_date=`${FPCBIN} -iD`
echo "Start ${FPCBIN} version is ${Start_version} ${Start_date}" >> $report
if [ -n "$SVN" ] ; then
  $SVN cleanup 1>> $report 2>&1
  $SVN up --force --accept theirs-conflict  1>> $report 2>&1
fi

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
  ${MAKE} -C ${INSTALLSRC} install INSTALL_PREFIX=~/pas/fpc-${Build_version} FPC=${NEWFPCBIN} 1>> ${makelog} 2>&1
  makeres=$?
  echo "Ending make install in ${INSTALLSRC}; result=${makeres}" >> $report
  INSTALLSRC=rtl
  ${MAKE} -C ${INSTALLSRC} install INSTALL_PREFIX=~/pas/fpc-${Build_version} FPC=${NEWFPCBIN} 1>> ${makelog} 2>&1
  makeres=$?
  echo "Ending make install in ${INSTALLSRC}; result=${makeres}" >> $report
  if [ ${makeres} -ne 0 ]; then
    tail -30 ${makelog} >> $report
  fi
  INSTALLSRC=packages
  ${MAKE} -C ${INSTALLSRC} clean install INSTALL_PREFIX=~/pas/fpc-${Build_version} FPC=${NEWFPCBIN} 1>> ${makelog} 2>&1
  makeres=$?
  echo "Ending make install in ${INSTALLSRC}; result=${makeres}" >> $report
  if [ ${makeres} -ne 0 ]; then
    tail -30 ${makelog} >> $report
  fi
  INSTALLSRC=utils
  ${MAKE} -C ${INSTALLSRC} clean install INSTALL_PREFIX=~/pas/fpc-${Build_version} FPC=${NEWFPCBIN} 1>> ${makelog} 2>&1
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


echo "Starting make distclean full tarfile, TEST_OPT=\"${TEST_OPT}\"" >> $report
${MAKE} distclean full tarfile TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
  TEST_FPC=${FPC}  FPC=${FPC} OPT="${OPT}" TEST_OPT="${TEST_OPT}" \
  DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1> $testslog 2>&1
testsres=$?
echo "Ending make distclean full tarfile, TEST_OPT=\"${TEST_OPT}\"; result=${testsres}" >> $report

scp -q output/$FPC_CPU_TARGET-$FPC_OS_TARGET/*.gz nima:logs/to_upload/ >> $report

tail -30 $testslog >> $report
echo "End time `date +%Y-%m-%d-%H:%M:%S`" >> $report

TEST_OPT="-O3 -Cg ${TEST_OPT}"
echo "Starting make clean full tarfile with TEST_OPT=${TEST_OPT}" >> ${report}
echo "Start time `date +%Y-%m-%d-%H:%M:%S`" >> $report
${MAKE} distclean full tarfile TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
  TEST_FPC=${FPC}  FPC=${FPC} OPT="${OPT}" \
  TEST_OPT="${TEST_OPT}"  DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1> $testslog 2>&1
testsres=$?
echo "Ending make distclean full tarfile with TEST_OPT=${TEST_OPT}; result=${testsres}" >> $report

tail -30 $testslog >> $report

echo "End time `date +%Y-%m-%d-%H:%M:%S`" >> $report

mutt -x -s "Free Pascal results on ${HOST_PC}, ${FPC_CPU_TARGET}-${FPC_OS_TARGET}, ${Build_version} ${Build_date}" \
     -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log


# Cleanup

if [ "${testsres}" == "0" ]; then
  cd $SVNDIR
  ${MAKE} distclean 1>> ${makecleanlog} 2>&1
fi


