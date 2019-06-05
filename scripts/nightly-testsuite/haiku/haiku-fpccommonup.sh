#!/bin/bash

. $HOME/bin/fpc-versions.sh

export MAKE=make
if [ "${HOSTNAME}" == "shredder" ]; then
  HOST_PC=OldDell
else
  HOST_PC=PC_AFM
fi

export HOST_OS=`uname -o`
export HOST_CPU=`uname -p`

if [ "$HOST_CPU" == "x86" ] ; then
  HOST_FPC=ppc386
  SUFF=-32
else
  HOST_FPC=ppcx64
  SUFF=-64
  if [ "$RELEASEVERSION" == "3.0.4" ] ; then
    NO_RELEASE=1
  fi
fi

if [ -n "$NO_RELEASE" ] ; then
  export FPC_RELEASE_INSTALLDIR=$HOME/pas/fpc-$RELEASEVERSION
else
  export FPC_RELEASE_INSTALLDIR=$HOME/pas/fpc-$FIXESVERSION
fi
export FPC_TRUNK_INSTALLDIR=$HOME/pas/fpc-$TRUNKVERSION
export FPC_FIXES_INSTALLDIR=$HOME/pas/fpc-$FIXESVERSION

if [ -z "$FIXES" ] ; then
  FIXES=0
fi

if [ $FIXES -eq 1 ] ; then
  FPC_INSTALLDIR=$FPC_FIXES_INSTALLDIR
  SVN_DIR=$FIXESDIR
  BRANCH=fixes
else
  FPC_INSTALLDIR=$FPC_TRUNK_INSTALLDIR
  SVN_DIR=$TRUNKDIR
  BRANCH=trunk
fi

SSHKEY=/boot/home/config/settings/ssh/freepascal
# export LIBRARY_PATH=%A/lib:/boot/home/config/lib:/boot/common/lib:/boot/system/lib
# export BUILDHOME=/boot/develop
# export BE_HOST_CPU=x86
# export BELIBRARIES=/boot/develop/abi/current/library-paths/common:/boot/develop/lib/x86
# export BETOOLS=/boot/develop/tools/gnupro/bin
# export BEINCLUDES="/boot/develop/headers;/boot/develop/headers/be;/boot/develop/headers/posix;/boot/develop/headers/glibc;/boot/develop/headers/cpp;/boot/develop/headers/be/app;/boot/develop/headers/be/device;/boot/develop/headers/be/interface;/boot/develop/headers/be/locale;/boot/develop/headers/be/media;/boot/develop/headers/be/midi;/boot/develop/headers/be/midi2;/boot/develop/headers/be/net;/boot/develop/headers/be/kernel;/boot/develop/headers/be/storage;/boot/develop/headers/be/support;/boot/develop/headers/be/game;/boot/develop/headers/be/opengl;/boot/develop/headers/be/drivers;/boot/develop/headers/gnu;/boot/develop/headers/be/mail;/boot/develop/headers/be/translation;/boot/develop/headers/be/devel;/boot/develop/headers/be/add-ons/graphics;/boot/develop/headers/be/be_apps/Deskbar;/boot/develop/headers/be/be_apps/NetPositive;/boot/develop/headers/be/be_apps/Tracker"
# export ADDON_PATH=%A/add-ons:/boot/home/config/add-ons:/boot/common/add-ons:/boot/system/add-ons
export PATH=.:/boot/home/config/bin:/boot/common/bin:/bin:/boot/apps:/boot/preferences:/boot/system/apps:/boot/system/preferences:/boot/develop/tools/gnupro/bin
# export BE_CPLUS_COMPILER=g++
# export BE_DEFAULT_C_FLAGS=
# export BE_C_COMPILER=gcc
export LC_CTYPE=en_US.UTF-8
# export BE_DEFAULT_CPLUS_FLAGS=

export PATH=${FPC_INSTALLDIR}/bin:$PATH:$HOME/bin:${FPC_RELEASE_INSTALLDIR}/bin

export STARTFPC=${FPC_RELEASE_INSTALLDIR}/bin/$HOST_FPC
# Set default NEWBIN to junk
NEWBIN=/not/existing/path/$HOST_FPC

cd $SVN_DIR

logdir=$HOME/logs
DATESUF=`date +%Y-%m-%d`

export report=${logdir}/report-${SUFF}.txt 
export makelog=${logdir}/make-${SUFF}.txt 
export testslog=${logdir}/tests-${SUFF}.txt 
skiptests=0

echo "Starting $0" > $report
Start_version=`$HOST_FPC -iV`
Start_date=`$HOST_FPC -iD`
echo "Start $HOST_FPC version is ${Start_version} ${Start_date}" >> $report
svn cleanup 1>> $report 2>&1
svn up --accept theirs-conflict 1>> $report 2>&1

if [ -d fpcsrc ] ; then
  cd fpcsrc
fi

echo "Starting make distclean all" >> $report
${MAKE} distclean all DEBUG=1 install INSTALL_PREFIX=$FPC_INSTALLDIR 1> ${makelog} 2>&1
makeres=$?

