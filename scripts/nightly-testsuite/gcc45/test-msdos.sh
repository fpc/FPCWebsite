#!/usr/bin/env bash

. $HOME/bin/fpc-versions.sh

if [ "X$SVNDIR" == "X" ] ; then
  SVNDIR=trunk
fi

FPCDIR=$HOME/pas/$SVNDIR/fpcsrc

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

NATIVEPP=ppc386
CROSSPP=ppc8086
NEWNATIVEFPC=$FPCDIR/compiler/${NATIVEPP}-safe
NEWCROSSFPC=$FPCDIR/compiler/${CROSSPP}-safe

MSDOSOPT="-CX -XX"

# Avoid fpcmake not found problem,
# expects it in utils/fpcm directory, but generated in utils/fpcm/bbin/$fpctarget
export FPCMAKE=`which fpcmake`
# export FPCMAKE=$FPCDIR/utils/fpcm/fpcmake
# We use our own dosbox, modified for
# copy of output to file if
# section [dos] contians an entry called
# copy_con_to_file, with the name of the file to write to.
export DOSBOX=$HOME/bin/dosbox
export SDL_VIDEODRIVER=dummy
export SDL_AUDIODRIVER=dummy
export DB_SSH_EXTRA="-i $HOME/.ssh/freepascal"

cd $FPCDIR/tests/

ulimit -m 256000
#ulimit -v 256000
ulimit -d 256000

function run_one_model ()
{
if [ "X$1" != "X" ] ; then
  MEMMODEL=$1
else
  MEMMODEL=Large
fi

TEST_OPT="-Wm$MEMMODEL $MSDOSOPT"

TODAY=`date +%Y-%m-%d`
DIR_OPT=${TEST_OPT// /_}
logdir=$FPCLOGDIR/$SVNDIR/$TODAY/msdos/opt$DIR_OPT
mkdir -p $logdir
LOGFILE=$logdir/msdos-${DIR_OPT}.log

(
echo "Recompiling native RTL"
make -C $FPCDIR/rtl distclean all OPT="-n -g"
res=$?
if [ $res -ne 0 ] ; then
  echo "Recompiling native RTL failed, res =$res"
  exit
fi
echo "Recompiling native compiler"
make -C $FPCDIR/compiler distclean cycle OPT="-n -g"
res=$?
if [ $res -ne 0 ] ; then
  echo "Recompiling native compiler failed, res=$res"
  exit
else
  if [ ! -e $FPCDIR/compiler/$NATIVEPP ] ; then
     echo "No $NATIVEPP compiler generated"
     exit
  else
     cp $FPCDIR/compiler/$NATIVEPP $NEWNATIVEFPC
  fi
fi
# This is needed to have an up-to-date fpcmake binary
echo "Recompiling native packages and utils"
make -C $FPCDIR/packages distclean all OPT="-n -g" FPC=$NEWNATIVEFPC
res=$?
if [ $res -ne 0 ] ; then
  echo "Recompiling native packages failed, res=$res"
  exit
fi
make -C $FPCDIR/utils distclean all OPT="-n -g" FPC=$NEWNATIVEFPC
res=$?
if [ $res -ne 0 ] ; then
  echo "Recompiling native utils failed, res=$res"
  exit
fi

echo "Recompiling i8086 compiler"
make -C $FPCDIR/compiler distclean i8086 OPT="-n -g" FPC=$NEWNATIVEFPC
res=$?
if [ $res -ne 0 ] ; then
  echo "Recompiling i8086 compiler failed, res=$res"
  exit
else
  if [ ! -e $FPCDIR/compiler/$CROSSPP ] ; then
     echo "No $CROSSPP compiler generated"
     exit
  else
     cp $FPCDIR/compiler/$CROSSPP $NEWCROSSFPC
  fi
fi

echo "Clearing RTL/Packages for msdos"
make -C $FPCDIR/rtl clean FPC=$NEWCROSSFPC
make -C $FPCDIR/packages clean FPC=$NEWCROSSFPC

echo "Compiling dosboxwrapper"
make -C $FPCDIR/tests/utils distclean all dosbox/dosbox_wrapper FPC=$NEWNATIVEFPC
res=$?
if [ $res -ne 0 ] ; then
  echo "Recompiling dosbox_wrapper failed, res=$res"
  exit
else
  if [ ! -e $FPCDIR/tests/utils/dosbox/dosbox_wrapper ] ; then
    echo "No dosbox_wrapper executable file found"
    exit
  fi
fi
echo "Running msdos testsuite for memory model $1"
make distclean full FPCFPMAKE=$NEWNATIVEFPC TEST_FPC=$NEWCROSSFPC TEST_OPT="$TEST_OPT" TEST_USER=pierre EMULATOR=$FPCDIR/tests/utils/dosbox/dosbox_wrapper
res=$?
if [ $res -ne 0 ] ; then
  echo "Running testsuite failed, res=$res"
  exit
else
  make uploadrun FPCFPMAKE=$NEWNATIVEFPC TEST_FPC=$NEWCROSSFPC TEST_OPT="-Wm$MEMMODEL $MSDOSOPT" TEST_USER=pierre EMULATOR=$FPCDIR/tests/utils/dosbox/dosbox_wrapper
fi
) > $LOGFILE 2>&1
}

if [ "X$1" != "X" ] ; then
  run_one_model $1
else
  run_one_model tiny
  run_one_model small
  run_one_model medium
  run_one_model compact
  run_one_model large
  run_one_model huge
fi
