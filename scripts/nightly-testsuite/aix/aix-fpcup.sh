#!/usr/bin/env bash

# Limit resources (64mb data, 8mb stack, 40 minutes)

. $HOME/bin/fpc-versions.sh

ulimit -d 65536 -s 8192 -t 2400

processor=`uname -p`
machine=`uname -n`

if [ "$processor" == "unknown" ] ; then
  processor=`/usr/bin/uname -p`
fi

if [ "$CURVER" == "" ]; then
  if [ "$FIXES" == "1" ]; then
    export CURVER=$FIXESVERSION
    export SVNDIR=$FIXESDIR
  else
    export CURVER=$TRUNKVERSION
    export SVNDIR=$TRUNKDIR
  fi
fi
if [ "$RELEASEVER" == "" ]; then
  export RELEASEVER=$RELEASEVERSION
fi

if [ "${LANG/UTF/}" = "$LANG" ] ; then
  export LANG=en_US.UTF-8
fi
if [ -z "$LC_ALL" ] ; then
  export LC_ALL=en_US.UTF-8
fi

if [ "$FPCBIN" == "" ]; then
  if [ "${processor}" == "ppc64" ] ; then
    FPCBIN=ppcppc64
  fi
  if [ "${processor}" == "powerpc64" ] ; then
    FPCBIN=ppcppc64
  fi
  if [ "${processor}" == "ppc" ] ; then
    FPCBIN=ppcppc
  fi
  if [ "${processor}" == "powerpc" ] ; then
    FPCBIN=ppcppc
  fi
fi

# If using 32-bit version of compiler
# special as is needed with -a32 option.
# this is in ~/bin/powerpc-as
# ~/bin/powerpc-ld has no option
if [ "$FPCBIN" == "ppcppc" ]; then
  # export TEST_BINUTILSPREFIX=powerpc-
  # export BINUTILSPREFIX=powerpc-aix-
  # export OPT="${OPT} -Xd -Fl/usr/lib -Fl/lib"
  export FPMAKE_SKIP_CONFIG="-n" 
  # -XPpowerpc-aix-"
  LOGSUFFIX=${CURVER}-32
else
  export FPMAKE_SKIP_CONFIG="-n"
  # IDE compilation fails because it tries to use /usr/lib64/libbfd.a 
  # instead of supplied libbfd.a from GDB compilation.
  export SPECIALLINK="-Xd"
  LOGSUFFIX=${CURVER}-64
fi

if [ -z "$MAKE" ]; then
  MAKE=` which gmake 2> /dev/null `
  if [ -z "$MAKE" ] ; then
    MAKE=make
  fi
fi

HOST_PC=${HOSTNAME%%\.*}
export TEST_USER=pierre
FPCRELEASEBINDIR=/home/${USER}/pas/fpc-${RELEASEVER}/bin

export PATH=/home/${USER}/pas/fpc-${CURVER}/bin:/home/${USER}/bin:/opt/freeware/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:${FPCRELEASEBINDIR}

FPCRELEASEBIN=${FPCRELEASEBINDIR}/${FPCBIN}

cd $SVNDIR

export report=`pwd`/report${LOGSUFFIX}.txt 
export makelog=`pwd`/make${LOGSUFFIX}.txt 
export testslog=`pwd`/tests${LOGSUFFIX}.txt 

echo "Starting $0" > $report
echo "Start time `date +%Y-%m-%d-%H:%M:%S`" >> $report
Start_version=`${FPCBIN} -iV`
Start_date=`${FPCBIN} -iD`
echo "Start ${FPCBIN} version is ${Start_version} ${Start_date}" >> $report
if [ "${use_git:-0}" = "1" ] ; then
  git stash save 1>> $report 2>&1
  git pull --ff 1>> $report 2>&1
  git stash pop 1>> $report 2>&1
else
  svn cleanup 1>> $report 2>&1
  svn up --force --accept theirs-conflict  1>> $report 2>&1
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
  INSTALLSRC=packages
  ${MAKE} -C ${INSTALLSRC} install INSTALL_PREFIX=~/pas/fpc-${Build_version} FPC=${NEWFPCBIN} 1>> ${makelog} 2>&1
  makeres=$?
  echo "Ending make install in ${INSTALLSRC}; result=${makeres}" >> $report
  INSTALLSRC=utils
  ${MAKE} -C ${INSTALLSRC} install INSTALL_PREFIX=~/pas/fpc-${Build_version} FPC=${NEWFPCBIN} 1>> ${makelog} 2>&1
  makeres=$?
  echo "Ending make install in ${INSTALLSRC}; result=${makeres}" >> $report
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

export TEST_OPT="${OPT}"
echo "New FPC is ${FPC}" >> $report


echo "Starting make distclean, TEST_OPT=\"${TEST_OPT}\"" >> $report
echo "Start time `date +%Y-%m-%d-%H:%M:%S`" >> $report
${MAKE} distclean TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
  TEST_FPC=${FPC}  FPC=${FPC} OPT="${OPT}" TEST_OPT="${TEST_OPT}" \
  DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1> /dev/null 2>&1
