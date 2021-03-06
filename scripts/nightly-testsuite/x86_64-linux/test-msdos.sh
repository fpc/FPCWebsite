#!/usr/bin/env bash

. $HOME/bin/fpc-versions.sh

verbose=0

if [ "$DO_VERBOSE" == "1" ] ; then
  verbose=1
fi

if [ ! -z "$NO_UPLOAD" ] ; then
  do_upload=0
else
  do_upload=1
fi

if [ -z "$SVNDIR" ] ; then
  if [ "$FIXES" == "1" ] ; then
    SVNDIR=fixes
  else
    SVNDIR=trunk
  fi
fi

if [ "X$SVNDIR" = "Xtrunk" ] ; then
  CURRENTVERSION=$TRUNKVERSION
else
  CURRENTVERSION=$FIXESVERSION
fi
export FPCDIR=$HOME/pas/$SVNDIR/fpcsrc

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
CROSSPP=ppc8086
export NEWNATIVEFPC=$FPCDIR/compiler/${NATIVEPP}-safe
export NEWCROSSFPC=$FPCDIR/compiler/${CROSSPP}-safe

export TEST_TARGET=msdos
if [ -z "$MSDOSOPT" ] ; then
  export MSDOSOPT="-CX -XX"
fi

# Avoid fpcmake not found problem,
# expects it in utils/fpcm directory, but generated in utils/fpcm/bbin/$fpctarget
export FPCMAKE=`which fpcmake`
# export FPCMAKE=$FPCDIR/utils/fpcm/fpcmake
# We use our own dosbox, modified for
# copy of output to file if
# section [dos] contains an entry called
# copy_con_to_file, with the name of the file to write to.
if [ -z "$DOSBOX" ] ; then
  export DOSBOX=$HOME/bin/dosbox
fi
export SDL_VIDEODRIVER=dummy
export SDL_AUDIODRIVER=dummy
export DB_SSH_EXTRA="-i $HOME/.ssh/freepascal"
# export SINGLEDOTESTRUNS=1, messes up ordering of results

cd $FPCDIR/tests/

function prepare_msdos ()
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
echo "Recompiling i8086 compiler using CROSSOPT=\"$CROSSOPT\""
make -C $FPCDIR/compiler clean i8086 OPT="-n -gl $CROSSOPT" FPC=$NEWNATIVEFPC
res=$?
if [ $res -ne 0 ] ; then
  echo "Recompiling i8086 compiler failed, res=$res"
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

