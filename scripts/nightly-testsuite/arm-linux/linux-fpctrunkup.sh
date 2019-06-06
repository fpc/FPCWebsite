#!/bin/bash

# Limit resources (64mb data, 8mb stack, 40 minutes)

. $HOME/bin/fpc-versions.sh

ulimit -s 8192 -t 2400

if [ "X$FPCBIN" == "X" ] ; then
  FPCBIN=ppcarm
fi

if [ "X$FPCBIN" == "Xppcarm" ] ; then
  if [ "X${HOSTNAME//piHome/}" != "X${HOSTNAME}" ] ; then
    export TEST_ABI=gnueabihf
    export EXTRA_OPT="-gl -dFPC_ARMHF  -CaEABIHF -CpARMv6 -CfVFPv2"
  else
    export TEST_ABI=gnueabi
  fi
fi
export MAKE=make
if [ "${HOSTNAME}" == "vadmin" ]; then
  HOST_PC=PC_AFM
  USER=vadmin
else
  HOST_PC=${HOSTNAME}
fi

if [ "$USER" == "" ]; then
  USER=$LOGNAME
fi

DATE="date +%Y-%m-%d-%H-%M"
FPCRELEASEVERSION=$RELEASEVERSION

export PATH=/home/${USER}/pas/fpc-${FPCRELEASEVERSION}/bin:/home/${USER}/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
echo "PATH is $PATH"
cd $TRUNKDIR 

export report=`pwd`/report.txt 
export report2=`pwd`/report2.txt 
export makelog=`pwd`/make.txt 
export testslog=`pwd`/tests.txt 

echo "Starting $0" > $report
Start_version=`$FPCBIN -iV`
Start_date=`$FPCBIN -iD`
echo "Start $FPCBIN version is ${Start_version} ${Start_date}" >> $report
echo "Start time `$DATE`" >> $report
svn cleanup 1>> $report 2>&1
svn up --accept theirs-conflict 1>> $report 2>&1

if [ -d fpcsrc ]; then
  cd fpcsrc
fi

NEEDED_OPT="-Fl/usr/lib/arm-linux-$TEST_ABI $EXTRA_OPT"

echo "Starting make distclean all" >> $report
echo "Start make `$DATE`" >> $report
${MAKE} distclean all DEBUG=1 OPT="$NEEDED_OPT" 1> ${makelog} 2>&1
makeres=$?

echo "Ending make distclean all; result=${makeres}" >> $report
tail -30 ${makelog} >> $report

Build_version=`./compiler/$FPCBIN -iV`
Build_date=`./compiler/$FPCBIN -iD`

echo "New $FPCBIN version is ${Build_version} ${Build_date}" >> $report

echo "Starting make install" >> $report
echo "`$DATE`" >> $report
${MAKE} DEBUG=1 install  OPT="$NEEDED_OPT" INSTALL_PREFIX=~/pas/fpc-${Build_version} 1> ${makelog} 2>&1
makeres=$?
# Add new bin dir as first in PATH
export PATH=/home/${USER}/pas/fpc-${Build_version}/bin:${PATH}
echo "Using new PATH=\"${PATH}\"" >> $report
NEWFPC=`which $FPCBIN`
echo "Using new binary \"${NEWFPC}\"" >> $report

cd tests
# Limit resources (8mb stack, 4 minutes)

ulimit -s 8192 -t 240

echo "Starting make distclean fulldb" >> $report
echo "`$DATE`" >> $report
${MAKE} distclean fulldb TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
  TEST_FPC=${NEWFPC} FPC=${NEWFPC}  OPT="$NEEDED_OPT" TEST_OPT="$NEEDED_OPT" \
  DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1> $testslog 2>&1
testsres=$?
echo "Ending make distclean fulldb; result=${testsres}" >> $report
echo "`$DATE`" >> $report

tail -30 $testslog >> $report


mutt -x -s "Free Pascal results on ${HOST_PC} ${Build_version} ${Build_date}" \
     -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log

TEST_OPT="-Cg $NEEDED_OPT"
echo "Starting make clean fulldb with TEST_OPT=${TEST_OPT}" > ${report2}
echo "`$DATE`" >> $report
${MAKE} distclean fulldb TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
  TEST_OPT="${TEST_OPT}" TEST_FPC=${NEWFPC} FPC=${NEWFPC} OPT="$NEEDED_OPT" \
  DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1> $testslog 2>&1
testsres=$?
echo "Ending make distclean fulldb with TEST_OPT=${TEST_OPT}; result=${testsres}" >> $report
echo "`$DATE`" >> $report

tail -30 $testslog >> $report2


mutt -x -s "Free Pascal results on ${HOST_PC}, with option ${TEST_OPT}, ${Build_version} ${Build_date}" \
     -i $report2 -- pierre@freepascal.org < /dev/null >  ${report}.log


# Cleanup

if [ "x${testsres}" == "x0" ]; then
  cd $TRUNKDIR
  ${MAKE} distclean 1> /dev/null 2>&1
fi