if [ ${makeres} != 0 ]; then
  echo "Make distclean all failed" >> $report
  tail -60 ${makelog} >> $report
  cd compiler 
  echo "Starting make cycle in compiler dir with $STARTFPC " >> $report
  ${MAKE} distclean cycle OPT=-gl FPC=$STARTFPC 1>> ${makelog} 2>&1
  makeres=$?
  if  [ ${makeres} != 0 ]; then
    echo "Cycle failed" >> $report
    tail -60 ${makelog} >> $report
    exit
  fi
  cp ./$HOST_FPC ./ppstart
  ${MAKE} distclean cycle DEBUG=1 install INSTALL_PREFIX=$FPC_INSTALLDIR FPC=`pwd`/ppstart  1>> ${makelog} 2>&1
  makeres=$?
  cd ../rtl
  ${MAKE} distclean all DEBUG=1 install INSTALL_PREFIX=$FPC_INSTALLDIR 1>> ${makelog} 2>&1
  cd ../packages
  ${MAKE} distclean all DEBUG=1 install INSTALL_PREFIX=$FPC_INSTALLDIR 1>> ${makelog} 2>&1
  cd ../utils
  ${MAKE} distclean all DEBUG=1 install INSTALL_PREFIX=$FPC_INSTALLDIR 1>> ${makelog} 2>&1
  cd ..
fi

if [ ${makeres} != 0 ]; then
  echo "${MAKE} failed res=${makeres}" >> $report
  skiptests=1
  testsres=0
  skipsnapshot=1
else
  cp -pf ./compiler/$HOST_FPC $FPC_INSTALLDIR/bin
  NEWBIN=$FPC_INSTALLDIR/bin/$HOST_FPC
  # ${MAKE} distclean 1>> ${makelog} 2>&1
  skipsnapshot=0
  Build_version=`$NEWBIN -iV`
  Build_date=`$NEWBIN -iD`
  OS_TARGET=`$NEWBIN -iTO`
  CPU_TARGET=`$NEWBIN -iTP`
  FULL_TARGET=$CPU_TARGET-$OS_TARGET
fi

echo "Ending make distclean all; result=${makeres}" >> $report
if [ $makeres -ne 0 ] ; then
  tail -30 ${makelog} >> $report
fi

if [ $skipsnapshot -eq 0 ] ; then
  echo "Starting make singlezipinstall" >> $report
  ${MAKE} distclean singlezipinstall INSTALL_PREFIX=$FPC_INSTALLDIR FPC=$NEWBIN 1>> ${makelog} 2>&1
  echo "${MAKE} distclean singlezipinstall INSTALL_PREFIX=$FPC_INSTALLDIR FPC=$NEWBIN 1>> ${makelog} 2>&1" > readme
  makeres=$?
  svn info . >> readme
  echo "Generated `date +%Y-%m-%d:%H:%M`" >> readme

  echo "Ending make singlezipinstall; result=${makeres}" >> $report
  if [ $makeres -ne 0 ] ; then
   tail -30 ${makelog} >> $report
  else
   scp -p fpc*gz readme fpcftp:ftp/snapshot/$BRANCH/$FULL_TARGET/
  fi
fi

if [ ${skiptests} == 0 ]; then
echo "New $HOST_FPC version is ${Build_version} ${Build_date}" >> $report

# Not supported on haiku: ulimit -t 300

cd tests
export TEST_DELTEMP=1
export TEST_DELBEFORE=1
export TEST_OPT=-gl
echo "Starting make distclean fulldb with TEST_OPT=$TEST_OPT" >> $report
${MAKE} distclean fulldb TEST_USER=pierre TEST_OPT="$TEST_OPT" \
  TEST_FPC=$NEWBIN DB_SSH_EXTRA=" -i $SSHKEY" 1> $testslog 2>&1
testsres=$?
echo "Ending make distclean fulldb; result=${testsres}" >> $report

tail -30 $testslog >> $report
fi

if [ ${skiptests} == 0 ]; then
export TEST_OPT="-O3  -Criot $TEST_OPT"
echo "Starting make clean fulldb with TEST_OPT=$TEST_OPT" >> ${report}
${MAKE} distclean fulldb TEST_USER=pierre TEST_OPT="$TEST_OPT"  \
  TEST_FPC=$NEWBIN DB_SSH_EXTRA=" -i $SSHKEY" 1 >> $testslog 2>&1
testsres=$?
echo "Ending make distclean fulldb with TEST_OPT=$TEST_OPT; result=${testsres}" >> $report

tail -30 $testslog >> $report


mutt -x -s "Free Pascal results for $HOST_OS (in ${HOST_PC}, \
with option -Xn) ${Build_version} ${Build_date} ${Build_date}" \
     -i $report -- pierre@freepascal.org < /dev/null >  ${report}.log

fi

# Cleanup, should not be needed
# 
#  if [ "${testsres}" == "0" ]; then
#   cd /boot/home/pas/trunk
#   ${MAKE} distclean 1>> ${makelog} 2>&1
# fi

