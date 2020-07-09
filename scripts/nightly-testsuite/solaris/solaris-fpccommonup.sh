#!/usr/bin/env bash
# Limit resources (64mb data, 8mb stack, 40 minutes)

# These might need to be updated
# after a release

if [ -z "$INSTALLFPCDIRPREFIX" ] ; then
  . $HOME/bin/fpc-versions.sh
fi

FPC_CURRENT_RELEASE_VERSION=$RELEASEVERSION
FPC_CURRENT_TRUNK_VERSION=$TRUNKVERSION
FPC_CURRENT_FIXES_VERSION=$FIXESVERSION
export OVERRIDEVERSIONCHECK=1

export MAKE=gmake
testsres=0
do_upload=1
if [ -z "$HOSTNAME" ] ; then
  HOSTNAME=`uname -n`
fi

echo "Running $0 on $HOSTNAME"
pref=$HOSTNAME
MAKE_OPT=""

if [ "${HOSTNAME/unstable/}" != "${HOSTNAME}" ] ; then
  HOST_PC=opencsw
  do_upload=0
  echo "$pref: Using special opencsw buildfarm configuration"
  # We need /opt/csw/bin in path
  WITHCSW=1
  MAKE_OPT="-j 4"
else
if [ "${HOSTNAME}" == "Oracle" ]; then
  HOST_PC=E6510_Muller
else
if [ "${HOSTNAME}" == "openindiana" ]; then
  HOST_PC=firmos
else
  HOST_PC=PC_AFM
fi
fi
fi


if [ $do_upload -eq 1 ] ; then
  FULL=fulldb
else
  FULL="full tarfile"
fi

# Default to i386 target
if [ -z "${FPCBIN}" ]; then
  if [ "`uname -p`" == "sparc" ] ; then
    FPCBIN=ppcsparc
  else
    FPCBIN=ppc386
  fi
fi

# Default pas dir to ${HOME}/pas
if [ -z "${FPCPASDIR}" ]; then
  FPCPASDIR=~/pas
fi

# Set default CPU if not set
if [ -z "${FPC_TARGET_CPU}" ]; then
  if [ "${FPCBIN}" == "ppcx64" ]; then
    FPC_TARGET_CPU=x86_64
  elif [ "${FPCBIN}" == "ppc386" ]; then
    FPC_TARGET_CPU=i386
  elif [ "${FPCBIN}" == "ppcsparc" ]; then
    FPC_TARGET_CPU=sparc
  elif [ "${FPCBIN}" == "ppcsparc64" ]; then
    FPC_TARGET_CPU=sparc64
  else
    FPC_TARGET_CPU=Unknown
  fi
fi

if [ -z "$FPCPASINSTALLDIR" ] ; then
  if [ "$HOST_PC" == "opencsw" ] ; then
    if [ -z "$FPC_SOURCE_CPU" ] ; then
      FPCPASINSTALLDIR=$FPCPASDIR/$FPC_TARGET_CPU
    else
      FPCPASINSTALLDIR=$FPCPASDIR/$FPC_SOURCE_CPU
    fi
  else
    FPCPASINSTALLDIR=$FPCPASDIR
  fi
fi

# Default to trunk
if [ -z "${SVNDIR}" ]; then
  SVNDIR=trunk
fi

# Default to current trunk/fixes version
if [ -z "${FPC_TARGET_VER}" ]; then
  svn_dir_has_trunk=`echo ${SVNDIR} | grep -i trunk`
  if [ "${svn_dir_has_trunk}" != "" ]; then
    FPC_TARGET_VER=${FPC_CURRENT_TRUNK_VERSION}
  else
    FPC_TARGET_VER=${FPC_CURRENT_FIXES_VERSION}
  fi
fi

if [ -z "$FPC_TARGET_OS" ] ; then
  FPC_TARGET_OS=solaris
fi

export LANG=en_US.UTF-8

# Setup PATH variable
NEWPATH=${FPCPASINSTALLDIR}/fpc-${FPC_TARGET_VER}/bin
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
if [ -d /usr/ccs/bin ] ; then
  # SunOS linker seems to be in this directory
  NEWPATH=${NEWPATH}:/usr/ccs/bin
fi

NEWPATH=${NEWPATH}:${FPCPASINSTALLDIR}/fpc-${FPC_CURRENT_RELEASE_VERSION}/bin
if [ "${WITHCSW}" == "1" ]; then
  EXTRA="with CSW"
  NEWPATH=/opt/csw/bin:${NEWPATH}
fi

PATH=$NEWPATH
export PATH
echo "$pref: Using new path $PATH"

function test_tmt1_kill {
  if [ -f ~/bin/tmt1_kill.sh ]; then
    RUNNING=`ps -e | grep "tmt1_k"`
    if [ "${RUNNING}" == "" ]; then
      nohup ~/bin/tmt1_kill.sh &
    fi
  fi
}


cd ${FPCPASDIR}/${SVNDIR}

LOGDIR=${HOME}/logs/${SVNDIR}