echo "Starting make -j 15 fulldb, TEST_OPT=\"${TEST_OPT}\"" >> $report
echo "Start time `date +%Y-%m-%d-%H:%M:%S`" >> $report
${MAKE} -j 15 distclean fulldb TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
  TEST_FPC=${FPC}  FPC=${FPC} OPT="${OPT}" TEST_OPT="${TEST_OPT}" \
  DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1> $testslog 2>&1
testsres=$?
echo "Ending make distclean fulldb, TEST_OPT=\"${TEST_OPT}\"; result=${testsres}" >> $report

tail -30 $testslog >> $report
echo "End time `date +%Y-%m-%d-%H:%M:%S`" >> $report


# mutt -x -s "Free Pascal results on ${HOST_PC} ${Build_version} ${Build_date}" \
#      -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log

TEST_OPT="-O- -g ${OPT}"
echo "Starting make distclean, TEST_OPT=\"${TEST_OPT}\"" >> $report
echo "Start time `date +%Y-%m-%d-%H:%M:%S`" >> $report
${MAKE} distclean TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
  TEST_FPC=${FPC}  FPC=${FPC} OPT="${OPT}" TEST_OPT="${TEST_OPT}" \
  DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1> /dev/null 2>&1
echo "Starting make -j 15 fulldb with TEST_OPT=${TEST_OPT}" >> ${report}
echo "Start time `date +%Y-%m-%d-%H:%M:%S`" >> $report
${MAKE} -j 15 fulldb TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
  TEST_FPC=${FPC}  FPC=${FPC} OPT="${OPT}" \
  TEST_OPT="${TEST_OPT}"  DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1> $testslog 2>&1
testsres=$?
echo "Ending make distclean fulldb with TEST_OPT=${TEST_OPT}; result=${testsres}" >> $report

tail -30 $testslog >> $report

echo "End time `date +%Y-%m-%d-%H:%M:%S`" >> $report

# mutt -x -s "Free Pascal results on ${HOST_PC}, with option ${TEST_OPT}, ${Build_version} ${Build_date}" \
#      -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log

TEST_OPT="-O3 -Cg ${OPT}"
echo "Starting make distclean, TEST_OPT=\"${TEST_OPT}\"" >> $report
echo "Start time `date +%Y-%m-%d-%H:%M:%S`" >> $report
${MAKE} distclean TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
  TEST_FPC=${FPC}  FPC=${FPC} OPT="${OPT}" TEST_OPT="${TEST_OPT}" \
  DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1> /dev/null 2>&1
echo "Starting make -j 15 clean fulldb with TEST_OPT=${TEST_OPT}" >> ${report}
echo "Start time `date +%Y-%m-%d-%H:%M:%S`" >> $report
${MAKE} -j 15 fulldb TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
  TEST_FPC=${FPC}  FPC=${FPC} OPT="${OPT}" \
  TEST_OPT="${TEST_OPT}"  DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1> $testslog 2>&1
testsres=$?
echo "Ending make distclean fulldb with TEST_OPT=${TEST_OPT}; result=${testsres}" >> $report

tail -30 $testslog >> $report

echo "End time `date +%Y-%m-%d-%H:%M:%S`" >> $report

# mutt -x -s "Free Pascal results on ${HOST_PC}, with option ${TEST_OPT}, ${Build_version} ${Build_date}" \
#      -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log

TEST_OPT="-Fl/opt/freeware/lib  ${OPT}"
echo "Starting make distclean, TEST_OPT=\"${TEST_OPT}\"" >> $report
echo "Start time `date +%Y-%m-%d-%H:%M:%S`" >> $report
${MAKE} distclean TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
  TEST_FPC=${FPC}  FPC=${FPC} OPT="${OPT}" TEST_OPT="${TEST_OPT}" \
  DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1> /dev/null 2>&1
echo "Starting make -j 15 clean fulldb with TEST_OPT=${TEST_OPT}" >> ${report}
echo "Start time `date +%Y-%m-%d-%H:%M:%S`" >> $report
${MAKE} -j 15 fulldb TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
  TEST_FPC=${FPC}  FPC=${FPC} OPT="${OPT}" \
  TEST_OPT="${TEST_OPT}"  DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1> $testslog 2>&1
testsres=$?
echo "Ending make distclean fulldb with TEST_OPT=${TEST_OPT}; result=${testsres}" >> $report

tail -30 $testslog >> $report

echo "End time `date +%Y-%m-%d-%H:%M:%S`" >> $report

mutt -x -s "Free Pascal results for `${FPC} -iTP`-`${FPC} -iTO` version ${Build_version} date ${Build_date} on ${HOST_PC}" \
     -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log


# Cleanup

if [ ${testsres} -eq 0 ]; then
  cd $SVNDIR
  ${MAKE} distclean 1>> ${makelog} 2>&1
fi


