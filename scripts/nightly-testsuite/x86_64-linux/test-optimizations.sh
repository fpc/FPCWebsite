#!/usr/bin/env bash

source $HOME/bin/fpc-versions.sh

clean=0
do_packages=0

# Evaluate all arguments containing an equal sign
# as variable definition, stop as soon as
# one argument does not contain an equal sign
while [ "$1" != "" ] ; do
  if [ "$1" == "--clean" ] ; then
    clean=1
    shift
    continue
  fi
  if [ "$1" == "--packages" ] ; then
    do_packages=1
    shift
    continue
  fi
  if [ "${1/=/_}" != "$1" ] ; then
    eval export "$1"
    shift
  else
    break
  fi
done

if [ -z "$USER" ]; then
  USER=$LOGNAME
fi

if [ "X$USE_DEBUG" == "X1" ] ; then
  MAKEDEBUG="DEBUG=1"
else
  MAKEDEBUG=
fi

if [ -z "$FPCBIN" ] ; then
  FPCBIN=ppcx64
fi

if [ -z "$MAKE" ] ; then
  export MAKE=make
fi

if [ -z "$SVNDIRNAME" ] ; then
  if [ "x$FIXES" == "x1" ] ; then
    SVNDIRNAME=$FIXESDIRNAME
    if [ -z "$SVNDIRNAME" ] ; then
      SVNDIRNAME=fixes
    fi
  else
    SVNDIRNAME=$TRUNKDIRNAME
    if [ -z "$SVNDIRNAME" ] ; then
      SVNDIRNAME=trunk
    fi
  fi
fi

DATE="date +%Y-%m-%d-%H-%M-%S"
TODAY=`date +%Y-%m-%d`

if [ -d "$HOME/pas/${SVNDIRNAME}" ] ; then
  cd "$HOME/pas/${SVNDIRNAME}"
else
  echo "Directory $HOME/pas/${SVNDIRNAME} not found, skipping"
  exit
fi

if [ -d fpcsrc ] ; then
  cd fpcsrc
fi

set -u

FPCRELEASEVERSION=$RELEASEVERSION
# Prepend release binary path and local $HOME/bin to PATH
export PATH=${HOME}/pas/fpc-${FPCRELEASEVERSION}/bin:${HOME}/bin:$PATH

cd compiler

COMPILER_LIST=""
SUFFIX_LIST=""

function gen_compiler ()
{
  ADD_OPT="$1"
  SUFFIX=${ADD_OPT// /_}
  cycle_file=cycle${SUFFIX}.log
  NEWBIN=${FPCBIN}${SUFFIX}
  if [ -f "./$NEWBIN" ] ; then
    if [ $clean -eq 1 ] ; then
      rm -f ./$NEWBIN
    else
      echo "Using existing $NEWBIN"
      return
    fi
  fi
  echo "Generating compiler with $ADD_OPT"
  $MAKE distclean cycle OPT="-n -gl $ADD_OPT" FPC=$FPCBIN > $cycle_file 2>&1
  cp ./$FPCBIN ./${NEWBIN}
  COMPILER_LIST="$COMPILER_LIST ${NEWBIN}"
  SUFFIX_LIST="$SUFFIX_LIST ${SUFFIX}"
}

gen_compiler "-O-"
gen_compiler "-O1"
gen_compiler "-O2"
gen_compiler "-O3"
gen_compiler "-O4"

COMPILER_DIR=`pwd`

for SUFFIX in $SUFFIX_LIST ; do
  NEWFPC=${FPCBIN}${SUFFIX}
  echo "Testing $NEWFPC"
  NEWFPCBIN=${COMPILER_DIR}/${NEWFPC}
  $MAKE -C ../rtl distclean all FPC=$NEWFPCBIN > rtl${SUFFIX}.log 2>&1
  if [ -d ../rtl/units${SUFFIX} ] ; then
    rm -Rf ../rtl/units${SUFFIX}
  fi
  mv ../rtl/units ../rtl/units${SUFFIX}
  if [ $do_packages -eq 1 ] ; then
    echo "Testing $NEWFPN in packages"
    $MAKE -C ../packages distclean all FPC=$NEWFPCBIN > rtl${SUFFIX}.log 2>&1
    for dir in ../packages/*/units ../packages/*/bin ; do
      mv $dir ../rtl/units${SUFFIX}
    done
  fi
done

for SUF1 in $SUFFIX_LIST ; do
  for SUF2 in $SUFFIX_LIST ; do
    if [[ "$SUF1" > "$SUF2" ]] ; then
      echo "Comparing $SUF1 to $SUF2"
      diff_file=diffs${SUF1}-${SUF2}.log
      diff -rc ../rtl/units$SUF1 ../rtl/units$SUF2 > $diff_file
      diffres=$?
      if [ $diffres -ne 0 ] ; then
        echo "rtl units directories differ, see $diff_file"
      fi
    fi
  done
done

