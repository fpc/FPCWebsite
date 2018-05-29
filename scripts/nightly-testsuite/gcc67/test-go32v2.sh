#!/usr/bin/env bash

. $HOME/bin/fpc-versions.sh

if [ -z "$SVNDIR" ] ; then
  SVNDIR=trunk
fi

FPCDIR=$HOME/pas/$SVNDIR/fpcsrc

if [ "X$SVNDIR" = "Xtrunk" ] ; then
  CURRENTVERSION=$TRUNKVERSION
else
  CURRENTVERSION=$FIXESVERSION
fi

# Add $HOME/bin to PATH variable
if [ -d ${HOME}/bin ] ; then
  export PATH=${PATH}:${HOME}/bin
fi
if [ -d ${HOME}/pas/fpc-${CURRENTVERSION}/bin ] ; then
  export PATH=${PATH}:${HOME}/pas/fpc-${CURRENTVERSION}/bin
fi
if [ -d ${HOME}/pas/fpc-${RELEASEVERSION}/bin ] ; then
  export PATH=${PATH}:${HOME}/pas/fpc-${RELEASEVERSION}/bin
fi

if [ -z "$FPCLOGDIR" ] ; then
  FPCLOGDIR=$HOME/logs
fi

NATIVEPP=ppcx64
CROSSPP=ppc386
NEWNATIVEFPC=$FPCDIR/compiler/${NATIVEPP}-safe
NEWCROSSFPC=$FPCDIR/compiler/${CROSSPP}-safe

export TEST_TARGET=go32v2
export DO_UPLOAD=0

# Avoid fpcmake not found problem,
# expects it in utils/fpcm directory, but generated in utils/fpcm/bbin/$fpctarget
export FPCMAKE=`which fpcmake`
# export FPCMAKE=$FPCDIR/utils/fpcm/fpcmake
# We use our own dosbox, modified for
# copy of output to file if
# section [dos] contians an entry called
# copy_con_to_file, with the name of the file to write to.
if [ -z "$DOSBOX" ] ; then
  export DOSBOX=$HOME/bin/dosbox
fi
export SDL_VIDEODRIVER=dummy
export SDL_AUDIODRIVER=dummy
export DB_SSH_EXTRA="-i $HOME/.ssh/freepascal"
export SINGLEDOTESTRUNS=1

cd $FPCDIR/tests/

# ulimit -m 512000
#ulimit -v 256000
#ulimit -d 256000

DJGPP_DIR=$HOME/sys-root/djgpp
DJGPP_GCC_VERSION=6.10

export NEEDED_OPTS="-Fl${DJGPP_DIR}/lib -Fl${DJGPP_DIR}/lib/gcc/djgpp/${DJGPP_GCC_VERSION}"
# export MAKEFULLOPT=-j5

function prepare_go32v2 ()
{
echo "Recompiling native RTL"
make -C $FPCDIR/rtl distclean all OPT="-n -gl" FPC=$NATIVEPP
res=$?
if [ $res -ne 0 ] ; then
  echo "Recompiling native RTL failed, res =$res"
  return 1
fi
echo "Recompiling native compiler"
make -C $FPCDIR/compiler distclean cycle OPT="-n -gl" FPC=$NATIVEPP
res=$?
if [ $res -ne 0 ] ; then
  echo "Recompiling native compiler failed, res=$res"
  return 1
else
  if [ ! -e $FPCDIR/compiler/$NATIVEPP ] ; then
     echo "No $NATIVEPP compiler generated"
     return 1
  else
     cp $FPCDIR/compiler/$NATIVEPP $NEWNATIVEFPC
  fi
fi
# This is needed to have an up-to-date fpcmake binary
echo "Recompiling native packages and utils"
make -C $FPCDIR/packages distclean all OPT="-n -gl" FPC=$NEWNATIVEFPC
res=$?
if [ $res -ne 0 ] ; then
  echo "Recompiling native packages failed, res=$res"
  return 1
fi
make -C $FPCDIR/utils distclean all OPT="-n -gl" FPC=$NEWNATIVEFPC
res=$?
if [ $res -ne 0 ] ; then
  echo "Recompiling native utils failed, res=$res"
  return 1
fi
echo "Recompiling i386 compiler"
make -C $FPCDIR/compiler clean i386 OPT="-n -gl" FPC=$NEWNATIVEFPC
res=$?
if [ $res -ne 0 ] ; then
  echo "Recompiling i386 compiler failed, res=$res"
  return 1
else
  if [ ! -e $FPCDIR/compiler/$CROSSPP ] ; then
     echo "No $CROSSPP compiler generated"
     return 1
  else
     cp $FPCDIR/compiler/$CROSSPP $NEWCROSSFPC
  fi
fi
}


