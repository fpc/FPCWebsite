#!/usr/bin/env bash

source $HOME/bin/fpc-versions.sh

clean=0
keep=0
do_packages=0
do_utils=0
do_fullcycle=0
do_tests=0
do_llvm=0
all_variants=0
test_failed=0
IS_CROSS=0
ignore_list=""
exe_ext=""
FPCBIN=
OPT=""

cpu_list="aarch64 arm avr i386 i8086 jvm m68k mips mipsel powerpc powerpc64 riscv32 riscv64 sparc sparc64 x86_64 xtensa z80"

function test_help ()
{
  echo "$0: script to ensure that optimizations never alter"
  echo "code generated by the compiler"
  echo "List of options:"
  echo "  --all: generate variants for all optimizations levels"
  echo "  --clean: re-generate compiler, even if it already exists"
  echo "  --full: enable --all, --clean, --fullcycle, --packages, --utils and --tests options"
  echo "  --fullcycle: Also test fullcycle target in compiler directory"
  echo "  --keep: Do not delete copied and log files"
  echo "  --llvm: compile LLVM compiler"
  echo "  --packages: recompile packages"
  echo "  --tests: recompile tests"
  echo "  --utils: recompile utils"
  echo "FPCBIN=ppcXXX to force use of a particular CPU compiler"
  echo "OPT=\"-X -Y\" options added when testing the compilers"
}
# Evaluate all arguments containing an equal sign
# as variable definition, stop as soon as
# one argument does not contain an equal sign
all_args=""
while [ "$1" != "" ] ; do
  all_args+=" $1"
  if [ "$1" == "--help" ] ; then
    test_help
    exit 1
  fi
  if [ "$1" == "--full" ] ; then
    clean=1
    do_fullcycle=1
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
  if [ "$1" == "--fullcycle" ] ; then
    do_fullcycle=1
    shift
    continue
  fi
  if [ "$1" == "--keep" ] ; then
    keep=1
    shift
    continue
  fi
  if [ "$1" == "--llvm" ] ; then
    do_llvm=1
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
    eval export "\"$1\""
    shift
  else
    echo "parameter \"$1\" not handled"
    shift
  fi
done

if [ $do_fullcycle -eq 1 ] ; then
  # version unit uses revision.inc include file, 
  # which is regenerated at each cycle, leading
  # to timestamp differences for source list in version.ppu
  ignore_list+=" version.ppu"
fi
if [ $do_tests -eq 1 ] ; then
  # longlog file contains details that can vary 
  # Add it to ignore_list
  ignore_list+=" longlog"
  # Test tw26472 can vary:
  # tests/webtbs/tw26472.pp uses {$I  %TIMEXXX}
  # which are expected to be different, do not copy these files
  ignore_list+=" tw26472*"
fi

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
  if [ "${PATH/$INSTALLRELEASEBINDIR/}" = "$PATH" ] ; then
    export PATH=$PATH:$INSTALLRELEASEBINDIR
  fi
fi

if [ -z "$SVNDIRNAME" ] ; then
  if [ "x$FIXES" == "x1" ] ; then
    SVNDIRNAME=$FIXESDIRNAME
    FPC_VERSION=$FIXESVERSION
    if [ -z "$SVNDIRNAME" ] ; then
      SVNDIRNAME=fixes
    fi
  else
    SVNDIRNAME=$TRUNKDIRNAME
    FPC_VERSION=$TRUNKVERSION
    if [ -z "$SVNDIRNAME" ] ; then
      SVNDIRNAME=trunk
    fi
  fi
fi

FPC_BINDIR=$PASDIR/fpc-$FPC_VERSION/bin

if [ -d "$FPC_BINDIR" ] ; then
  if [ "${PATH/$FPC_BINDIR/}" = "$PATH" ] ; then
    export PATH=$FPC_BINDIR:$PATH
  fi
fi

cpu_target_explicit=0
if [ -n "${CPU_TARGET:-}" ] ; then
  cpu_target_explicit=1
  if [ -z "${FPCBIN:-}" ] ; then
    FPCBIN="ppc$CPU_TARGET"
    case "$CPU_TARGET" in
      aarch64|arm64) FPCBIN=ppca64 ;;
      arm) FPCBIN=ppcarm ;;
      i*86) FPCBIN=ppc386 ;;
      m68k) FPCBIN=ppc68k ;;
      mipsel*) FPCBIN=ppcmipsel ;;
      mips*) FPCBIN=ppcmips ;;
      powerpc64le|ppc64le) FPCBIN=ppcppc64 ;;
      powerpc|ppc) FPCBIN=ppcppc ;;
      powerpc64|ppc64) FPCBIN=ppcppc64 ;;
      riscv32) FPCBIN=ppcrv32 ;;
      riscv64) FPCBIN=ppcrv64 ;;
      x86_64|amd64) FPCBIN=ppcx64 ;;
      xtensa) FPCBIN=ppcxtensa ;;
      z80) FPCBIN=ppz80 ;;
    esac
    export FPCBIN
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
elif [ $cpu_target_explicit -eq 1 ] ; then
  OS_TARGET=`fpc -iTO`
  OS_SOURCE=`fpc -iSO`
  CPU_SOURCE=`fpc -iSP`
