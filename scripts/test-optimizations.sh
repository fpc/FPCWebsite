#!/usr/bin/env bash

source $HOME/bin/fpc-versions.sh

clean=0
keep=0
do_packages=0
do_utils=0
do_tests=0
all_variants=0
test_failed=0

function test_help ()
{
  echo "$0: script to ensure that optimizations nver alter"
  echo "code generated by the compiler"
  echo "List of options:"
  echo "  --all: generate variants for all optimizations levels"
  echo "  --clean: re-generate compiler, even if it already exists"
  echo "  --keep: Do not delete copied and log files"
  echo "  --packages: recompile packages"
  echo "  --utils: recompile utils"
  echo "  --tests: recompile tests"
  echo "  --full: enable all options above"
}
# Evaluate all arguments containing an equal sign
# as variable definition, stop as soon as
# one argument does not contain an equal sign
while [ "$1" != "" ] ; do
  if [ "$1" == "--help" ] ; then
    test_help
    exit 1
  fi
  if [ "$1" == "--full" ] ; then
    clean=1
    do_packages=1
    do_utils=1
    do_tests=1
    all_variants=1
    shift
    continue
  fi
  if [ "$1" == "--clean" ] ; then
    clean=1
    shift
    continue
  fi
  if [ "$1" == "--keep" ] ; then
    keep=1
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
  if [ "$1" == "--tests" ] ; then
    do_tests=1
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

INSTALLRELEASEBINDIR=$INSTALLRELEASEDIR/bin

if [ -d "$INSTALLRELEASEBINDIR" ] ; then
  if [ "${PATH/$INSTALLRELEASEBINDIR/}" != "$PATH" ] ; then
    export PATH=$PATH:$INSTALLRELEASEBINDIR
  fi
fi

if [ -z "$FPCBIN" ] ; then
  WHICH_FPC=`which fpc`
  if [ -f "$WHICH_FPC" ] ; then
    WHICH_FPCBIN=`$WHICH_FPC -PB`
    if [ -f "$WHICH_FPCBIN" ] ; then
      FPCBIN=`basename $WHICH_FPCBIN`
    fi
  fi
fi

FOUND_FPCBIN=`which $FPCBIN 2> /dev/null`

NATIVE_MACHINE=`uname -m`

case $NATIVE_MACHINE in
  ppc64*) NATIVE_MACHINE=powerpc64;;
  ppc*) NATIVE_MACHINE=powerpc;;
  amd64) NATIVE_MACHINE=x86_64;;
  i*86) NATIVE_MACHINE=i386;;
  arm64) NATIVE_MACHINE=aarch64;;
esac

if [ -f "$FOUND_FPCBIN" ] ; then
  OS_TARGET=`$FOUND_FPCBIN -iTO`
  CPU_TARGET=`$FOUND_FPCBIN -iTP`
  OS_SOURCE=`$FOUND_FPCBIN -iSO`
  CPU_SOURCE=`$FOUND_FPCBIN -iSP`
  if [[ ( "$CPU_SOURCE" != "$CPU_TARGET" ) || ( "$OS_SOURCE" != "$OS_TARGET" ) ]] ; then
    CROSS=1
  else
    CROSS=0
  fi
  is_32bit=1
  case $CPU_TARGET in
    aarch64|powerpc64|x86_64|riscv64|sparc64|mips64|mipsel64) is_32bit=0;;
  esac
else
  # Assume 64-bit by default
  OS_TARGET=`uname -s | tr '[:upper:]' '[:lower:]' `
  CPU_TARGET=$NATIVE_MACHINE
  CROSS=0
  is_32bit=0
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

set -u 

LOGDIR=$HOME/logs/$SVNDIRNAME/test-optimizations-$CPU_TARGET-$OS_TARGET

if [ ! -d $LOGDIR ] ; then
  mkdir -p $LOGDIR
fi

DATE="date +%Y-%m-%d-%H-%M-%S"
TODAY=`date +%Y-%m-%d`
export NATIVE_OPT=""
export NATIVE_BINUTILSPREFIX=""
export FPCMAKEOPT=""
export BINUTILSPREFIX=""

if [ -d "$HOME/pas/${SVNDIRNAME}" ] ; then
  cd "$HOME/pas/${SVNDIRNAME}"
else
  echo "Directory $HOME/pas/${SVNDIRNAME} not found, skipping"
  exit
fi

