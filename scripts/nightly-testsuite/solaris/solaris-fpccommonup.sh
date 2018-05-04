#!/bin/bash
# Limit resources (64mb data, 8mb stack, 40 minutes)
ulimit -d 65536 -s 8192 -t 2400

# These might need to be updated
# after a release

. $HOME/bin/fpc-versions.sh

FPC_CURRENT_RELEASE_VERSION=$RELEASEVERSION
FPC_CURRENT_TRUNK_VERSION=$TRUNKVERSION
FPC_CURRENT_FIXES_VERSION=$FIXESVERSION
export OVERRIDEVERSIONCHECK=1

export MAKE=gmake
if [ "${HOSTNAME}" == "Oracle" ]; then
  HOST_PC=E6510_Muller
else
if [ "${HOSTNAME}" == "openindiana" ]; then
  HOST_PC=firmos
else
  HOST_PC=PC_AFM
fi
fi

# Default to i386 target
if [ "${FPCBIN}" == "" ]; then
  FPCBIN=ppc386
fi

# Default pas dir to ${HOME}/pas
if [ "${FPCPASDIR}" == "" ]; then
  FPCPASDIR=~/pas
fi

# Set default CPU if not set
if [ "${FPC_TARGET_CPU}" == "" ]; then
  if [ "${FPCBIN}" == "ppcx64" ]; then
    FPC_TARGET_CPU=x86_64
  elif [ "${FPCBIN}" == "ppc386" ]; then
    FPC_TARGET_CPU=i386
  elif [ "${FPCBIN}" == "ppcsparc" ]; then
    FPC_TARGET_CPU=sparc
  else
    FPC_TARGET_CPU=Unknown
  fi
fi

# Default to trunk
if [ "${SVNDIR}" == "" ]; then
  SVNDIR=trunk
fi

# Default to current trunk/fixes version
if [ "${FPC_TARGET_VER}" == "" ]; then
  svn_dir_has_trunk=`echo ${SVNDIR} | grep -i trunk`
  if [ "${svn_dir_has_trunk}" != "" ]; then
    FPC_TARGET_VER=${FPC_CURRENT_TRUNK_VERSION}
  else
    FPC_TARGET_VER=${FPC_CURRENT_FIXES_VERSION}
  fi
fi

export LANG=en_US.UTF-8

# Setup PATH variable
NEWPATH=${FPCPASDIR}/fpc-${FPC_TARGET_VER}/bin
if [ -d ${HOME}/bin ] ; then
  NEWPATH=${NEWPATH}:${HOME}/bin
fi
if [ -d ${HOME}/bin/new-binutils ] ; then
  NEWPATH=${NEWPATH}:${HOME}/bin/new-binutils
fi
if [ -d /usr/gnu/bin ] ; then
  NEWPATH=${NEWPATH}:/usr/gnu/bin
fi
if [ -d /usr/bin ] ; then
  NEWPATH=${NEWPATH}:/usr/bin
fi
if [ -d /bin ] ; then
  NEWPATH=${NEWPATH}:/bin
fi
if [ -d /usr/local/bin ] ; then
  NEWPATH=${NEWPATH}:/usr/local/bin
fi
NEWPATH=${NEWPATH}:${FPCPASDIR}/fpc-${FPC_CURRENT_RELEASE_VERSION}/bin
if [ "${WITHCSW}" == "1" ]; then
  EXTRA="with CSW"
  NEWPATH=/opt/csw/bin:${NEWPATH}
fi

PATH=$NEWPATH
export PATH
echo "Using PATH=\"$PATH\""

function test_tmt1_kill {
if [ -f ~/bin/tmt1_kill.sh ]; then
  RUNNING=`ps -e | grep "tmt1_k"`
  if [ "${RUNNING}" == "" ]; then
    nohup ~/bin/tmt1_kill.sh &
  fi
fi
}


cd ${FPCPASDIR}/${SVNDIR}

export report=`pwd`/report.txt 
export makelog=`pwd`/make.txt 
export makecleanlog=`pwd`/make-clean.txt 
export testslog=`pwd`/tests.txt 

echo "Starting make" > $makelog