else
  OS_TARGET=`uname -s | tr '[:upper:]' '[:lower:]' `
  CPU_TARGET=$NATIVE_MACHINE
  OS_SOURCE=$OS_TARGET
  CPU_SOURCE=$CPU_TARGET
fi

if [[ ( "$CPU_SOURCE" != "$CPU_TARGET" ) || ( "$OS_SOURCE" != "$OS_TARGET" ) ]] ; then
  CROSS=1
else
  CROSS=0
fi

is_32bit=1
case $CPU_TARGET in
  aarch64|powerpc64|x86_64|riscv64|sparc64|mips64|mipsel64) is_32bit=0;;
esac

if [ -z "$MAKE" ] ; then
  GMAKE=`which gmake 2> /dev/null`
  if [ -f "$GMAKE" ] ; then
    export MAKE="$GMAKE"
  else
    export MAKE=make
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

can_run_target=1

if [ "$NATIVE_MACHINE" != "$CPU_TARGET" ] ; then
  IS_CROSS=1
  target_sysroot=$HOME/sys-root/$CPU_TARGET-$OS_TARGET
  if [ -d "$target_sysroot" ] ; then
    sysroot="$target_sysroot"
  else
    sysroot=""
  fi
  can_run_target=0
  if [[ ( "$CPU_SOURCE" == "x86_64" ) && ( "$CPU_TARGET" == "i386" ) ]] ; then
    can_run_target=1
  fi
  if [[ ( "$CPU_SOURCE" == "aarch64" ) && ( "$CPU_TARGET" == "arm" ) ]] ; then
    can_run_target=1
  fi
  if [[ ( "$CPU_SOURCE" == "sparc64" ) && ( "$CPU_TARGET" == "sparc" ) ]] ; then
    can_run_target=1
  fi
  if [[ ( "$CPU_SOURCE" == "mips64" ) && ( "$CPU_TARGET" == "mips" ) ]] ; then
    can_run_target=1
  fi
  if [[ ( "$CPU_SOURCE" == "mipsel64" ) && ( "$CPU_TARGET" == "mipsel" ) ]] ; then
    can_run_target=1
  fi
  if [[ ( "$CPU_SOURCE" == "powerpc64" ) && ( "$CPU_TARGET" == "powerpc" ) ]] ; then
    can_run_target=1
  fi
  if [[ ( "$CPU_SOURCE" == "riscv64" ) && ( "$CPU_TARGET" == "riscv32" ) ]] ; then
    can_run_target=1
  fi

  if [[ ( $can_run_target -eq 1 ) && ( $is_32bit -eq 1 ) ]] ; then
    if [ "$CPU_TARGET" == "sparc" ] ; then
      NATIVE_OPT="-ao-32"
    fi
    if [ -d "$sysroot/lib32" ] ; then
      NATIVE_OPT="$NATIVE_OPT -Fl$sysroot/lib32"
    fi
    if [ -d "$sysroot/usr/lib32" ] ; then
      NATIVE_OPT="$NATIVE_OPT -Fl$sysroot/usr/lib32"
    fi
    if [ "$CPU_TARGET" == "sparc" ] ; then
      if [ -d "$sysroot/usr/sparc64-linux-gnu/lib32" ] ; then
        NATIVE_OPT="$NATIVE_OPT -Fl$sysroot/usr/sparc64-linux-gnu/lib32"
      fi
    fi
    if [ -d "$sysroot/usr/local/lib32" ] ; then
      NATIVE_OPT="$NATIVE_OPT -Fl$sysroot/usr/local/lib32"
    fi
    if [ $can_run_target -eq 1 ] ; then
      if [ -d "$HOME/gnu/lib32" ] ; then
        NATIVE_OPT="$NATIVE_OPT -Fl$HOME/gnu/lib32"
      fi
      if [ -d "$HOME/lib32" ] ; then
        NATIVE_OPT="$NATIVE_OPT -Fl$HOME/lib32"
      fi
      if [ -d $HOME/local/lib32 ] ; then
        NATIVE_OPT="$NATIVE_OPT -Fl$HOME/local/lib32"
      fi
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

