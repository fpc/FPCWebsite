#!/usr/bin/env bash

. $HOME/bin/fpc-versions.sh

if [ -z "$SVNDIR" ] ; then
  SVNDIR=trunk
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
CROSSPP=ppc386
NEWNATIVEFPC=$FPCDIR/compiler/${NATIVEPP}-safe
NEWCROSSFPC=$FPCDIR/compiler/${CROSSPP}-safe

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
# Needed files are not copied to temp dir by dosbox_wrapper
export DOSBOX_NO_TEMPDIR=1
# export SINGLEDOTESTRUNS=1
export doupload=1

cd $FPCDIR/tests/

# ulimit -m 512000
#ulimit -v 256000
#ulimit -d 256000

DJGPP_DIR=$HOME/sys-root/djgpp
DJGPP_GCC_VERSION=6.10

export NEEDED_OPTS="-Fl${DJGPP_DIR}/lib -Fl${DJGPP_DIR}/lib/gcc/djgpp/${DJGPP_GCC_VERSION}"
export TODAY=`date +%Y-%m-%d`
export logdir=$FPCLOGDIR/$SVNDIR/$TODAY/go32v2
mkdir -p $logdir
export GLOBAL_LOGFILE=$logdir/test-go32v2.log

function display_time ()
{
  echo -n "$* "
  date "+%Y-%m-%d-%H:%M"
}

