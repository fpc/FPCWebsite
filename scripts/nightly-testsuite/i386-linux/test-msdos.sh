#!/usr/bin/env bash

. $HOME/bin/fpc-versions.sh

if [ "X$SVNDIR" == "X" ] ; then
  SVNDIR=trunk
fi

if [ -z "$all" ] ; then
  do_all=0
else
  do_all=1
fi

if [ -z "$HOSTNAME" ] ; then
  HOSTNAME=`uname -n`
fi

FPCDIR=$HOME/pas/$SVNDIR/fpcsrc

if [ "X$SVNDIR" == "Xtrunk" ] ; then
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
export DOSBOX_VERBOSE=1
export SDL_VIDEODRIVER=dummy
export SDL_AUDIODRIVER=dummy
export DB_SSH_EXTRA="-i $HOME/.ssh/freepascal"

cd $FPCDIR/tests/

ulimit -m 256000
#ulimit -v 256000
ulimit -d 256000
TODAY=`date +%Y-%m-%d`
logdir=$FPCLOGDIR/$SVNDIR/$TODAY/msdos
mkdir -p $logdir
GLOBAL_LOGFILE=$logdir/test-msdos.log

function display_time ()
{
  echo -n "$* "
  date "+%Y-%m-%d-%H:%M"
}

