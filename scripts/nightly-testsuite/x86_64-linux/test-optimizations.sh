#!/usr/bin/env bash

source $HOME/bin/fpc-versions.sh

clean=0
do_packages=0
do_utils=0
all_variants=0

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
  if [ "$1" == "--all" ] ; then
    all_variants=1
    shift
    continue
  fi
  if [ "$1" == "--utils" ] ; then
    do_utils=1
    shift
    continue
  fi
  if [ "${1/=/_}" != "$1" ] ; then
    eval export "$1"
    shift
  else
    echo "parameter \"$1\" not handled"
    shift
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
  WHICH_FPC=`which fpc`
  if [ -f "$WHICH_FPC" ] ; then
    WHICH_FPCBIN=`$WHICH_FPC -PB`
    if [ -f "$WHICH_FPCBIN" ] ; then
      FPCBIN=`basename $WHICH_FPCBIN`
      echo "Using FPCBIN=$FPCBIN"
    fi
  fi
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

COMPILER_DIR=`pwd`

COMPILER_LIST=""
SUFFIX_LIST=""

function gen_compiler ()
{
  ADD_OPT="$1 ${OPT:-}"
  SUFFIX=${ADD_OPT// /_}
  cycle_file=cycle${SUFFIX}.log
  NEWBIN=${FPCBIN}${SUFFIX}
  if [ -f "./$NEWBIN" ] ; then
    if [ $clean -eq 1 ] ; then
      rm -f ./$NEWBIN
    else
      echo "Using existing $NEWBIN"
      SUFFIX_LIST="$SUFFIX_LIST ${SUFFIX}"
      return
    fi
  fi
  echo "Generating compiler with OPT=\"-n -gl $ADD_OPT\" in $COMPILER_DIR"
  $MAKE distclean cycle OPT="-n -gl $ADD_OPT" FPC=$FPCBIN > $cycle_file 2>&1
  cp ./$FPCBIN ./${NEWBIN}
  COMPILER_LIST="$COMPILER_LIST ${NEWBIN}"
  SUFFIX_LIST="$SUFFIX_LIST ${SUFFIX}"
}

gen_compiler "-O-"
if [ $all_variants -eq 1 ] ; then
  gen_compiler "-O1"
  gen_compiler "-O2"
  gen_compiler "-O3"
fi
gen_compiler "-O4"

COMPILER_DIR=`pwd`

for SUFFIX in $SUFFIX_LIST ; do
  NEWFPC=${FPCBIN}${SUFFIX}
  echo "Testing $NEWFPC"
  NEWFPCBIN=${COMPILER_DIR}/${NEWFPC}
  $MAKE -C ../rtl distclean all FPC=$NEWFPCBIN > rtl${SUFFIX}.log 2>&1
  makeres=$?
  if [ $makeres -ne 0 ] ; then
    echo "Warning: $MAKE failed in rtl, res=$makeres"
  fi
  if [ -d ../rtl/units${SUFFIX} ] ; then
    rm -Rf ../rtl/units${SUFFIX}
  fi
  echo "Moving ../rtl/units to ../rtl/units${SUFFIX}"
  cp -Rf ../rtl/units ../rtl/units${SUFFIX}
  if [ $do_packages -eq 1 ] ; then
    echo "Testing $NEWFPC in packages"
    $MAKE -C ../packages distclean all FPC=$NEWFPCBIN > packages${SUFFIX}.log 2>&1
    makeres=$?
    if [ $makeres -ne 0 ] ; then
      echo "Warning: $MAKE failed in packages, res=$makeres"
    fi
    echo "Moving packages units/bin dirs to ../rtl/units${SUFFIX}"
    echo "Moving packages units/bin dirs to ../rtl/units${SUFFIX}" > packages-move${SUFFIX}.log
    for dir in ../packages/*/units ../packages/*/bin ; do
      if [ -d "$dir" ] ; then
        updir=`dirname $dir`
        package_name=`basename $updir` 
        echo "Moving $dir to ../rtl/units${SUFFIX}/$package_name" >> packages-move${SUFFIX}.log
        cp -Rf $dir ../rtl/units${SUFFIX}/$package_name
        cpres=$?
        if [ $cpres -ne 0 ] ; then
          echo "Error moving  $dir to ../rtl/units${SUFFIX}/$package_name, res=$cpres"
        fi
      fi
    done
  fi
  if [ $do_utils -eq 1 ] ; then
    echo "Testing $NEWFPC in utils"
    $MAKE -C ../utils distclean all FPC=$NEWFPCBIN > utils${SUFFIX}.log 2>&1
    makeres=$?
    if [ $makeres -ne 0 ] ; then
      echo "Warning: $MAKE failed in utils, res=$makeres"
    fi
    echo "Moving utils units/bin dirs to ../rtl/units${SUFFIX}"
    echo "Moving utils units/bin dirs to ../rtl/units${SUFFIX}" > utils-move${SUFFIX}.log
    for dir in ../utils/*/units ../utils/*/bin utils/units utils/bin ; do
      if [ -d "$dir" ] ; then
        updir=`dirname $dir`
        package_name=`basename $updir` 
        echo "Moving $dir to ../rtl/units${SUFFIX}/$package_name" >> utils-move${SUFFIX}.log
        cp -Rf $dir ../rtl/units${SUFFIX}/$package_name
        cpres=$?
        if [ $cpres -ne 0 ] ; then
          echo "Error moving  $dir to ../rtl/units${SUFFIX}/$package_name, res=$cpres"
        fi
      fi
    done
  fi
done

nb_failure=0

for SUF1 in $SUFFIX_LIST ; do
  for SUF2 in $SUFFIX_LIST ; do
    if [[ "$SUF1" > "$SUF2" ]] ; then
      echo "Comparing $SUF1 to $SUF2"
      diff_file=diffs${SUF1}-${SUF2}.log
      diff -rc ../rtl/units$SUF1 ../rtl/units$SUF2 > $diff_file
      diffres=$?
      if [ $diffres -ne 0 ] ; then
        echo "Units directories differ, see $diff_file"
        let nb_failure++
      fi
    fi
  done
done

if [ $nb_failure -eq 0 ] ; then
  echo "All OK, deleting generated/copied files"
  for SUF in $SUFFIX_LIST ; do
    rm -Rf ../rtl/units$SUF
  done
  rm -Rf rtl*.log packages*.log utils*.log
else
  echo "There are problems, generated/copied files not deleted"
fi