function run_one_opt ()
{
if [ "X$1" != "X" ] ; then
  TEST_OPT="$1"
else
  TEST_OPT=
fi
DIR_OPT=${TEST_OPT// /_}
LOGFILE=$logdir/go32v2-${DIR_OPT}.log
display_time "Starting run_one_opt with \$1=\"$1\", logfile=$LOGFILE"

TEST_OPT="$TEST_OPT $NEEDED_OPTS"

(
display_time "Recompiling native RTL"
make -C $FPCDIR/rtl distclean all OPT="-n -g" FPC=$NATIVEPP
res=$?
display_time "End of recompiling native RTL"
if [ $res -ne 0 ] ; then
  display_time "Recompiling native RTL failed, res =$res"
  return 1
fi
display_time "Recompiling native compiler"
make -C $FPCDIR/compiler distclean cycle OPT="-n -g" FPC=$NATIVEPP
res=$?
display_time "End of recompiling native compiler"
if [ $res -ne 0 ] ; then
  display_time "Recompiling native compiler failed, res=$res"
  return 1
else
  if [ ! -e $FPCDIR/compiler/$NATIVEPP ] ; then
     display_time "No $NATIVEPP compiler generated"
     return 1
  else
     cp $FPCDIR/compiler/$NATIVEPP $NEWNATIVEFPC
  fi
fi
# This is needed to have an up-to-date fpcmake binary
display_time "Recompiling native packages"
make -C $FPCDIR/packages distclean all OPT="-n -g" FPC=$NEWNATIVEFPC
res=$?
display_time "End of recompiling native packages"
if [ $res -ne 0 ] ; then
  display_time "Recompiling native packages failed, res=$res"
  return 1
fi
display_time "Recompiling native utils"
make -C $FPCDIR/utils distclean all OPT="-n -g" FPC=$NEWNATIVEFPC
res=$?
display_time "End of recompiling native utils"
if [ $res -ne 0 ] ; then
  display_time "Recompiling native utils failed, res=$res"
  return 1
fi

display_time "Recompiling i386 compiler"
make -C $FPCDIR/compiler distclean i386 OPT="-n -g" FPC=$NEWNATIVEFPC
res=$?
display_time "End of recompiling i386 compiler"
if [ $res -ne 0 ] ; then
  display_time "Recompiling i386 compiler failed, res=$res"
  return 1
else
  if [ ! -e $FPCDIR/compiler/$CROSSPP ] ; then
     display_time "No $CROSSPP compiler generated"
     return 1
  else
     cp $FPCDIR/compiler/$CROSSPP $NEWCROSSFPC
  fi
fi
display_time "Clearing RTL/Packages for go32v2"
make -C $FPCDIR/rtl clean FPC=$NEWCROSSFPC OS_TARGET=go32v2
make -C $FPCDIR/packages clean FPC=$NEWCROSSFPC OS_TARGET=go32v2
display_time "End of clearing RTL/Packages for go32v2"

display_time "Compiling dosboxwrapper"
make -C $FPCDIR/tests/utils distclean all dosbox/dosbox_wrapper FPC=$NEWNATIVEFPC
res=$?
display_time "End of compiling dosboxwrapper"
if [ $res -ne 0 ] ; then
  display_time "Recompiling dosbox_wrapper failed, res=$res"
  return 1
else
  if [ ! -e $FPCDIR/tests/utils/dosbox/dosbox_wrapper ] ; then
    display_time "No dosbox_wrapper executable file found"
    return 1
  fi
fi
display_time "Running go32v2 testsuite testprep with OPT=\"$1\""
export TEST_BINUTILSPREFIX=i386-go32v2-
make distclean testprep FPCFPMAKE=$NEWNATIVEFPC TEST_FPC=$NEWCROSSFPC TEST_OPT="$TEST_OPT" TEST_OS_TARGET=go32v2 TEST_USER=pierre EMULATOR=$FPCDIR/tests/utils/dosbox/dosbox_wrapper
res=$?
display_time "End of running go32v2 testsuite testprep with OPT=\"$1\""
if [ $res -ne 0 ] ; then
  display_time "make testprep failed, res=$res"
else
  MAKEFULLOPT=-j3
  display_time "Running go32v2 testsuite full with OPT=\"$1\""
  make $MAKEFULLOPT full FPCFPMAKE=$NEWNATIVEFPC TEST_FPC=$NEWCROSSFPC TEST_OPT="$TEST_OPT" TEST_OS_TARGET=go32v2 TEST_USER=pierre EMULATOR=$FPCDIR/tests/utils/dosbox/dosbox_wrapper
  res=$?
  display_time "End of running go32v2 testsuite full with OPT=\"$1\""
  MAKEFULLOPT=
fi
if [ $res -ne 0 ] ; then
  display_time "Running testsuite failed, res=$res"
  return 1
else
  if [ $doupload -eq 1 ] ; then
    display_time "Starting make uploadrun"
    trials=0
    uploadres=1
    while [ $uploadres -ne 0 ] ; do
      make uploadrun FPCFPMAKE=$NEWNATIVEFPC TEST_FPC=$NEWCROSSFPC TEST_OPT="$TEST_OPT" TEST_OS_TARGET=go32v2 TEST_USER=pierre EMULATOR=$FPCDIR/tests/utils/dosbox/dosbox_wrapper
      uploadres=$?
      if [ $trials -lt 15 ] ; then
        trials=`expr $trials + 1`
      else
         display_time "Too many failures"
      fi
    done
    display_time "End of make uploadrun"
  fi
fi
) > $LOGFILE 2>&1
}

if [ "X$1" != "X" ] ; then
  args="$1"
  doupload=0
  if [ "${args/DOSBOX_USE_TEMPDIR/}" != "$args" ] ; then
    display_time "Using tempdir for dosbox"
    export DOSBOX_NO_TEMPDIR=
  fi
  run_one_opt "$args"
else
  (
  run_one_opt -O-
  run_one_opt -O2
  run_one_opt -O4
  run_one_opt -Criot
  run_one_opt "-Criot -O4"
  export DOSBOX_NO_TEMPDIR=
  run_one_opt "-O- -dDOSBOX_USE_TEMPDIR"
  export DOSBOX=$HOME/bin/dosbox-lfn
  run_one_opt "-O- -dDOSBOX_LFN"
  ) > $GLOBAL_LOGFILE 2>&1
  Build_version=`$NEWCROSSFPC -iV 2> /dev/null`
  Build_date=`$NEWCROSSFPC -iD 2> /dev/null`
  mutt -x -s "Free Pascal results for go32v2 on ${HOSTNAME}, ${Build_version} ${Build_date}" \
     -i $GLOBAL_LOGFILE -- pierre@freepascal.org < /dev/null
fi