function run_make {
echo "Starting ${MAKE} distclean ${FPC_MAKE_TARGET} ${FPC_OPTIONS}" >> $report
echo "in `pwd`" >> $report
${MAKE} distclean ${FPC_MAKE_TARGET} ${FPC_OPTIONS} \
  INSTALL_PREFIX=${FPCPASDIR}/fpc-${FPC_TARGET_VER} 1>> ${makelog} 2>&1
makeres=$?
echo "Ending ${MAKE} distclean ${FPC_MAKE_TARGET} ${FPC_OPTIONS}; result=${makeres}" >> $report
}


echo "Starting $0" > $report
Start_fpc=`which ${FPCBIN}`
if [ "$Start_fpc" == "" ] ; then
  Start_fpc=`which ${FPCPASDIR}/fpc-${FPC_PREVIOUS_FIXES_VERSION}/bin/${FPCBIN}`
fi

if [ "$Start_fpc" == "" ] ; then
  Start_fpc=`which ${FPCPASDIR}/fpc-${FPC_CURRENT_RELEASE_VERSION}/bin/${FPCBIN}`
fi

Start_version=`${FPCBIN} -iV`
Start_date=`${FPCBIN} -iD`
echo "Start ${Start_fpc} version is ${Start_version} ${Start_date}" >> $report
# Adding two gmake distclean before svn up
FPC_OPTIONS=""
run_make
run_make
svn up --accept theirs-conflict  1>> $report 2>&1

# Move to fpcsrc subdirectory if present
if [ -d fpcsrc ]; then
  cd fpcsrc
fi

# Try 'make' at fpcsrc level
FPC_OPTIONS="DEBUG=1 FPC=${FPCBIN}"
FPC_MAKE_TARGET="all install"

run_make

# In case of failure, try with only OPT=-gl option
if [ "${makeres}" != "0" ]; then
  tail -30 ${makelog} >> $report
  FPC_OPTIONS="OPT=-gl FPC=${FPCBIN}"
  run_make
fi

# In case of new failure, try again without any option
if [ "${makeres}" != "0" ]; then
  tail -30 ${makelog} >> $report
  FPC_OPTIONS=" FPC=${FPCBIN}"
  run_make
fi

if [ "${makeres}" != "0" ]; then
  tail -30 ${makelog} >> $report
  cd compiler
  # Try again only compiler level
  FPC_MAKE_TARGET="cycle install"
  FPC_OPTIONS="DEBUG=1 FPC=${FPCBIN}"
  run_make
  if [ "${makeres}" == "0" ]; then
    cd ../rtl
    FPC_MAKE_TARGET="install"
    run_make
  fi
  cd ..
fi

if [ "${makeres}" != "0" ]; then
  tail -30 ${makelog} >> $report
  cd compiler
  # Try again only compiler level
  echo  Try again only compiler level with release compiler >> $report
  FPC_MAKE_TARGET="cycle "
  STOREFPCBIN=${FPCBIN}
  FPCBIN=~/pas/fpc-${FPC_CURRENT_RELEASE_VERSION}/bin/${FPCBIN}
  FPC_OPTIONS="OPT=-gl FPC=${FPCBIN}"
  run_make
  FPCBIN=${STOREFPCBIN}
  if [ "${makeres}" == "0" ]; then
    FPC_OPTIONS="OPT=-gl FPC=`pwd`/${FPCBIN}"
    FPC_MAKE_TARGET="install rtlinstall"
    # run_make, can not be used because of distclean, which would delete FPC
    ${MAKE} ${FPC_MAKE_TARGET} ${FPC_OPTIONS} \
      INSTALL_PREFIX=${FPCPASDIR}/fpc-${FPC_TARGET_VER} 1>> ${makelog} 2>&1
  else
    tail -30 ${makelog} >> $report
  fi
  cd ..
fi


