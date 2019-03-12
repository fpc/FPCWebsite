#!/usr/bin/env bash

# Limit resources (64mb data, 8mb stack, 40 minutes)

ulimit -d 65536 -s 8192 -t 2400

processor=`uname -p`

# Use same TimeZone as defined inside cron
if [ "X$CRON_TZ" != "X" ] ; then
  export TZ=$CRON_TZ
fi

export LANG=en_US.UTF-8

if [ "$CURVER" == "" ]; then
  export CURVER=3.2.0
fi
if [ "$SVNDIR" == "" ]; then
  export SVNDIR=fixes
fi
if [ "$RELEASEVER" == "" ]; then
  export RELEASEVER=3.0.4
fi

if [ "$FPCBIN" == "" ]; then
  if [ "${processor}" == "ppc64" ] ; then
    FPCBIN=ppcppc64
    LOGSUF=-64
  fi
  if [ "${processor}" == "ppc" ] ; then
    FPCBIN=ppcppc
    LOGSUF=-32
  fi
  if [ "${processor}" == "aarch64" ] ; then
    FPCBIN=ppca64
    LOGSUF=-64
  fi
  if [ "${processor}" == "arm" ] ; then
    FPCBIN=ppcarm
    LOGSUF=-32
    if [ -z "$REQUIRED_ARM_OPT" ] ; then
      export REQUIRED_ARM_OPT=" -dFPC_ARMHF -Cparmv7a -Fl$HOME/sys-root/arm-linux-gnueabihf/lib"
    fi
  fi
fi

NO_RELEASE=0
# If using 32-bit version of compiler
# special as is needed with -a32 option.
# this is in ~/bin/powerpc-as
# ~/bin/powerpc-ld has no option
if [ "$FPCBIN" == "ppcppc" ]; then
  export TEST_BINUTILSPREFIX=powerpc-
  export BINUTILSPREFIX=powerpc-
  export OPT="${OPT} -Xd -Fl/usr/lib -Fl/lib"
  export FPMAKE_SKIP_CONFIG="-n -XPpowerpc-"
elif [ "$FPCBIN" == "ppcppc64" ]; then
  export FPMAKE_SKIP_CONFIG="-n"
  # IDE compilation fails because it tries to use /usr/lib64/libbfd.a 
  # instead of supplied libbfd.a from GDB compilation.
  export SPECIALLINK="-Xd"
# If using 32-bit version of ARM compiler
# special as is needed with -a32 option.
# this is in ~/bin/powerpc-as
# ~/bin/powerpc-ld has no option
elif [ "$FPCBIN" == "ppcarm" ]; then
  export TEST_BINUTILSPREFIX=arm-linux-
  export BINUTILSPREFIX=arm-linux-
  export OPT="${OPT} -Xd -Fl/usr/lib -Fl/lib"
  if [ -d /usr/lib/gcc-cross/arm-linux-gnueabihf/4.8 ] ; then
    export OPT="$OPT -Fl/usr/lib/gcc-cross/arm-linux-gnueabihf/4.8"
  fi
  if [ -s "$REQUIRED_ARM_OPT" ] ; then
    export OPT="$OPT $REQUIRED_ARM_OPT"
  fi
  export FPCMAKEOPT="-gl -XParm-linux- $REQUIRED_ARM_OPT"
elif [ "$FPCBIN" == "ppca64" ] ; then
  export NO_RELEASE=1
  export FPMAKE_SKIP_CONFIG="-n"
  # IDE compilation fails because it tries to use /usr/lib64/libbfd.a 
  # instead of supplied libbfd.a from GDB compilation.
  export SPECIALLINK="-Xd"
  export OPT="${OPT} -Fl/usr/lib/gcc/aarch64-linux-gnu/4.8"
fi

if [ "$MAKE" == "" ]; then
  MAKE=make
fi

HOST_PC=${HOSTNAME%%\.*}
export TEST_USER=pierre
FPCRELEASEBINDIR=${HOME}/pas/fpc-${RELEASEVER}/bin

