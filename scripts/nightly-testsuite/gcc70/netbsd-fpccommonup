#!/usr/bin/env bash

. $HOME/bin/fpc-versions.sh

# Limit resources (64mb data, 8mb stack, 40 minutes)

ulimit -d 65536 -s 8192 -t 2400
export LC_ALL=en_US.UTF-8
export OVERRIDEVERSIONCHECK=1 

if [ "`uname -s`" == "NetBSD" ] ; then
  export MAKE=gmake
else
  export MAKE=make
fi
if [ "${HOSTNAME}" == "vadmin" ]; then
  HOST_PC=PC_AFM
  USER=vadmin
else
  HOST_PC=${HOSTNAME%%\.*}
fi
MACHINE=`uname -m`

if [ "$FIXES" == "1" ] ; then
  SVNDIR=fixes
  export CURVER=$FIXESVERSION
else
  SVNDIR=trunk
  export CURVER=$TRUNKVERSION
fi

# Use version info from fpc-versions.sh
export FPCRELEASEVERSION=$RELEASEVERSION

if [ "$FPCBIN" == "" ] ; then
  if [ "$MACHINE" == "amd64" ] ; then
    export FPCBIN=ppcx64
  else
    export FPCBIN=ppc386
  fi
fi

if [ "$FPCBIN" == "ppc386" ] ; then
  export FPMAKE_SKIP_CONFIG="-n -XPi386-"
  export BINUTILSPREFIX=i386-
  export REPSUFFIX=-32
  NEEDED_OPT="   -Xd -Fl/usr/lib/i386 -Fl~/pas/test/iconv32/lib -k-nostdlib -k-L/usr/lib/i386 -k-L$HOME/pas/test/iconv32/lib -k-rpath -k$HOME/pas/test/iconv32/lib"
else
  export FPMAKE_SKIP_CONFIG="-n"
  export BINUTILSPREFIX=
  export REPSUFFIX=-64
fi

FPCRELEASEBINDIR=/home/${USER}/pas/fpc-${FPCRELEASEVERSION}/bin

export PATH=/home/${USER}/pas/fpc-${CURVER}/bin:/home/${USER}/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/pkg/bin:/home/${USER}/pas/fpc-${FPCRELEASEVERSION}/bin

export HOME=/home/${USER}

cd ${HOME}/pas/$SVNDIR
export report=`pwd`/report${REPSUFFIX}.txt 
export makelog=`pwd`/make${REPSUFFIX}.txt 
export testslog=`pwd`/tests${REPSUFFIX}.txt 

echo "Starting $0" > $report

Start_version=`${FPCBIN} -iV`
Start_date=`${FPCBIN} -iD`
echo "Start ${FPCBIN} version is ${Start_version} ${Start_date}" >> $report
svn cleanup 1>> $report 2>&1
svn up --accept theirs-conflict --force 1>> $report 2>&1

if [ -d fpcsrc ]; then
  cd fpcsrc
fi

echo "Starting make distclean all" >> $report
# libiconv is now required for successful make all
if [ "$FPCBIN" == "ppc386" ] ; then
  export OPT="$NEEDED_OPT"
else
  export OPT=-Fl${HOME}/pas/test/iconv/lib
fi

${MAKE} distclean all singlezipinstall FPC=${FPCBIN} DEBUG=1 \
  FPMAKE_SKIP_CONFIG="${FPMAKE_SKIP_CONFIG}" 1> ${makelog} 2>&1
makeres=$?

echo "Ending make distclean all; result=${makeres}" >> $report
tail -30 ${makelog} >> $report
if [ "${makeres}" != "0" ] ; then
  echo "Starting make distclean all using release version" >> $report
  ${MAKE} distclean all FPC=${FPCRELEASEBINDIR}/${FPCBIN} \
    FPMAKE_SKIP_CONFIG="${FPMAKE_SKIP_CONFIG}" \
    DEBUG=1 1>> ${makelog} 2>&1
  makeres=$?
  echo "Ending make distclean all; result=${makeres}" >> $report
  tail -30 ${makelog} >> $report
fi

if [ -f ./compiler/${FPCBIN} ]; then
  Build_version=`./compiler/${FPCBIN} -iV`
  Build_date=`./compiler/${FPCBIN} -iD`
  FPC_TARGET_OS=`./compiler/${FPCBIN} -iTO`
  FPC_TARGET_CPU=`./compiler/${FPCBIN} -iTP`
  FPC_FULL_TARGET=${FPC_TARGET_CPU}-${FPC_TARGET_OS}
else
  echo "Compilation failed, no new binary ./compiler/${FPCBIN}"
  mutt -x -s "Free Pascal compilation failed on ${HOST_PC}, in dir ${SVNDIR}" \
    -i $report -- pierre@freepascal.org < /dev/null
    exit
fi

echo "New ${FPCBIN} version is ${Build_version} ${Build_date}" >> $report

if [ "${makeres}" == "0" ] ; then
  echo "Starting make install" >> $report
  ${MAKE} DEBUG=1 install INSTALL_PREFIX=${HOME}/pas/fpc-${Build_version} FPC=${FPCBIN}  1>> ${makelog} 2>&1