if [ -f ./compiler/${FPCBIN} ]; then
  Build_version=`./compiler/${FPCBIN} -iV`
  if [ "${Build_version}" != "${FPC_TARGET_VER}" ]; then
    echo "Wrong version created ${Build_version} (${FPC_TARGET_VER} expected)" >> $report
  fi 
  Build_target_cpu=`./compiler/${FPCBIN} -iTP`
  if [ "${Build_target_cpu}" != "${FPC_TARGET_CPU}" ]; then
    echo "Wrong cpu created ${Build_target_cpu} (${FPC_TARGET_CPU} expected)" >> $report
  fi 
  Build_target_os=`./compiler/${FPCBIN} -iTO`
  if [ "${Build_target_os}" != "${FPC_TARGET_OS}" ]; then
    echo "Wrong targe OS created ${Build_target_os} (${FPC_TARGET_OS} expected)" >> $report
  fi 
  
  Build_date=`./compiler/${FPCBIN} -iD`
  NEWFPCBIN=`which ${FPCBIN}`
  cmp ./compiler/${FPCBIN} ${NEWFPCBIN}
  cmpres=$?
  if [ "${cmpres}" != "0" ]; then
    echo "Problem: ./compiler/${FPCBIN} and ${NEWFPCBIN} are different" >> $report
  fi 

  echo "New ${FPCBIN} version is ${Build_version} ${Build_date}" >> $report

  cd tests
  # Limit resources (64mb data, 8mb stack, 5 minutes)
  ulimit -d 65536 -s 8192 -t 300

  test_tmt1_kill
  echo "Running distclean in rtl and packages twice to force recompilation" >> ${report}
  ${MAKE} -C ../rtl distclean 1>> ${makelog} 2>&1
  ${MAKE} -C ../rtl distclean 1>> ${makelog} 2>&1
  ${MAKE} -C ../packages distclean 1>> ${makelog} 2>&1
  ${MAKE} -C ../packages distclean 1>> ${makelog} 2>&1

  echo "Starting make distclean fulldb" >> $report
  ${MAKE} distclean fulldb TEST_USER=pierre TEST_FPC=`which ${FPCBIN}` \
    FPC=`which ${FPCBIN}` \
    DB_SSH_EXTRA=" -i ~/.ssh/freepascal-oracle" 1> $testslog 2>&1
  testsres=$?
  echo "Ending make distclean fulldb; result=${testsres}" >> $report

  tail -30 $testslog >> $report

  test_tmt1_kill
  echo "Starting make distclean fulldb with TEST_OPT=-Xn" >> ${report}
  testslog=${testslog/.txt/-2.txt}
  ${MAKE} distclean fulldb TEST_USER=pierre TEST_OPT=-Xn \
    FPC=`which ${FPCBIN}` \
    TEST_FPC=`which ${FPCBIN}` DB_SSH_EXTRA=" -i ~/.ssh/freepascal-oracle"  \
    1> $testslog 2>&1
  testsres=$?
  echo "Ending make distclean fulldb with TEST_OPT=-Xn; result=${testsres}" >> $report
  tail -30 $testslog >> $report

  test_tmt1_kill
  echo "Starting make distclean fulldb with TEST_OPT=-Agas" >> ${report}
  testslog=${testslog/-2.txt/-3.txt}
  ${MAKE} distclean fulldb TEST_USER=pierre TEST_OPT=-Agas \
    FPC=`which ${FPCBIN}` \
    TEST_FPC=`which ${FPCBIN}` DB_SSH_EXTRA=" -i ~/.ssh/freepascal-oracle"  \
    1> $testslog 2>&1
  testsres=$?
  echo "Ending make distclean fulldb with TEST_OPT=-Agas; result=${testsres}" >> $report
  tail -30 $testslog >> $report

  test_tmt1_kill
  echo "Starting make distclean fulldb with TEST_OPT=-Agas -Xn" >> ${report}
  testslog=${testslog/-3.txt/-4.txt}
  ${MAKE} distclean fulldb TEST_USER=pierre TEST_OPT="-Agas -Xn" \
    FPC=`which ${FPCBIN}` \
    TEST_FPC=`which ${FPCBIN}` DB_SSH_EXTRA=" -i ~/.ssh/freepascal-oracle"  \
    1> $testslog 2>&1
  testsres=$?
  echo "Ending make distclean fulldb with TEST_OPT=-Agas -Xn; result=${testsres}" >> $report
  tail -30 $testslog >> $report

  mutt -x -s "Free Pascal results on ${HOSTNAME} ${Build_target_cpu}-${Build_target_os}, \
${Build_version} ${Build_date} (on host $HOST_PC)" \
     -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log
else
# No new compiler
 mutt -x -s "Free Pascal compilation failed on ${HOSTNAME} (in ${HOST_PC}) ${FPC_TARGET_VER}" \
     -i $report -a $makelog -- pierre@freepascal.org < /dev/null | tee  ${report}.log
  # Set testsres to 1 to avoid distclean below
  testsres=1

fi

# Cleanup

if [ "${testsres}" == "0" ]; then
  cd ${FPCPASDIR}/${SVNDIR}
  ${MAKE} distclean 1>> ${makecleanlog} 2>&1
fi