export PATH=${HOME}/pas/fpc-${CURVER}/bin:${HOME}/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:${FPCRELEASEBINDIR}

FPCRELEASEBIN=${FPCRELEASEBINDIR}/${FPCBIN}

cd $HOME/pas/$SVNDIR

export LOGDIR=$HOME/logs/$SVNDIR/$processor

if [ ! -d $LOGDIR ] ; then
  mkdir -p $LOGDIR
fi
export report=$LOGDIR/report${LOGSUF}.txt 
export makelog=$LOGDIR/make${LOGSUF}.txt 
export testslog=$LOGDIR/tests${LOGSUF}.txt 

echo "Starting $0" > $report
echo "Start time `date +%Y-%m-%d-%H:%M:%S`" >> $report
Start_version=`${FPCBIN} -iV`
Start_date=`${FPCBIN} -iD`
echo "Start ${FPCBIN} version is ${Start_version} ${Start_date}" >> $report
svn cleanup 1>> $report 2>&1
svn up --force --accept theirs-conflict  1>> $report 2>&1

if [ -d fpcsrc ]; then
  cd fpcsrc
  export FPCSRCDIR=fpcsrc
else
  export FPCSRCDIR=
fi

echo "Starting make `date +%Y-%m-%d-%H:%M:%S`" > $makelog

# For aarch64 we have no release yet, use cross-compilation from
# 2.6.4 ppcarm binary
if [ $NO_RELEASE -eq 1 ]; then
  cd compiler
  if [ -e ./new-ppcarm ] ; then
    rm ./new-ppcarm
  fi
  if [ -e ./new-ppcrossa64 ] ; then
    rm ./new-ppcrossa64
  fi
  make distclean rtlclean OPT="-n" BINUTILSPREFIX=arm-linux-  DEBUG=1 FPC=ppcarm >> ${makelog} 2>&1
  make cycle OPT="-n" BINUTILSPREFIX=arm-linux- DEBUG=1 FPC=ppcarm >> ${makelog} 2>&1
  res=$?
  if [ $res -eq 0 ] ; then
    cp ./ppcarm ./new-ppcarm
    make install FPC=`pwd`/ppcarm INSTALLPREFIX=$HOME/pas/fpc-$CURVER >> ${makelog} 2>&1
    # This one might fail as 3.0.0 arm relase fpcmake binary crashes
    make -C ../rtl install FPC=`pwd`/ppcarm INSTALLPREFIX=$HOME/pas/fpc-$CURVER >> ${makelog} 2>&1
  else
    echo "Error: no new arm native ppcarm" >> $report
    mutt -x -s "Free Pascal failure on ${HOST_PC}" \
     -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log
    exit
  fi
  make distclean rtlclean CPC_TARGET=aarch64 OPT="-n -XParm-linux-" ASNAME=arm-linux-as DEBUG=1 FPC=`pwd`/new-ppcarm >> ${makelog} 2>&1
  # rtl and all targets cannot be combinedc into a single make call,
  # because UNITDIR_RTL doesn't get updated after rtl compilation
  make rtl CPC_TARGET=aarch64 OPT="-n -XParm-linux-" ASNAME=arm-linux-as DEBUG=1 FPC=`pwd`/new-ppcarm >> ${makelog} 2>&1
  make all CPC_TARGET=aarch64 OPT="-n -XParm-linux-" ASNAME=arm-linux-as DEBUG=1 FPC=`pwd`/new-ppcarm >> ${makelog} 2>&1
  res=$?
  if [ $res -eq 0 ] ; then
    if [ -e ./ppca64 ] ; then
      cp ./ppca64 ./new-ppcrossa64
    elif [ -e ./ppcrossa64 ] ; then
      cp ./ppcrossa64 ./new-ppcrossa64
    else
      echo "Error: no new arm -> aarch64 cross compiler" >> $report
      mutt -x -s "Free Pascal failure on ${HOST_PC}" \
       -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log
      exit
    fi
  else
    echo "Error: no new arm -> aarch64 cross compiler" >> $report
    mutt -x -s "Free Pascal failure on ${HOST_PC}" \
     -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log
    exit
  fi
  make distclean rtlclean OPT="-n -XP" ASNAME=as DEBUG=1 FPC=`pwd`/new-ppcrossa64 >> ${makelog} 2>&1
  # rtl and all targets cannot be combinedc into a single make call,
  # because UNITDIR_RTL doesn't get updated after rtl compilation
  make rtl OPT="-n -XP" ASNAME=as DEBUG=1 FPC=`pwd`/new-ppcrossa64 >> ${makelog} 2>&1
  make all OPT="-n -XP" ASNAME=as DEBUG=1 FPC=`pwd`/new-ppcrossa64 >> ${makelog} 2>&1
  if [ ! -d ${HOME}/pas/temp ] ; then
    mkdir -p ${HOME}/pas/temp
  fi
  if [ -e ./ppca64 ] ; then
    cp ./ppca64 ${HOME}/pas/temp/ppca64
    FPCRELEASEBIN=${HOME}/pas/temp/ppca64
  elif [ -e ./ppcrossa64 ] ; then
    cp ./ppcrossa64 ${HOME}/pas/temp/ppca64
    FPCRELEASEBIN=${HOME}/pas/temp/ppca64
  else
    echo"Error: no new ppca64 binary" >> $report
    mutt -x -s "Free Pascal failure on ${HOST_PC}" \
     -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log
    exit
  fi
  cd ..