function run_one_model ()
{

if [ "X$1" != "X" ] ; then
  export MEMMODEL=$1
else
  export MEMMODEL=Large
fi

LOGFILE=$FPCLOGDIR/test-$TEST_TARGET-$SVNDIR-$MEMMODEL.log
if [ "X$2" != "X" ] ; then
  export TEST_OPT="$2 -Wm$MEMMODEL $MSDOSOPT"
else
  export TEST_OPT="-Wm$MEMMODEL $MSDOSOPT"
fi
TODAY=`date +%Y-%m-%d`
DIR_OPT=opt${TEST_OPT// /_}
export logdir=$FPCLOGDIR/$SVNDIR/$TODAY/$TEST_TARGET/$DIR_OPT
mkdir -p $logdir
LOGFILE=$logdir/$TEST_TARGET-${DIR_OPT}.log
if [ $verbose -eq 1 ] ; then
  echo "Log file is $LOGFILE"
fi

TEST_OPT="$TEST_OPT $NEEDED_OPTS"

(
if [ ! -x "$DOSBOX" ] ; then
  echo "Error: $DOSBOX is not executable"
  exit
fi
echo "Clearing RTL/Packages for $TEST_TARGET"
make -C $FPCDIR/rtl clean FPC=$NEWCROSSFPC
make -C $FPCDIR/packages clean FPC=$NEWCROSSFPC

echo "Compiling dosboxwrapper"
rm $FPCDIR/tests/utils/dosbox/dosbox_wrapper
make -C $FPCDIR/tests/utils distclean all dosbox/dosbox_wrapper FPC=$NEWNATIVEFPC OPT="-gwl"
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
echo "Running $TEST_TARGET testsuite for memory model $MEM_MODEL"
make distclean testprep FPCFPMAKE=$NEWNATIVEFPC TEST_FPC=$NEWCROSSFPC TEST_OPT="$TEST_OPT" TEST_USER=pierre EMULATOR=$FPCDIR/tests/utils/dosbox/dosbox_wrapper
res=$?
if [ $res -eq 0 ] ; then
  (
  ulimit -d 256000
  make $MAKEFULLOPT full FPCFPMAKE=$NEWNATIVEFPC TEST_FPC=$NEWCROSSFPC TEST_OPT="$TEST_OPT" TEST_USER=pierre EMULATOR=$FPCDIR/tests/utils/dosbox/dosbox_wrapper
  )
  res=$?
fi
if [ $res -ne 0 ] ; then
  echo "Running testsuite failed, res=$res"
  return 1
else
  if [ $do_upload -eq 1 ] ; then
    make uploadrun FPCFPMAKE=$NEWNATIVEFPC TEST_FPC=$NEWCROSSFPC TEST_OPT="$TEST_OPT" TEST_USER=pierre EMULATOR=$FPCDIR/tests/utils/dosbox/dosbox_wrapper
  fi
fi
cp output/$TEST_TARGET/faillist $logdir
cp output/$TEST_TARGET/longlog $logdir
cp output/$TEST_TARGET/log $logdir

) > $LOGFILE 2>&1
}

PREPARELOGFILE=$FPCLOGDIR/test-prepare-$TEST_TARGET-$SVNDIR.log

if [ "X$1" != "X" ] ; then
  verbose=1
  export TEST_VERBOSE=1
  export V=1
  export TEST_BENCH=1
  if [ "X$1" == "X-prep" ] ; then
    shift
    date
    echo "Running prepare_msdos with CROSSOPT=\"$CROSSOPT\""
    prepare_msdos > $PREPARELOGFILE 2>&1
  fi
  export MAKEFULLOPT=-j5
  date
  while [ "X$1" != "X" ] ; do
    arg="$1"
    shift
    echo "Running run_one_model with medium model and OPT=\"$arg\""
    run_one_model medium "$arg"
    date
  done
else
  export CORSSOPT=
  prepare_msdos > $PREPARELOGFILE 2>&1
  export DOSBOX=$HOME/bin/dosbox-svn
  export MAKEFULLOPT=-j5
  run_one_model tiny
  run_one_model small
  run_one_model medium
  run_one_model compact
  run_one_model large
  if [ "$SVNDIR" == "trunk" ] ; then
    run_one_model huge
  fi
  if [ "$SVNDIR" == "trunk" ] ; then
    # Testing smart link sections
    export CROSSOPT="-dI8086_SMARTLINK_SECTIONS -di8086_link_intern_debuginfo"
    # MSDOSOPT should not be needed anymore
    export MSDOSOPT=" "
    export NEWCROSSFPC=$FPCDIR/compiler/${CROSSPP}-sls-safe
    prepare_msdos > $PREPARELOGFILE.smartlink_sections 2>&1
    run_one_model medium "-dTEST_I8086_SMARTLINK_SECTIONS"
    run_one_model tiny "-dTEST_I8086_SMARTLINK_SECTIONS"
    run_one_model small "-dTEST_I8086_SMARTLINK_SECTIONS"
    run_one_model medium "-dTEST_I8086_SMARTLINK_SECTIONS"
    run_one_model compact "-dTEST_I8086_SMARTLINK_SECTIONS"
    run_one_model large "-dTEST_I8086_SMARTLINK_SECTIONS"
    run_one_model huge "-dTEST_I8086_SMARTLINK_SECTIONS"
  fi
fi
