#!/bin/bash
. $HOME/bin/fpc-versions.sh

if [ -z "$FIXES" ] ; then
  FIXES=0
fi

if [ "X$FIXES" == "X0" ] ; then
  export SVNDIR=$TRUNKDIR
  export SVNDIRNAME=$TRUNKDIRNAME
  export TARGET_VERSION=$TRUNKVERSION
else
  export SVNDIR=$FIXESDIR
  export SVNDIRNAME=$FIXESDIRNAME
  export TARGET_VERSION=$FIXESVERSION
fi

if [ "X$1" != "X" ] ; then
  export CUSTOM_OPT="$1"
  shift
  custom=1
else
  custom=0
fi

# Set main variables
export MAKE=make
if [ "${HOSTNAME}" == "gcc202" ]; then
  export HOST_PC=${HOSTNAME}
  export USER=pierre
  export ASTARGET=-32
  export NEEDED_OPT="-ao-32 -Fl/lib32 -Fo/usr/lib32 -Fl/usr/lib32"
  if [ -d "/usr/sparc64-linux-gnu/lib32" ] ; then
    export NEEDED_OPT="$NEEDED_OPT -Fl/usr/sparc64-linux-gnu/lib32"
  fi
  if [ -d "$HOME/local/lib32" ] ; then
    export NEEDED_OPT="$NEEDED_OPT -Fl$HOME/local/lib32"
  fi
  # Set until I find out how to cross-compile GDB for sparc32
  export NOGDB=1
  export DO_TESTS=1
  export NATIVE_OPT="$NEEDED_OPT -XPsparc-linux-"
elif [ "${HOSTNAME}" == "stadler" ]; then
  export HOST_PC=fpc-sparc64
  export USER=pierre
  export ASTARGET=-32
  export NEEDED_OPT="-ao-32 -Fo/usr/lib32 -Fl/usr/lib32 -Fl/usr/sparc64-linux-gnu/lib32 -Fl/home/pierre/local/lib32"
  # Set until I find out how to cross-compile GDB for sparc32
  export NOGDB=1
  export DO_TESTS=1
  export NATIVE_OPT="-Fo/usr/lib32 -Fl/usr/lib32 -Fl/usr/sparc64-linux-gnu/lib32 -Fl/home/pierre/local/lib32 -XPsparc-unknown-linux-gnu-"
elif [ "${HOSTNAME}" == "deb4g" ]; then
  export HOST_PC=fpc-sparc64-T5
  export USER=pierre
  export ASTARGET=-32
  export NEEDED_OPT="-ao-32 -Fo/usr/lib32 -Fl/usr/lib32 -Fl/usr/sparc64-linux-gnu/lib32 -Fl/home/pierre/local/lib32"
  # Set until I find out how to cross-compile GDB for sparc32
  export NOGDB=1
  export DO_TESTS=0
  export NATIVE_OPT="-Fo/usr/lib32 -Fl/usr/lib32 -Fl/usr/sparc64-linux-gnu/lib32 -Fl/home/pierre/local/lib32 -XPsparc-unknown-linux-gnu-"
else
  HOST_PC=${HOSTNAME}
  export DO_TESTS=0
fi

if [ "X$USER" == "X" ]; then
  USER=$LOGNAME
fi

if [ "X$FPCBIN" == "X" ]; then
  FPCBIN=ppcsparc
fi

DATE="date +%Y-%m-%d-%H-%M"
export PATH=/home/${USER}/pas/fpc-${TARGET_VERSION}/bin:/home/${USER}/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/${USER}/pas/fpc-${RELEASEVERSION}/bin

cd $SVNDIR

if [ -d fpcsrc ] ; then
  cd fpcsrc
fi

export logfile=$HOME/logs/cross-$SVNDIRNAME-64bit.log
export report=$HOME/logs/cross-$SVNDIRNAME-64bit-report.log
export MAKEJOPT="-j 10"