if [ ! -d ${LOGDIR} ] ; then
  mkdir -p ${LOGDIR}
fi

export report=${LOGDIR}/report-${FPC_TARGET_CPU}.txt 
export makelog=${LOGDIR}/make-${FPC_TARGET_CPU}.txt 
export makecleanlog=${LOGDIR}/make-clean-${FPC_TARGET_CPU}.txt 
export testslog=${LOGDIR}/tests-${FPC_TARGET_CPU}.txt 
export DATETIMESTAMP="date +%Y-%m-%d-%H:%M"

echo "`$DATETIMESTAMP` Starting $0" > $report
echo "`$DATETIMESTAMP` Starting make" > $makelog

if [ -z "$SKIPMAKE" ] ; then
  
  function run_make {
    FPC_MAKE_TARGETS="$1"
    FPC_OPTIONS="$2"
    echo "`$DATETIMESTAMP` Starting ${MAKE} ${FPC_MAKE_TARGETS} ${FPC_OPTIONS} in `pwd`" >> $report
    ${MAKE} ${FPC_MAKE_TARGETS} ${FPC_OPTIONS} \
    INSTALL_PREFIX=${FPCPASINSTALLDIR}/fpc-${FPC_TARGET_VER} 1>> ${makelog} 2>&1
    makeres=$?
    echo "`$DATETIMESTAMP` Ending ${MAKE} distclean ${FPC_MAKE_TARGETS} ${FPC_OPTIONS}; result=${makeres}" >> $report
  }
  
  
  Start_fpc=`which ${FPCBIN}`
  if [ "$Start_fpc" == "" ] ; then
    Start_fpc=`which ${FPCPASDIR}/fpc-${FPC_CURRENT_RELEASE_VERSION}/bin/${FPCBIN}`
  fi
  
  if [ "$Start_fpc" == "" ] ; then
    Start_fpc=`which ${FPCPASDIR}/fpc-${FPC_PREVIOUS_FIXES_VERSION}/bin/${FPCBIN}`
  fi
  
  Start_version=`${FPCBIN} -iV`
  Start_date=`${FPCBIN} -iD`
  echo "`$DATETIMESTAMP` Start ${Start_fpc} version is ${Start_version} ${Start_date}" >> $report
  echo "Using PATH=\"$PATH\"" >> $report
  # Adding two gmake distclean before svn up
  FPC_OPTIONS=""
  run_make distclean
  run_make distclean
  svn cleanup 1>> $report 2>&1
  svn up --accept theirs-conflict  1>> $report 2>&1
  
  # Move to fpcsrc subdirectory if present
  if [ -d fpcsrc ]; then
    cd fpcsrc
  fi
  
  if [ -f packages/fpmake ] ; then
    rm -f packages/fpmake
  fi
  if [ -f utils/fpmake ] ; then
    rm -f utils/fpmake
  fi
  
  # Try 'make' at fpcsrc level
  
  run_make "distclean all install" "DEBUG=1 FPC=${FPCBIN}"
  
  # In case of failure, try with only OPT=-gl option
  if [ "${makeres}" != "0" ]; then
    tail -30 ${makelog} >> $report
    run_make "distclean all install" "OPT=-gl FPC=${FPCBIN}"
  fi
  
  # In case of new failure, try again without any option
  if [ "${makeres}" != "0" ]; then
    tail -30 ${makelog} >> $report
    run_make "distclean all install" "FPC=${FPCBIN}"
  fi
 
  new_comp_ok=0 
  if [ "${makeres}" != "0" ]; then
    tail -30 ${makelog} >> $report
    cd compiler
    # Try again only compiler level
    run_make "distclean cycle install" "DEBUG=1 FPC=${FPCBIN}"
    if [ "${makeres}" == "0" ]; then
      new_comp_ok=1
    fi
    cd ..
  fi
  
  if [ "${makeres}" != "0" ]; then
    tail -30 ${makelog} >> $report
    cd compiler
    # Try again only compiler level
    echo "`$DATETIMESTAMP`  Try again only compiler level with release compiler" >> $report
    STOREFPCBIN=${FPCBIN}
    FPCBIN=${FPCPASINSTALLDIR}/fpc-${FPC_CURRENT_RELEASE_VERSION}/bin/${FPCBIN}
    run_make "distclean cycle" "OPT=-gl FPC=${FPCBIN}"
    FPCBIN=${STOREFPCBIN}
    if [ "${makeres}" == "0" ]; then
      run_make "install rtlinstall" "OPT=-gl FPC=`pwd`/${FPCBIN} INSTALL_PREFIX=${FPCPASINSTALLDIR}/fpc-${FPC_TARGET_VER}"
      new_comp_ok=1
    else
      tail -30 ${makelog} >> $report
    fi
    cd ..
  fi
  if [ $new_comp_ok -eq 1 ] ; then
    run_make "distclean install" "DEBUG=1 FPC=${FPCBIN}"
  fi
  if [ -d fpcsrc ]; then
    cd fpcsrc
  fi
  
fi # SKIPMAKE