function prepare_msdos ()
{
if [ "X$1" != "X" ] ; then
  CROSSOPT="$1"
else
  CROSSOPT=
fi

DIR_OPT=${CROSSOPT// /_}
LOGFILE=$logdir/prepare-msdos-${DIR_OPT}.log
display_time "Starting run_one_model with \$TEST_OPT=\"$TEST_OPT\", logfile=$LOGFILE"

(
display_time "Recompiling native RTL"
make -C $FPCDIR/rtl distclean all OPT="-n -g"
res=$?
if [ $res -ne 0 ] ; then
  display_time "Recompiling native RTL failed, res =$res"
  exit
fi
display_time "Recompiling native compiler"
make -C $FPCDIR/compiler distclean cycle OPT="-n -g"
res=$?
if [ $res -ne 0 ] ; then
  display_time "Recompiling native compiler failed, res=$res"
  exit
else
  if [ ! -e $FPCDIR/compiler/$NATIVEPP ] ; then
     display_time "No $NATIVEPP compiler generated"
     exit
  else
     cp $FPCDIR/compiler/$NATIVEPP $NEWNATIVEFPC
  fi
fi
# This is needed to have an up-to-date fpcmake binary
display_time "Recompiling native packages and utils"
make -C $FPCDIR/packages distclean all OPT="-n -g" FPC=$NEWNATIVEFPC
res=$?
if [ $res -ne 0 ] ; then
  display_time "Recompiling native packages failed, res=$res"
  exit
fi
make -C $FPCDIR/utils distclean all OPT="-n -g" FPC=$NEWNATIVEFPC
res=$?
if [ $res -ne 0 ] ; then
  display_time "Recompiling native utils failed, res=$res"
  exit
fi

display_time "Recompiling i8086 compiler"
make -C $FPCDIR/compiler distclean i8086 OPT="-n -g $CROSSOPT" FPC=$NEWNATIVEFPC
res=$?
if [ $res -ne 0 ] ; then
  display_time "Recompiling i8086 compiler failed, res=$res"
  exit
else
  if [ ! -e $FPCDIR/compiler/$CROSSPP ] ; then
     display_time "No $CROSSPP compiler generated"
     exit
  else
     cp $FPCDIR/compiler/$CROSSPP $NEWCROSSFPC
  fi
fi
) > $LOGFILE 2>&1
}

function run_one_model ()
{
if [ "X$1" != "X" ] ; then
  MEMMODEL=$1
else
  MEMMODEL=Large
fi

TEST_OPT="-Wm$MEMMODEL $2 $MSDOSOPT"

DIR_OPT=${TEST_OPT// /_}
LOGFILE=$logdir/msdos-${DIR_OPT}.log

(
display_time "Clearing RTL/Packages for msdos"
make -C $FPCDIR/rtl clean FPC=$NEWCROSSFPC
make -C $FPCDIR/packages clean FPC=$NEWCROSSFPC

display_time "Compiling dosboxwrapper"
make -C $FPCDIR/tests/utils distclean all dosbox/dosbox_wrapper FPC=$NEWNATIVEFPC
res=$?
if [ $res -ne 0 ] ; then
  display_time "Recompiling dosbox_wrapper failed, res=$res"
  exit
else
  if [ ! -e $FPCDIR/tests/utils/dosbox/dosbox_wrapper ] ; then
    display_time "No dosbox_wrapper executable file found"
    exit
  fi
fi
display_time "Running msdos testsuite for memory model $1"
make distclean testprep FPCFPMAKE=$NEWNATIVEFPC TEST_FPC=$NEWCROSSFPC TEST_OPT="$TEST_OPT" TEST_USER=pierre EMULATOR=$FPCDIR/tests/utils/dosbox/dosbox_wrapper
res=$?
if [ $res -eq 0 ] ; then
  MAKEFULLOPT=-j3
  make $MAKEFULLOPT full FPCFPMAKE=$NEWNATIVEFPC TEST_FPC=$NEWCROSSFPC TEST_OPT="$TEST_OPT" TEST_USER=pierre EMULATOR=$FPCDIR/tests/utils/dosbox/dosbox_wrapper
  res=$?
  MAKEFULLOPT=
fi
cp -fp output/msdos/longlog $logdir/longlog-$DIR_OPT
cp -fp output/msdos/log $logdir/log-$DIR_OPT
cp -fp output/msdos/faillist $logdir/faillist-$DIR_OPT
if [ $res -ne 0 ] ; then
  display_time "Running testsuite failed, res=$res"
  exit
else
  make uploadrun FPCFPMAKE=$NEWNATIVEFPC TEST_FPC=$NEWCROSSFPC TEST_OPT="$TEST_OPT" TEST_USER=pierre EMULATOR=$FPCDIR/tests/utils/dosbox/dosbox_wrapper
fi
) > $LOGFILE 2>&1
}

if [ "X$1" != "X" ] ; then
  run_one_model $1
else
  (
  prepare_msdos
  run_one_model tiny
  run_one_model small
  run_one_model compact
  if [ $do_all -eq 1 ] ; then
    run_one_model medium
    run_one_model large
    run_one_model huge
  fi
  run_one_model medium "-Wh"
  run_one_model large "-Wh"
  run_one_model huge "-Wh"
  # Change ppc386 compiler to use smartlinked sections
  #LOGFILE=$logdir/msdos-comp-smartlink-sections.log
  #make -C ../compiler clean i8086 OPT="-n -gsl -dI8086_SMARTLINK_SECTIONS -di8086_link_intern_debuginfo" FPC=${NEWNATIVEFPC} > $LOGFILE 2>&1
  prepare_msdos " -gsl -dI8086_SMARTLINK_SECTIONS -di8086_link_intern_debuginfo"
  NEWCROSSFPC=$FPCDIR/compiler/${CROSSPP}sls-safe
  cp ../compiler/ppc8086 ${NEWCROSSFPC}
  MSDOSOPT=""
  if [ $do_all -eq 1 ] ; then
    run_one_model tiny "-dTEST_SLS"
    run_one_model small "-dTEST_SLS"
    run_one_model medium "-dTEST_SLS"
    run_one_model compact "-dTEST_SLS"
    run_one_model large "-dTEST_SLS"
    run_one_model huge "-dTEST_SLS"
    run_one_model medium "-Wh -dTEST_SLS"
    run_one_model large "-Wh -dTEST_SLS"
    run_one_model huge "-Wh -dTEST_SLS"
  fi
) > $GLOBAL_LOGFILE 2>&1
  Build_version=`$NEWCROSSFPC -iV 2> /dev/null`
  Build_date=`$NEWCROSSFPC -iD 2> /dev/null`
  mutt -x -s "Free Pascal results for msdos on ${HOSTNAME}, ${Build_version} ${Build_date}" \
     -i $GLOBAL_LOGFILE -- pierre@freepascal.org < /dev/null

fi