if [ -d fpcsrc ] ; then
  cd fpcsrc
fi

if [ "$NATIVE_MACHINE" != "$CPU_TARGET" ] ; then
  if [ $is_32bit -eq 1 ] ; then
    echo "Running 32-bit $CPU_TARGET compiler on $NATIVE_MACHINE machine, needs special options"
    if [ "$CPU_TARGET" == "sparc" ] ; then
      NATIVE_OPT="-ao-32"
    fi
    if [ -d /lib32 ] ; then
      NATIVE_OPT="$NATIVE_OPT -Fl/lib32"
    fi
    if [ -d /usr/lib32 ] ; then
      NATIVE_OPT="$NATIVE_OPT -Fl/usr/lib32"
    fi
    if [ -d /usr/sparc64-linux-gnu/lib32 ] ; then
      NATIVE_OPT="$NATIVE_OPT -Fl/usr/sparc64-linux-gnu/lib32"
    fi
    if [ -d /usr/local/lib32 ] ; then
      NATIVE_OPT="$NATIVE_OPT -Fl/usr/local/lib32"
    fi
    if [ -d $HOME/lib32 ] ; then
      NATIVE_OPT="$NATIVE_OPT -Fl$HOME/gnu/lib32"
    fi
    if [ -d $HOME/lib32 ] ; then
      NATIVE_OPT="$NATIVE_OPT -Fl$HOME/lib32"
    fi
    if [ -d $HOME/local/lib32 ] ; then
      NATIVE_OPT="$NATIVE_OPT -Fl$HOME/local/lib32"
    fi
    M32_GCC_DIR=` gcc -m32 -print-libgcc-file-name | xargs dirname`
    if [ -d "$M32_GCC_DIR" ] ; then
      NATIVE_OPT="$NATIVE_OPT -Fl$M32_GCC_DIR"
    fi
    export NATIVE_OPT
    export NATIVE_BINUTILSPREFIX=${CPU_TARGET}-${OS_TARGET}-
    export FPCMAKEOPT="$NATIVE_OPT"
    export BINUTILSPREFIX=${CPU_TARGET}-${OS_TARGET}-
  fi
fi

set -u

FPCRELEASEVERSION=$RELEASEVERSION
# Prepend release binary path and local $HOME/bin to PATH
export PATH=${HOME}/pas/fpc-${FPCRELEASEVERSION}/bin:${HOME}/bin:$PATH

cd compiler
COMPILER_DIR=`pwd`

COMPILER_LIST=""
SUFFIX_LIST=""
log_list=""

function decho ()
{
  echo "`date +%Y-%m-%d-%H-%M`: $*"
}