function run_test ()
{
# Add a time limit
ulimit -t 240
# Run the cross-tests
echo "Starting sparc64 run_test TEST_OPT=\"$TEST_OPT\" using cross compiler" >> $report
$DATE >> $report
echo "make ${MAKEJOPT} full DB_SSH_EXTRA=\"-i ~/.ssh/freepascal\"  TEST_FPC=$CROSSFPC FPCMAKEOPT=\"$NATIVE_OPT -vx\" OPT=\"$NATIVE_OPT -vx\" \
      TEST_OPT=\"$TEST_OPT\" TEST_HOSTNAME=$HOST_PC $QUICK" >> $report

make clean DB_SSH_EXTRA="-i ~/.ssh/freepascal"  TEST_FPC=$CROSSFPC FPCMAKEOPT="$NATIVE_OPT -vx" OPT="$NATIVE_OPT -vx" \
      TEST_OPT="$TEST_OPT" TEST_HOSTNAME=$HOST_PC $QUICK
make ${MAKEJOPT} full DB_SSH_EXTRA="-i ~/.ssh/freepascal"  TEST_FPC=$CROSSFPC FPCMAKEOPT="$NATIVE_OPT -vx" OPT="$NATIVE_OPT -vx" \
      TEST_OPT="$TEST_OPT" TEST_HOSTNAME=$HOST_PC $QUICK
res=$?
if [ $res -ne 0 ] ; then
  echo "make cross full failed res=$res" >> $report
else
  echo "make uploadrun DB_SSH_EXTRA=\"-i ~/.ssh/freepascal\"  TEST_FPC=$FPC64NAT TEST_OPT=\"Cross 64bit testsuite $TEST_OPT\" FPCMAKEOPT=\"$NATIVE_OPT -vx\" OPT=\"$NATIVE_OPT -vx\" \
        TEST_HOSTNAME=$HOST_PC $QUICK" >> $report

  make uploadrun DB_SSH_EXTRA="-i ~/.ssh/freepascal"  TEST_FPC=$FPC64NAT TEST_OPT="Cross 64bit testsuite $TEST_OPT" FPCMAKEOPT="$NATIVE_OPT -vx" OPT="$NATIVE_OPT -vx" \
      TEST_HOSTNAME=$HOST_PC $QUICK
  res=$?
  if [ $res -ne 0 ] ; then
    echo "make cross uploadrun failed res=$res" >> $report
  fi
fi
echo "Ending sparc64 run_test TEST_OPT=\"$TEST_OPT\" using cross compiler" >> $report
$DATE >> $report

if [[ ( -f $FPC64NAT ) && ($use_native -eq 1) ]] ; then
  echo "Starting sparc64 run_test TEST_OPT=\"$TEST_OPT\" with native sparc64 compiler" >> $report
  $DATE >> $report
  # Run the cross-tests, using native 64bit compiler
  make clean DB_SSH_EXTRA="-i ~/.ssh/freepascal"  TEST_FPC=$FPC64NAT FPCMAKEOPT="$NATIVE_OPT -vx" OPT="$NATIVE_OPT -vx" \
      TEST_OPT="$TEST_OPT" TEST_HOSTNAME=$HOST_PC $QUICK
  make ${MAKEJOPT} full DB_SSH_EXTRA="-i ~/.ssh/freepascal"  TEST_FPC=$FPC64NAT FPCMAKEOPT="$NATIVE_OPT -vx" OPT="$NATIVE_OPT -vx" \
      TEST_OPT="$TEST_OPT" TEST_HOSTNAME=$HOST_PC $QUICK
  res=$?
  if [ $res -ne 0 ] ; then
    echo "make 64bit full failed res=$res" >> $report
  else
    make uploadrun DB_SSH_EXTRA="-i ~/.ssh/freepascal"  TEST_FPC=$FPC64NAT TEST_OPT="Native 64bit testsuite $TEST_OPT" FPCMAKEOPT="$NATIVE_OPT -vx" OPT="$NATIVE_OPT -vx" \
        TEST_HOSTNAME=$HOST_PC $QUICK
    res=$?
    if [ $res -ne 0 ] ; then
      echo "make 64bit uploadrun failed res=$res" >> $report
    fi
  fi
  echo "Ending sparc64 run_test TEST_OPT=\"$TEST_OPT\" using native sparc64 compiler" >> $report
  $DATE >> $report
fi
}