if [ $can_run_target -eq 0 ] ; then
  gen_compiler_target="rtlclean rtl $CPU_TARGET"
  START_FPCBIN=`fpc -PB`
  do_fullcycle=0
else
  gen_compiler_target="cycle"
  START_FPCBIN=$FPCBIN
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
MAKE_OPT=""
if [ $do_llvm -eq 1 ] ; then
  log_suffix="-llvm.log"
else
  log_suffix=".log"
fi


function decho ()
{
  echo "`date +%Y-%m-%d-%H-%M`: $*"
}

function gen_compiler ()
{
  ADD_OPT="$1"
  SUFFIX=${ADD_OPT// /_}
  ADD_OPT="$ADD_OPT ${OPT:-} $NATIVE_OPT"
  cycle_log=$LOGDIR/cycle${SUFFIX}$log_suffix
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
  if [[ ( $CROSS -eq 1 ) && ( $can_run_target -eq 1 ) ]] ; then
    export BINUTILSPREFIX="${CPU_TARGET}-${OS_TARGET}-"
    # Pretend FPCBIN is a native compiler
    MAKE_OPT="CPU_SOURCE=$CPU_TARGET"
  else
    MAKE_OPT=""
  fi
  decho "Generating compiler with OPT=\"-n -gl $ADD_OPT\" $MAKE_OPT FPC=$START_FPCBIN in $COMPILER_DIR"
  $MAKE distclean $gen_compiler_target OPT="-n -gl $ADD_OPT" $MAKE_OPT FPC=$START_FPCBIN > $cycle_log 2>&1
  res=$?
  if [ $res -ne 0 ] ; then
    decho "$MAKE distclean $gen_compiler_target failed, res=$res, see $cycle_log"
    return
  fi
  if [ $do_llvm -eq 1 ] ; then
    cp ./$FPCBIN ./${NEWBIN}
    decho "Generating LLVM compiler with OPT=\"-n -gl $ADD_OPT\" $MAKE_OPT FPC=$NEWBIN in $COMPILER_DIR"
    $MAKE distclean rtlclean rtl all OPT="-n -gl $ADD_OPT" LLVM=1 $MAKE_OPT FPC=`pwd`/$NEWBIN >> $cycle_log 2>&1
    res=$?
    if [ $res -ne 0 ] ; then
      decho "Compilation of llvm version failed, see $cycle_log"
      return
    fi
  fi
  if [ -f "./${FPCBIN}" ] ; then
    cp ./$FPCBIN ./${NEWBIN}
    COMPILER_LIST="$COMPILER_LIST ${NEWBIN}"
    SUFFIX_LIST="$SUFFIX_LIST ${SUFFIX}"
    log_list="$log_list $cycle_log"
  else
    echo "No new ${FPCBIN}"
  fi
}


function run_compilers ()
{
  for SUFFIX in $SUFFIX_LIST ; do
    ADD_OPT="${OPT:-} $NATIVE_OPT"
    NEWFPC=${FPCBIN}${SUFFIX}
    decho "Testing $NEWFPC"
    NEWFPCBIN=${COMPILER_DIR}/${NEWFPC}
    FULL_TARGET=`$NEWFPCBIN -iTP`-`$NEWFPCBIN -iTO`
    rtl_log=$LOGDIR/rtl${SUFFIX}$log_suffix
    # Do not use distclean for rtl, to keep native rtl compiled
    #which is required in case of cross-compilation
    $MAKE -C ../rtl clean all OPT="-n -gl $ADD_OPT" FPC=$NEWFPCBIN > $rtl_log 2>&1
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
    if [ $do_fullcycle -eq 1 ] ; then
      decho "Testing $NEWFPC in compiler with fullcycle target"
      fullcycle_log=$LOGDIR/fullcycle${SUFFIX}$log_suffix
      $MAKE -C . distclean fullcycle OPT="-n -gl $ADD_OPT" FPC=$NEWFPCBIN > $fullcycle_log 2>&1
      makeres=$?
      if [ $makeres -ne 0 ] ; then
        decho "Warning: $MAKE failed for fullcycle in compiler, res=$makeres"
      else
        log_list="$log_list $fullcycle_log"
      fi
      for CPU in $cpu_list ; do 
        if [ -d ./$CPU/units ] ; then
          decho "Moving $CPU/units to ../rtl/units${SUFFIX}/compiler-$CPU"
          if [ ! -d ../rtl/units${SUFFIX}/compiler-$CPU ] ; then
            mkdir -p ../rtl/units${SUFFIX}/compiler-$CPU
          fi
          cp -Rf ./$CPU/units ../rtl/units${SUFFIX}/compiler-$CPU/
       fi
      done
    fi
    if [ $do_packages -eq 1 ] ; then
      decho "Testing $NEWFPC in packages"
      packages_log=$LOGDIR/packages${SUFFIX}$log_suffix
      $MAKE -C ../packages distclean all OPT="-n -gl $ADD_OPT" FPC=$NEWFPCBIN FPCFPMAKE=$START_FPCBIN > $packages_log 2>&1
      makeres=$?
      if [ $makeres -ne 0 ] ; then
        decho "Warning: $MAKE failed in packages, res=$makeres"
      else
        log_list="$log_list $packages_log"
      fi
      packages_move_log=$LOGDIR/packages-move${SUFFIX}$log_suffix
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
      utils_log=$LOGDIR/utils${SUFFIX}$log_suffix
      $MAKE -C ../utils distclean all OPT="-n -gl $ADD_OPT" FPC=$NEWFPCBIN FPCFPMAKE=$START_FPCBIN > $utils_log 2>&1
      makeres=$?
      if [ $makeres -ne 0 ] ; then
        decho "Warning: $MAKE failed in utils, res=$makeres"
      else
        log_list="$log_list $utils_log"
      fi
      utils_move_log=$LOGDIR/utils-move${SUFFIX}$log_suffix
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
      tests_log=$LOGDIR/tests${SUFFIX}$log_suffix
      decho "Testing $NEWFPC in tests"
      TEST_ADD_OPT="-O2 ${OPT:-} $NATIVE_OPT"
      BASE_ADD_OPT="${OPT:-} $NATIVE_OPT"
      if [ -n "$BINUTILSPREFIX" ] ; then
        BASE_ADD_OPT="$BASE_ADD_OPT -XP$BINUTILSPREFIX"
      fi
      $MAKE -C ../tests distclean full OPT="-gl $BASE_ADD_OPT" TEST_OPT="-n -gl $TEST_ADD_OPT" \
        TEST_FPC=$NEWFPCBIN FPC=$START_FPCBIN FPCFPMAKE=$START_FPCBIN TEST_BINUTILSPREFIX=${BINUTILSPREFIX} > $tests_log 2>&1
      makeres=$?
      if [ $makeres -ne 0 ] ; then
        decho "Warning: $MAKE full failed in tests, res=$makeres"
      else
        log_list="$log_list $tests_log"
      fi
      tests_move_log=$LOGDIR/tests-move${SUFFIX}$log_suffix
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
	file_list+=" $dir/log $dir/longlog $dir/faillist"
        for f in $file_list ; do
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
        diff_file=$LOGDIR/diffs${SUF1}-${SUF2}$log_suffix
        if [ -n "${ignore_list}" ] ; then
          diff_x=""
          for f in ${ignore_list} ; do
            diff_x+=" -x $f"
          done
        else
          diff_x=""
        fi
        diff -rc ${diff_x} ../rtl/units$SUF1 ../rtl/units$SUF2 > $diff_file
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
  if [ $IS_CROSS -eq 1 ] ; then
    decho "Cross-configuration detected: machine_cpu=$NATIVE_MACHINE, target_cpu=$CPU_TARGET" 
    if [ $is_32bit -eq 1 ] ; then
      decho "Running 32-bit $CPU_TARGET compiler on $NATIVE_MACHINE machine, needs special option NATIVE_OPT=\"$NATIVE_OPT\"" 
    fi
  fi
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

global_log=$LOGDIR/global$log_suffix

do_all > $global_log 2>&1

if [ $test_failed -eq 1 ] ; then
  decho "Optimization test $0 $all_args failed"
  machine_host=`uname -n`
  if [ "$machine_host" == "CFARM-IUT-TLSE3" ] ; then
    machine_host=gcc21
  fi
  # Only keep first part of machine name
  machine_host=${machine_host//.*/}

  machine_cpu=`uname -m`
  machine_os=`uname -s`
  machine_info="$machine_host $machine_cpu $machine_os"

  mutt -x -s "Free Pascal optimization tests $0 $all_args failed in ${SVNDIRNAME}, date `date +%Y-%m-%d` on $machine_info" -i $global_log -- pierre@freepascal.org < /dev/null > /dev/null 2>&1
fi