function gen_compiler ()
{
  ADD_OPT="$1"
  SUFFIX=${ADD_OPT// /_}
  ADD_OPT="$ADD_OPT ${OPT:-} $NATIVE_OPT"
  cycle_log=$LOGDIR/cycle${SUFFIX}.log
  NEWBIN=${FPCBIN}${SUFFIX}
  if [ -f "./$NEWBIN" ] ; then
    if [ $clean -eq 1 ] ; then
      if [ -f "$NEWBIN" ] ; then
        rm -f ./$NEWBIN
      fi
    else
      decho "Using existing $NEWBIN"
      SUFFIX_LIST="$SUFFIX_LIST ${SUFFIX}"
      return
    fi
  fi
  if [ $CROSS -eq 1 ] ; then
    export BINUTILSPREFIX="${CPU_TARGET}-${OS_TARGET}-"
  fi
  decho "Generating compiler with OPT=\"-n -gl $ADD_OPT\" in $COMPILER_DIR"
  $MAKE distclean cycle OPT="-n -gl $ADD_OPT" FPC=$FPCBIN > $cycle_log 2>&1
  res=$?
  if [ $res -ne 0 ] ; then
    decho "Cycle failed, see $cycle_log"
    return
  fi
  cp ./$FPCBIN ./${NEWBIN}
  COMPILER_LIST="$COMPILER_LIST ${NEWBIN}"
  SUFFIX_LIST="$SUFFIX_LIST ${SUFFIX}"
  log_list="$log_list $cycle_log"
}


function run_compilers ()
{
  for SUFFIX in $SUFFIX_LIST ; do
    ADD_OPT="${OPT:-} $NATIVE_OPT"
    NEWFPC=${FPCBIN}${SUFFIX}
    decho "Testing $NEWFPC"
    NEWFPCBIN=${COMPILER_DIR}/${NEWFPC}
    FULL_TARGET=`$NEWFPCBIN -iTP`-`$NEWFPCBIN -iTO`
    rtl_log=$LOGDIR/rtl${SUFFIX}.log
    $MAKE -C ../rtl distclean all OPT="-n -gl $ADD_OPT" FPC=$NEWFPCBIN > $rtl_log 2>&1
    makeres=$?
    if [ $makeres -ne 0 ] ; then
      decho "Warning: $MAKE failed in rtl, res=$makeres"
    else
      log_list="$log_list $rtl_log"
    fi
    if [ -d ../rtl/units${SUFFIX} ] ; then
      rm -Rf ../rtl/units${SUFFIX}
    fi
    decho "Moving ../rtl/units to ../rtl/units${SUFFIX}"
    cp -Rf ../rtl/units ../rtl/units${SUFFIX}
    if [ $do_packages -eq 1 ] ; then
      decho "Testing $NEWFPC in packages"
      packages_log=$LOGDIR/packages${SUFFIX}.log
      $MAKE -C ../packages distclean all OPT="-n -gl $ADD_OPT" FPC=$NEWFPCBIN > $packages_log 2>&1
      makeres=$?
      if [ $makeres -ne 0 ] ; then
        decho "Warning: $MAKE failed in packages, res=$makeres"
      else
        log_list="$log_list $packages_log"
      fi
      packages_move_log=$LOGDIR/packages-move${SUFFIX}.log
      decho "Moving packages units/bin dirs to ../rtl/units${SUFFIX}"
      decho "Moving packages units/bin dirs to ../rtl/units${SUFFIX}" > $packages_move_log
      for dir in ../packages/*/units ../packages/*/bin ; do
        if [ -d "$dir" ] ; then
          updir=`dirname $dir`
          package_name=`basename $updir` 
          decho "Moving $dir to ../rtl/units${SUFFIX}/$package_name" >> $packages_move_log
          cp -Rf $dir ../rtl/units${SUFFIX}/$package_name
          cpres=$?
          if [ $cpres -ne 0 ] ; then
            decho "Error moving  $dir to ../rtl/units${SUFFIX}/$package_name, res=$cpres"
          fi
        fi
      done
      log_list="$log_list $packages_move_log"
    fi
    if [ $do_utils -eq 1 ] ; then
      decho "Testing $NEWFPC in utils"
      utils_log=$LOGDIR/utils${SUFFIX}.log
      $MAKE -C ../utils distclean all OPT="-n -gl $ADD_OPT" FPC=$NEWFPCBIN > $utils_log 2>&1
      makeres=$?
      if [ $makeres -ne 0 ] ; then
        decho "Warning: $MAKE failed in utils, res=$makeres"
      else
        log_list="$log_list $utils_log"
      fi
      utils_move_log=$LOGDIR/utils-move${SUFFIX}.log
      decho "Moving utils units/bin dirs to ../rtl/units${SUFFIX}"
      decho "Moving utils units/bin dirs to ../rtl/units${SUFFIX}" > utils_move_log
      for dir in ../utils/*/units ../utils/*/bin utils/units utils/bin ; do
        if [ -d "$dir" ] ; then
          updir=`dirname $dir`
          package_name=`basename $updir` 
          decho "Moving $dir to ../rtl/units${SUFFIX}/$package_name" >> $utils_move_log
          cp -Rf $dir ../rtl/units${SUFFIX}/$package_name
          cpres=$?
          if [ $cpres -ne 0 ] ; then
            decho "Error moving  $dir to ../rtl/units${SUFFIX}/$package_name, res=$cpres"
          fi
        fi
      done
      log_list="$log_list $utils_move_log"
    fi
    if [ $do_tests -eq 1 ] ; then
      tests_log=$LOGDIR/tests${SUFFIX}.log
      decho "Testing $NEWFPC in tests"
      TEST_ADD_OPT="${OPT:-} $NATIVE_OPT"
      BASE_ADD_OPT="${OPT:-} $NATIVE_OPT"
      if [ -n "$BINUTILSPREFIX" ] ; then
        BASE_ADD_OPT="$BASE_ADD_OPT -XP$BINUTILSPREFIX"
      fi
      $MAKE -C ../tests distclean full OPT="-gl $BASE_ADD_OPT" TEST_OPT="-n -gl $TEST_ADD_OPT" FPC=$NEWFPCBIN TEST_FPC=$NEWFPCBIN > $tests_log 2>&1
      makeres=$?
      if [ $makeres -ne 0 ] ; then
        decho "Warning: $MAKE full failed in tests, res=$makeres"
      else
        log_list="$log_list $tests_log"
      fi
      tests_move_log=$LOGDIR/tests-move${SUFFIX}.log
      move_count=0
      decho "Moving tests objects, ppu files and executables to ../rtl/units${SUFFIX}/tests"
      decho "Moving tests objects, ppu files and executables to ../rtl/units${SUFFIX}/tests" > $tests_move_log
      destdir=../rtl/units${SUFFIX}/tests
      if [ ! -d $destdir ] ; then
        mkdir -p $destdir
      fi
      dir=../tests/output/$FULL_TARGET
      if [ -d "$dir" ] ; then
        file_list=`find $dir -name "*.o" -or -name "*.ppu" -or -executable `
        for f in $file_list ; do
          if [ "${f/tw26472/}" != "$f" ] ; then
            # tests/webtbs/tw26472.pp uses {$I  %TIMEXXX}
	    # which are expected to be different, do not copy these files
	    continue
	  fi
	  # Do not try to copy directories directly
	  if [ ! -d "$f" ] ; then
            cp -f $f $destdir >> $tests_move_log 2>&1
            cpres=$?
            if [ $cpres -ne 0 ] ; then
              decho "Error moving $f to $destdir, res=$cpres"
	    else
	      let move_count++
              decho "Moved $f to $destdir" >> $tests_move_log
            fi
	  fi
        done
      else
        decho "Directory $dir not found"
        decho "Directory $dir not found" >> $tests_move_log
      fi
      decho "Moved $move_count files from $dir to $destdir"
      decho "Moved $move_count files from $dir to $destdir" >> $tests_move_log
      log_list="$log_list $tests_move_log"
    fi
  done
}

function generate_diffs()
{
  for SUF1 in $SUFFIX_LIST ; do
    for SUF2 in $SUFFIX_LIST ; do
      if [[ "$SUF1" > "$SUF2" ]] ; then
        decho "Comparing $SUF1 to $SUF2"
        diff_file=$LOGDIR/diffs${SUF1}-${SUF2}.log
        diff -rc ../rtl/units$SUF1 ../rtl/units$SUF2 > $diff_file
        diffres=$?
        if [ $diffres -ne 0 ] ; then
          decho "Units directories differ, see $diff_file"
          let nb_failure++
          continue
        fi
        log_list="$log_list $diff_file"
      fi
    done
  done
}

function do_all ()
{
  decho "Using FPCBIN=$FPCBIN"
  gen_compiler "-O-"
  if [ $all_variants -eq 1 ] ; then
    gen_compiler "-O1"
    gen_compiler "-O2"
    gen_compiler "-O3"
    gen_compiler "-O4 -CX -XX"
  fi
  gen_compiler "-O4"

  run_compilers
  nb_failure=0
  generate_diffs

  if [ $nb_failure -eq 0 ] ; then
    if [ $keep -eq 1 ] ; then
      decho "All OK, but keeping generated files"
    else
      decho "All OK, deleting generated/copied files"
      for SUF in $SUFFIX_LIST ; do
        rm -Rf ../rtl/units$SUF
      done
      if [ -n "$log_list" ] ; then
        rm -Rf $log_list
      fi
      if [ -n "$COMPILER_LIST" ] ; then
        rm -Rf $COMPILER_LIST
      fi
    fi
  else
    decho "There are problems, generated/copied files not deleted"
    test_failed=1
  fi
}

global_log=$LOGDIR/global.log

do_all > $global_log 2>&1

if [ $test_failed -eq 1 ] ; then
  decho "Optimization test $0 failed"
  machine_host=`uname -n`
  if [ "$machine_host" == "CFARM-IUT-TLSE3" ] ; then
    machine_host=gcc21
  fi
  # Only keep first part of machine name
  machine_host=${machine_host//.*/}

  machine_cpu=`uname -m`
  machine_os=`uname -s`
  machine_info="$machine_host $machine_cpu $machine_os"

  mutt -x -s "Free Pascal optimization tests $0 failed in ${SVNDIRNAME}, date `date +%Y-%m-%d` on $machine_info" -i $global_log -- pierre@freepascal.org < /dev/null > /dev/null 2>&1
fi