function run_one_opt ()
{
if [ "X$1" != "X" ] ; then
  TEST_OPT="$1"
else
  TEST_OPT=
fi
TODAY=`date +%Y-%m-%d`
DIR_OPT=${TEST_OPT// /_}
export logdir=~/logs/$SVNDIR/$TODAY/$TEST_TARGET/$DIR_OPT
mkdir -p $logdir
LOGFILE=$logdir/$TEST_TARGET-${DIR_OPT}.log

TEST_OPT="$TEST_OPT $NEEDED_OPTS"

(
echo "Clearing RTL/Packages for msdos"
make -C $FPCDIR/rtl clean FPC=$NEWCROSSFPC OS_TARGET=$TEST_TARGET
make -C $FPCDIR/packages clean FPC=$NEWCROSSFPC OS_TARGET=$TEST_TARGET

echo "Compiling dosboxwrapper"
rm $FPCDIR/tests/utils/dosbox/dosbox_wrapper
make -C $FPCDIR/tests/utils distclean all dosbox/dosbox_wrapper FPC=$NEWNATIVEFPC OPT=-gwl
res=$?
if [ $res -ne 0 ] ; then
  echo "Recompiling dosbox_wrapper failed, res=$res"
  return 1
else
  if [ ! -e $FPCDIR/tests/utils/dosbox/dosbox_wrapper ] ; then
    echo "No dosbox_wrapper executable file found"
    return 1
  fi
fi
echo "Running $TEST_TARGET testsuite with OPT=\"$1\""
export TEST_BINUTILSPREFIX=i386-go32v2-
make distclean testprep FPCFPMAKE=$NEWNATIVEFPC TEST_FPC=$NEWCROSSFPC TEST_OPT="$TEST_OPT" TEST_OS_TARGET=$TEST_TARGET TEST_USER=pierre EMULATOR=$FPCDIR/tests/utils/dosbox/dosbox_wrapper OPT=-gwl
res=$?
if [ $res -eq 0 ] ; then
  make $MAKEFULLOPT full FPCFPMAKE=$NEWNATIVEFPC TEST_FPC=$NEWCROSSFPC TEST_OPT="$TEST_OPT" TEST_OS_TARGET=$TEST_TARGET TEST_USER=pierre EMULATOR=$FPCDIR/tests/utils/dosbox/dosbox_wrapper OPT=-gwl
  res=$?
fi
if [ $res -ne 0 ] ; then
  echo "Running testsuite failed, res=$res"
  return 1
else
  if [ $DO_UPLOAD -eq 1 ] ; then
    make uploadrun FPCFPMAKE=$NEWNATIVEFPC TEST_FPC=$NEWCROSSFPC TEST_OPT="$TEST_OPT" TEST_OS_TARGET=$TEST_TARGET TEST_USER=pierre EMULATOR=$FPCDIR/tests/utils/dosbox/dosbox_wrapper OPT=-gwl
  fi
fi
cp output/$TEST_TARGET/faillist $logdir
cp output/$TEST_TARGET/longlog $logdir
cp output/$TEST_TARGET/log $logdir

) > $LOGFILE 2>&1
}

PREPARELOGFILE=$FPCLOGDIR/test-prepare-$TEST_TARGET-$SVNDIR.log


if [ "X$1" != "X" ] ; then
  export DOSBOX_VERBOSE=1
  export V=1
  export TEST_VERBOSE=1
  export DO_UPLOAD=0
  run_one_opt "$1"
else
  prepare_go32v2 > $PREPARELOGFILE 2>&1
  export DO_UPLOAD=1
  run_one_opt -O-
  run_one_opt -O2
  run_one_opt -O4
  run_one_opt -Criot
  run_one_opt "-Criot -O4"
fi