makeres=$?
else
  cd compiler
  ${MAKE} DEBUG=1 install INSTALL_PREFIX=${HOME}/pas/fpc-${Build_version} FPC=${FPCBIN}  1>> ${makelog} 2>&1
  cd ../rtl
  ${MAKE} DEBUG=1 install INSTALL_PREFIX=${HOME}/pas/fpc-${Build_version} FPC=${FPCBIN}  1>> ${makelog} 2>&1
  cd ../utils
  ${MAKE} DEBUG=1 install INSTALL_PREFIX=${HOME}/pas/fpc-${Build_version} FPC=${FPCBIN}  1>> ${makelog} 2>&1
  cd ../packages
  ${MAKE} DEBUG=1 install INSTALL_PREFIX=${HOME}/pas/fpc-${Build_version}\
    FPMAKE_SKIP_CONFIG="${FPMAKE_SKIP_CONFIG}" \
    FPC=${FPCBIN}  1>> ${makelog} 2>&1
  cd ..

fi


cd tests
# Limit resources (64mb data, 8mb stack, 4 minutes)

ulimit -d 65536 -s 8192 -t 240

if [ "$FPCBIN" == "ppc386" ] ; then
  export TEST_OPT="$NEEDED_OPT -k-rpath -k."
  export TEST_BINUTILSPREFIX="$BINUTILSPREFIX"
else
  export TEST_OPT="-Fl/usr/pkg/lib -Fl${HOME}/pas/test/iconv/lib \
 -k-rpath -k/usr/pkg/lib -k-rpath -k${HOME}/pas/test/iconv/lib -k-rpath -k."
fi

echo  "Free Pascal results on ${HOST_PC}, with option ${TEST_OPT}, ${Build_version} ${Build_date}" >> $report

# export TEST_DELTEMP=1
# export TEST_DELBEFORE=1
echo "Starting make distclean fulldb" >> $report
${MAKE} distclean fulldb TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
  TEST_FPC=`which ${FPCBIN}` FPC=`which ${FPCBIN}` TEST_OPT="${TEST_OPT}" \
  DB_SSH_EXTRA=" -i ${HOME}/.ssh/freepascal" \
  FPMAKE_SKIP_CONFIG="${FPMAKE_SKIP_CONFIG}" 1> $testslog 2>&1
testsres=$?
echo "Ending make distclean fulldb; result=${testsres}" >> $report

tail -30 $testslog >> $report


TEST_OPT_BASE="${TEST_OPT}"

TEST_OPT="${TEST_OPT_BASE} -Aas"
echo  "Free Pascal results on ${HOST_PC}, with option ${TEST_OPT}, ${Build_version} ${Build_date}" >> $report
echo "Starting make clean fulldb with TEST_OPT=${TEST_OPT}" >> ${report}
${MAKE} distclean fulldb TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
  TEST_OPT="${TEST_OPT}" TEST_FPC=`which ${FPCBIN}` FPC=`which ${FPCBIN}` \
  FPMAKE_SKIP_CONFIG="${FPMAKE_SKIP_CONFIG}" \
  DB_SSH_EXTRA=" -i ${HOME}/.ssh/freepascal" 1> $testslog 2>&1
testsres=$?
echo "Ending make distclean fulldb with TEST_OPT=${TEST_OPT}; result=${testsres}" >> $report

tail -30 $testslog >> $report

TEST_OPT="${TEST_OPT_BASE} -Aas -O-"
echo  "Free Pascal results on ${HOST_PC}, with option ${TEST_OPT}, ${Build_version} ${Build_date}" >> $report
echo "Starting make clean fulldb with TEST_OPT=${TEST_OPT}" > ${report}
${MAKE} distclean fulldb TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} TEST_OPT="${TEST_OPT}" TEST_FPC=`which ${FPCBIN}` FPC=`which ${FPCBIN}` DB_SSH_EXTRA=" -i ${HOME}/.ssh/freepascal" 1> $testslog 2>&1
testsres=$?
echo "Ending make distclean fulldb with TEST_OPT=${TEST_OPT}; result=${testsres}" >> $report

tail -30 $testslog >> $report

TEST_OPT="${TEST_OPT_BASE} -Cg"
echo  "Free Pascal results on ${HOST_PC}, with option ${TEST_OPT}, ${Build_version} ${Build_date}" >> $report
echo "Starting make clean fulldb with TEST_OPT=${TEST_OPT}" > ${report}
${MAKE} distclean fulldb TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} TEST_OPT="${TEST_OPT}" TEST_FPC=`which ${FPCBIN}` FPC=`which ${FPCBIN}` DB_SSH_EXTRA=" -i ${HOME}/.ssh/freepascal" 1> $testslog 2>&1
testsres=$?
echo "Ending make distclean fulldb with TEST_OPT=${TEST_OPT}; result=${testsres}" >> $report

tail -30 $testslog >> $report

mutt -x -s "Free Pascal results on ${HOST_PC}, ${FPC_FULL_TARGET},  ${Build_version} ${Build_date}" \
     -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log