function run_tests ()
{
  TEST_OPT="$1"
  echo "`$DATETIMESTAMP` Starting make distclean $FULL with TEST_OPT=\"$TEST_OPT\"" >> $report
  echo "${MAKE} -C .. info TEST_USER=pierre TEST_FPC=`which ${FPCBIN}` FPC=`which ${FPCBIN}` TEST_OPT=\"$TEST_OPT\" DB_SSH_EXTRA=\" -i ~/.ssh/freepascal-oracle\"" >> $report
  ${MAKE} -C .. info TEST_USER=pierre TEST_FPC=`which ${FPCBIN}` FPC=`which ${FPCBIN}` TEST_OPT="$TEST_OPT" DB_SSH_EXTRA=" -i ~/.ssh/freepascal-oracle" > $testslog 2>&1
  env >> $testslog
  set >> $testslog
  echo "${MAKE} info TEST_USER=pierre TEST_FPC=`which ${FPCBIN}` FPC=`which ${FPCBIN}` TEST_OPT=\"$TEST_OPT\" DB_SSH_EXTRA=\" -i ~/.ssh/freepascal-oracle\"" >> $report
  ${MAKE} info TEST_USER=pierre TEST_FPC=`which ${FPCBIN}` FPC=`which ${FPCBIN}` TEST_OPT="$TEST_OPT" DB_SSH_EXTRA=" -i ~/.ssh/freepascal-oracle" >> $testslog 2>&1
  echo "${MAKE} distclean $FULL TEST_USER=pierre TEST_FPC=`which ${FPCBIN}` FPC=`which ${FPCBIN}` TEST_OPT=\"$TEST_OPT\" DB_SSH_EXTRA=\" -i ~/.ssh/freepascal-oracle\"" >> $report
  for rule in distclean $FULL ; do
    ${MAKE} ${MAKE_OPT} $rule TEST_USER=pierre TEST_FPC=`which ${FPCBIN}` \
      FPC=`which ${FPCBIN}` TEST_OPT="$TEST_OPT" \
      DB_SSH_EXTRA=" -i ~/.ssh/freepascal-oracle" >> $testslog 2>&1
    testsres=$?
    if [ $testsres -ne 0 ] ; then
      echo "Error in rule $rule res=$testsres, echoing 30 last lines of $testslog" >> $report
      tail -30 $testslog >> $report
      echo "End of $testslog" >> $report
    fi
  done
  echo "`$DATETIMESTAMP` Ending make distclean $FULL; result=${testsres}" >> $report
  if [ $do_upload -eq 0 ] ; then
    echo "`$DATETIMESTAMP` cp output/${FPC_TARGET_CPU}-${FPC_TARGET_OS}/*.tar.gz ~/logs/to_upload/" >> $report
    cp output/${FPC_TARGET_CPU}-${FPC_TARGET_OS}/*.tar.gz ~/logs/to_upload/ >> $report 2>&1
  fi
}

if [ -f ./compiler/${FPCBIN} ]; then
  Build_version=`./compiler/${FPCBIN} -iV`
  if [ "${Build_version}" != "${FPC_TARGET_VER}" ]; then
    echo "Wrong version created ${Build_version}, ${FPC_TARGET_VER} expected" >> $report
  fi 
  Build_target_cpu=`./compiler/${FPCBIN} -iTP`
  if [ "${Build_target_cpu}" != "${FPC_TARGET_CPU}" ]; then
    echo "Wrong cpu created ${Build_target_cpu}, ${FPC_TARGET_CPU} expected" >> $report
  fi 
  Build_target_os=`./compiler/${FPCBIN} -iTO`
  if [ "${Build_target_os}" != "${FPC_TARGET_OS}" ]; then
    echo "Wrong target OS created ${Build_target_os}, ${FPC_TARGET_OS} expected" >> $report
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

  testsres=0
  run_tests ""
  test_tmt1_kill

  testslog=${testslog/.txt/-2.txt}
  run_tests "-Xn"
  test_tmt1_kill

  testslog=${testslog/-2.txt/-3.txt}
  run_tests "-Agas"
  test_tmt1_kill

# testslog=${testslog/-3.txt/-4.txt}
# run_tests "-Agas -Xn"
# test_tmt1_kill

  mutt -x -s "Free Pascal results on ${HOSTNAME} ${Build_target_cpu}-${Build_target_os}, ${Build_version} ${Build_date}, on host $HOST_PC" \
     -i $report -- pierre@freepascal.org < /dev/null 2>&1 | tee  ${report}.log
else
  # No new compiler
  mutt -x -s "Free Pascal compilation failed on ${HOSTNAME} in ${HOST_PC} ${FPC_TARGET_VER}" -i $report -a $makelog -- pierre@freepascal.org < /dev/null 2>&1 | tee  ${report}.log
  # Set testsres to 1 to avoid distclean below
  testsres=1
fi

# Cleanup

if [ "${testsres}" == "0" ]; then
  cd ${FPCPASDIR}/${SVNDIR}
  ${MAKE} distclean > ${makecleanlog} 2>&1
fi