fi

echo "Starting make distclean all" >> $report
${MAKE} distclean all DEBUG=1 FPC=${FPCBIN} OVERRIDEVERSIONCHECK=1 \
  FPMAKE_SKIP_CONFIG="${FPMAKE_SKIP_CONFIG}" 1>> ${makelog} 2>&1
makeres=$?

echo "Ending make distclean all; result=${makeres}" >> $report
if [ ${makeres} -ne 0 ]; then
  tail -30 ${makelog} >> $report
fi

if [ ${makeres} -ne 0 ] ; then
  echo "Starting make distclean all, using ${FPCRELEASEBIN}" >> $report
    ${MAKE} distclean all DEBUG=1 FPC=${FPCRELEASEBIN} \
    FPMAKE_SKIP_CONFIG="${FPMAKE_SKIP_CONFIG}" 1>> ${makelog} 2>&1
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


echo "Starting make distclean fulldb, TEST_OPT=\"${TEST_OPT}\"" >> $report
${MAKE} distclean fulldb TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
  TEST_FPC=${FPC}  FPC=${FPC} OPT="${OPT}" TEST_OPT="${TEST_OPT}" \
  DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1> $testslog 2>&1
testsres=$?
echo "Ending make distclean fulldb, TEST_OPT=\"${TEST_OPT}\"; result=${testsres}" >> $report

tail -30 $testslog >> $report
echo "End time `date +%Y-%m-%d-%H:%M:%S`" >> $report


#mutt -x -s "Free Pascal results on ${HOST_PC} ${Build_version} ${Build_date}" \
#     -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log

TEST_OPT="-O3 -Cg ${TEST_OPT}"
export testslog=$LOGDIR/tests-O3${LOGSUF}.txt 

echo "Starting make clean fulldb with TEST_OPT=${TEST_OPT}" >> ${report}
echo "Start time `date +%Y-%m-%d-%H:%M:%S`" >> $report
${MAKE} distclean fulldb TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
  TEST_FPC=${FPC}  FPC=${FPC} OPT="${OPT}" \
  TEST_OPT="${TEST_OPT}"  DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1> $testslog 2>&1
testsres=$?
echo "Ending make distclean fulldb with TEST_OPT=${TEST_OPT}; result=${testsres}" >> $report

tail -30 $testslog >> $report

echo "End time `date +%Y-%m-%d-%H:%M:%S`" >> $report

mutt -x -s "Free Pascal results on ${HOST_PC}, with option ${TEST_OPT}, ${Build_version} ${Build_date}" \
     -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log


# Cleanup

if [ "${testsres}" == "0" ]; then
  cd ~/pas/trunk
  ${MAKE} distclean 1>> ${makelog} 2>&1
fi