export OPT64="-n -gwl"
# NATIVE_OPT needs to be used both for OPT and FPCMAKEOPT
# to succeed using sparc32 fpmake executable
# Regenerate the sparc-to-sparc64 cross compiler
(
cd $SVNDIR

if [ -d fpcsrc ] ; then
  cd fpcsrc
fi
cd tests

echo "Starting cross 64bit testsuite at: `$DATE`" > $report

FPC32=~/pas/fpc-$TARGET_VERSION/bin/ppcsparc
CROSSFPC=~/pas/fpc-$TARGET_VERSION/bin/ppcsparc64
FPC64NAT=~/pas/fpc-$TARGET_VERSION/bin/ppcsparc64-native

make -C ../rtl clean FPC=$FPC32
res=$?
if [ $res -ne 0 ] ; then
  echo "make rtl clean failed res=$res" >> $report
fi
make -C ../compiler rtl sparc64 OPT="$NATIVE_OPT" FPC=$FPC32
res=$?
if [ $res -ne 0 ] ; then
  echo "make rtl sparc64 failed res=$res" >> $report
fi
echo "cp ../compiler/ppcsparc64 $CROSSFPC" >> $report
cp ../compiler/ppcsparc64 $CROSSFPC
make -C ../rtl clean FPC=$CROSSFPC OPT="-n -gl -O-"
res=$?
if [ $res -ne 0 ] ; then
  echo "make rtl clean failed res=$res" >> $report
fi
make -C ../packages clean FPC=$CROSSFPC OPT="-n -gl -O-"
res=$?
if [ $res -ne 0 ] ; then
  echo "make packages clean failed res=$res" >> $report
fi

make -C ../compiler clean rtl sparc64 OPT="$OPT64 -O-" FPC=$CROSSFPC
res=$?
if [ $res -ne 0 ] ; then
  echo "make rtl sparc64 with cross compiler failed res=$res" >> $report
fi
echo "cp ../compiler/ppcsparc64 $FPC64NAT" >> $report
cp ../compiler/ppcsparc64 $FPC64NAT

make -C ../rtl all FPC=$CROSSFPC OPT="$OPT64 -O-" FPCMAKEOPT="$NATIVE_OPT -vx" 
res=$?
if [ $res -eq 0 ] ; then
  make -C ../packages all FPC=$CROSSFPC OPT="$OPT64 -O-" FPCMAKEOPT="$NATIVE_OPT -vx" 
fi
res=$?

if [ $res -eq 0 ] ; then
  # Upload new rtl/packages
  make -C ../rtl install FPC=$CROSSFPC OPT="$OPT64 -O-" FPCMAKEOPT="$NATIVE_OPT -vx" INSTALL_PREFIX=$HOME/pas/fpc-$TARGET_VERSION
  make -C ../packages install FPC=$CROSSFPC OPT="$OPT64 -O-" FPCMAKEOPT="$NATIVE_OPT -vx" INSTALL_PREFIX=$HOME/pas/fpc-$TARGET_VERSION

fi

if [ $custom -eq 1 ] ; then
  export use_native=0
  export TEST_OPT="$CUSTOM_OPT"
  export QUICK=""
  export FPC=$FPC32
else
  export use_native=1
  export TEST_OPT="-O-"
  export QUICK=""
  export FPC=$FPC32
fi

SEND_MULTIPLE=0
if [ $SEND_MULTIPLE -eq 1 ] ; then
  mutt -x -s "Free Pascal results starting for sparc64 on ${HOST_PC}, with option \"${TEST_OPT}\", ${Build_version} ${Build_date}" \
       -i $report -- pierre@freepascal.org < /dev/null >  ${report}.log 2>&1
fi

run_test

if [ $custom -eq 0 ] ; then
  if [ $SEND_MULTIPLE -eq 1 ] ; then
    mutt -x -s "free pascal results finished for sparc64 on ${host_pc}, with option \"${TEST_OPT}\", ${build_version} ${build_date}" \
         -i $report -- pierre@freepascal.org < /dev/null >  ${report}.log 2>&1
  fi
  export TEST_OPT="-Cg -O-"
  if [ $SEND_MULTIPLE -eq 1 ] ; then
    mutt -x -s "Free Pascal results starting for sparc64 on ${HOST_PC}, with option \"${TEST_OPT}\", ${Build_version} ${Build_date}" \
         -i $report -- pierre@freepascal.org < /dev/null >  ${report}.log 2>&1
  fi
  run_test
  if [ $SEND_MULTIPLE -eq 1 ] ; then
    mutt -x -s "free pascal results finished for sparc64 on ${host_pc}, with option \"${TEST_OPT}\", ${build_version} ${build_date}" \
         -i $report -- pierre@freepascal.org < /dev/null >  ${report}.log 2>&1
  fi
  # Too many bugs in sparc64 optimizer for now
  test_opt=1
  if [ "X$test_opt" != "X" ] ; then
    export use_native=0
    # generation of packages still fails on some invalid assembler generation
    # thus use QUICKTEST for now
    # export QUICK="QUICKTEST=1"

    export TEST_OPT="-O1"
    if [ $SEND_MULTIPLE -eq 1 ] ; then
      mutt -x -s "Free Pascal results starting for sparc64 on ${HOST_PC}, with option \"${TEST_OPT}\", ${Build_version} ${Build_date}" \
           -i $report -- pierre@freepascal.org < /dev/null >  ${report}.log 2>&1
    fi
    run_test
    if [ $SEND_MULTIPLE -eq 1 ] ; then
      mutt -x -s "free pascal results finished for sparc64 on ${host_pc}, with option \"${TEST_OPT}\", ${build_version} ${build_date}" \
           -i $report -- pierre@freepascal.org < /dev/null >  ${report}.log 2>&1
    fi
    export TEST_OPT="-O2"

    if [ $SEND_MULTIPLE -eq 1 ] ; then
      mutt -x -s "Free Pascal results starting for sparc64 on ${HOST_PC}, with option \"${TEST_OPT}\", ${Build_version} ${Build_date}" \
           -i $report -- pierre@freepascal.org < /dev/null >  ${report}.log 2>&1
    fi
    run_test
  fi  
fi
echo "Finishing cross 64bit testsuite at: `$DATE`" >> $report
) > $logfile 2>&1

mutt -x -s "Free Pascal results for sparc64 on ${HOST_PC}, with option \"${TEST_OPT}\", ${Build_version} ${Build_date}" \
     -i $report -- pierre@freepascal.org < /dev/null >  ${report}.log 2>&1


#make -j 16 fulldb DB_SSH_EXTRA="-i ~/.ssh/freepascal"  TEST_FPC=ppcsparc64 TEST_OPT="-O1" FPCMAKEOPT="$NATIVE_OPT -vx" OPT="$NATIVE_OPT -vx" \
#      TEST_HOSTNAME=$HOST_PC $QUICK | tee log-64-O1 2>&1
#make -j 16 fulldb DB_SSH_EXTRA="-i ~/.ssh/freepascal"  TEST_FPC=ppcsparc64 TEST_OPT="-O2" FPCMAKEOPT="$NATIVE_OPT -vx" OPT="$NATIVE_OPT -vx" \
#      TEST_HOSTNAME=$HOST_PC $QUICK | tee log-64-O2 2>&1
