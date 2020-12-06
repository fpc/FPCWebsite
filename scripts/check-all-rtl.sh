#!/usr/bin/env bash

# Script to try all possible CPU-OS combinations
# possibly with several different options also

. $HOME/bin/fpc-versions.sh

check_option_arg=1
verbose=0
use_clean=0
test_add_dir=0
dir_name_suffix=

while [ $check_option_arg -eq 1 ] ; do
  check_option_arg=0
  if [ "$1" == "--verbose" ] ; then
    verbose=1
    check_option_arg=1
    shift
  fi

  if [ "$1" == "--use-clean" ] ; then
    use_clean=1
    check_option_arg=1
    shift
  fi

  if [ "$1" == "test_add_dir" ] ; then
    test_add_dir=1
    dir_name_suffix=-test_add_dir
    verbose=1
    check_option_arg=1
    shift
  fi
  # Evaluate all arguments containing an equal sign
  # as variable definition
  if [ "${1/=/_}" != "$1" ] ; then
    eval export "$1"
    check_option_arg=1
    shift
  fi
done


if [ -n "$1" ] ; then
  selected_cpu="$1"
  if [ -n "$2" ] ; then
    dir_name_suffix="$dir_name_suffix-$1-$2"
    selected_os="$2"
  else
    dir_name_suffix="$dir_name_suffix-$1"
    selected_os=""
  fi
else
  selected_cpu=""
  selected_os=""
fi

set -u

if [ $use_clean -eq 1 ] ; then
  CLEAN_RULE=clean
  CLEAN_AFTER=1
else
  CLEAN_RULE=distclean
  CLEAN_AFTER=0
fi

if [ -z "$dir_name_suffix" ] ; then
  if [ -n "${GLOBAL_OPT:=}" ] ; then
    dir_name_suffix=${GLOBAL_OPT// /_}
    if [ $verbose -eq 1 ] ; then
      echo "Using dir name suffix $dir_name_suffix"
    fi
  fi
fi

FPCRELEASEVERSION=$RELEASEVERSION
export GREP_CONTEXT_LINES=6

machine_host=`uname -n`
if [ "$machine_host" == "CFARM-IUT-TLSE3" ] ; then
  machine_host=gcc21
fi
# Only keep first part of machine name
machine_host=${machine_host//.*/}

machine_cpu=`uname -m`
machine_os=`uname -s`
machine_info="$machine_host $machine_cpu $machine_os"

# Allows to restrict checks to rtl only
if [ "X${TEST_PACKAGES:-1}" == "X0" ] ; then
  test_packages=0
  OK_REGEXP="OK:.*2nd rtl"
  name=target-rtl
else
  test_packages=1
  OK_REGEXP="OK:.*packages"
  name=target
fi

# Allows to disable testing ppudump
if [ "X${TEST_PPUDUMP:-1}" == "X0" ] ; then
  test_ppudump=0
else
  test_ppudump=1
  if [ "X${TEST_PACKAGES:-1}" == "X0" ] ; then
    OK_REGEXP="OK:.*ppudump of rtl"
  else
    OK_REGEXP="OK:.*ppudump of packages"
  fi
fi

# Allows to enable testing utils 
if [ "X${TEST_UTILS:-0}" == "X1" ] ; then
  test_utils=1
  if [ $test_ppudump -eq 1 ] ; then
    test_utils_ppudump=1
    OK_REGEXP="OK:.*ppudump of utils"
  else
    test_utils_ppudump=0
    OK_REGEXP="OK:.*utils"
  fi
else
  test_utils=0
  test_utils_ppudump=0
fi

# Be sure to only keep compiler name, without directory
if [ -n "${FPC:-}" ] ; then
  FPC=`basename $FPC`
fi

if [ -z "${FPC:-}" ] ; then
  FPC=ppc$machine_cpu
  case $machine_cpu in
    aarch64|arm64) FPC=ppca64 ;;
    arm) FPC=ppcarm ;;
    i*86) FPC=ppc386 ;;
    m68k) FPC=ppc68k ;;
    mipsel*) FPC=ppcmipsel ;;
    mips*) FPC=ppcmips ;;
    powerpc64le|ppc64le) FPC=ppcppc64 ;;
    powerpc|ppc) FPC=ppcppc ;;
    powerpc64|ppc64) FPC=ppcppc64 ;;
    riscv32) FPC=ppcrv32 ;;
    riscv64) FPC=ppcrv64 ;;
    x86_64|amd64) FPC=ppcx64 ;;
    xtensa) FPC=ppcxtensa ;;
    z80) FPC=ppz80 ;;
  esac
  export FPC
fi
cpu_list="aarch64 arm avr i386 i8086 jvm m68k mips mipsel powerpc powerpc64 riscv32 riscv64 sparc sparc64 x86_64 xtensa z80"

# Install all cross-rtl-packages on gcc20/gcc21/gcc123 machines
# Install all packages on gcc21 and gcc123
MAKEJOPT=
TRUNK_FPMAKEOPT=
FIXES_FPMAKEOPT=
FPMAKEOPT=
DO_FPC_BINARY_INSTALL=0
DO_FPC_RTL_INSTALL=0
DO_FPC_PACKAGES_INSTALL=0
DO_FPC_UTILS_INSTALL=0
DO_RECOMPILE_FULL=0
DO_CHECK_LLVM=0
RECOMPILE_INSTALL_NAME=
RECOMPILE_COMPILER_OPT=
RECOMPILE_FULL_OPT=
RECOMPILE_FULL_OPT_O=
ULIMIT_TIME=333
COMPILE_EACH_CPU=0
set_home_bindir_first=0

if [ "X$machine_host" == "Xgcc10" ] ; then
  DO_FPC_BINARY_INSTALL=1
  MAKEJOPT="-j 5"
  test_utils=1
  test_utils_ppudump=1
  set_home_bindir_first=1
elif [ "X$machine_host" == "Xgcc20" ] ; then
  DO_FPC_BINARY_INSTALL=1
elif [ "X$machine_host" == "Xgcc21" ] ; then
  DO_FPC_BINARY_INSTALL=1
  DO_FPC_RTL_INSTALL=1
  DO_FPC_PACKAGES_INSTALL=1
elif [ "X$machine_host" == "Xgcc67" ] ; then
  test_utils=1
  test_utils_ppudump=1
elif [ "X$machine_host" == "Xgcc68" ] ; then
  test_utils=1
  test_utils_ppudump=1
elif [ "X$machine_host" == "Xgcc70" ] ; then
  test_utils=1
  test_utils_ppudump=1
  # Temp mount is too small, don't use it
  XDG_RUNTIME_DIR=
  DO_FPC_BINARY_INSTALL=1
  DO_FPC_RTL_INSTALL=1
  DO_FPC_PACKAGES_INSTALL=1
  DO_RECOMPILE_FULL=1
  RECOMPILE_FULL_OPT="-CriotR"
  RECOMPILE_FULL_OPT_O="-O4"
  USE_RELEASE_MAKEFILE_VARIABLE=1
  MAKEJOPT="-j 2"
elif [ "X$machine_host" == "Xgcc113" ] ; then
  DO_FPC_BINARY_INSTALL=1
  DO_RECOMPILE_FULL=1
  RECOMPILE_FULL_OPT_O="-gwl"
  DO_CHECK_LLVM=1
  RECOMPILE_FULL_OPT="-dFPC_SOFT_FPUX80"
  test_utils=1
  test_utils_ppudump=1
elif [ "X$machine_host" == "Xgcc121" ] ; then
  test_utils=1
  test_utils_ppudump=1
  MAKEJOPT="-j 16"
elif [ "X$machine_host" == "Xgcc122" ] ; then
  test_utils=1
  test_utils_ppudump=1
  # Temp mount is too small, don't use it
  XDG_RUNTIME_DIR=
  DO_FPC_BINARY_INSTALL=1
  DO_FPC_RTL_INSTALL=1
  DO_FPC_PACKAGES_INSTALL=1
  DO_RECOMPILE_FULL=1
  RECOMPILE_FULL_OPT="-CriotR"
  RECOMPILE_FULL_OPT_O="-O4"
  COMPILE_EACH_CPU=1
  USE_RELEASE_MAKEFILE_VARIABLE=1
  MAKEJOPT="-j 16"
  export FPMAKEOPT="-T 8"
  set_home_bindir_first=1
  DO_CHECK_LLVM=1
elif [ "X$machine_host" == "Xgcc123" ] ; then
  test_utils=1
  test_utils_ppudump=1
  DO_FPC_BINARY_INSTALL=1
  DO_FPC_RTL_INSTALL=1
  DO_FPC_PACKAGES_INSTALL=1
  DO_RECOMPILE_FULL=1
  DO_CHECK_LLVM=1
  # RECOMPILE_FULL_OPT=-CriotR
  RECOMPILE_FULL_OPT=
  USE_RELEASE_MAKEFILE_VARIABLE=1
  set_home_bindir_first=1
elif [ "X$machine_host" == "Xgcc135" ] ; then
  test_utils=1
  test_utils_ppudump=1
  DO_FPC_BINARY_INSTALL=1
  DO_FPC_RTL_INSTALL=1
  DO_FPC_PACKAGES_INSTALL=1
  DO_RECOMPILE_FULL=1
  DO_CHECK_LLVM=1
  RECOMPILE_FULL_OPT="-CriotR -gwl -dFPC_SOFT_FPUX80"
  COMPILE_EACH_CPU=1
  # It seems that QWord range checking is not correct of powerpc64le
  RECOMPILE_FULL_OPT="-gwl -dFPC_SOFT_FPUX80"
  USE_RELEASE_MAKEFILE_VARIABLE=1
  MAKEJOPT="-j 16"
  export FPMAKEOPT="-T 16 -v"
  export LD_LIBRARY_PATH=$HOME/gnu/lib64
  set_home_bindir_first=1
elif [ "X$machine_host" == "Xgcc202" ] ; then
  test_utils=1
  test_utils_ppudump=1
  DO_FPC_BINARY_INSTALL=1
  DO_FPC_RTL_INSTALL=1
  DO_FPC_PACKAGES_INSTALL=1
  DO_RECOMPILE_FULL=1
  RECOMPILE_FULL_OPT="-CitR -gwl -dFPC_SOFT_FPUX80"
  RECOMPILE_FULL_OPT_O="-O4"
  DO_CHECK_LLVM=1
  export MAKEJOPT="-j 16"
  export FPMAKEOPT="-T 16"
  # Force use of 32-bit version compiler
  export FPC=ppcsparc
elif [ "X$machine_host" == "Xstadler" ] ; then
  test_utils=1
  test_utils_ppudump=1
  DO_RECOMPILE_FULL=1
  COMPILE_EACH_CPU=1
  MAKEJOPT="-j 32"
  ULIMIT_TIME=999
  TRUNK_FPMAKEOPT="-T 16"
  # Force use of 32-bit version compiler
  export FPC=ppcsparc
elif [ "X$machine_host" == "Xravirin" ] ; then
  test_utils=1
  test_utils_ppudump=1
  DO_RECOMPILE_FULL=1
  COMPILE_EACH_CPU=1
  MAKEJOPT="-j 32"
  ULIMIT_TIME=999
  TRUNK_FPMAKEOPT="-T 16"
  # Force use of 32-bit version compiler
  export FPC=ppcsparc
else
  echo "Unknown machine $machine_host"
fi

if [ "X${USE_RELEASE_MAKEFILE_VARIABLE:-0}" == "X1" ] ; then
  export RELEASE=1
fi

if [ "X${FIXES:-0}" == "X1" ] ; then
  CHECKOUTDIR=$FIXESDIR
  svnname=fixes
  FPCVERSION=$FIXESVERSION
  # LLVM is trunk only for now
  DO_CHECK_LLVM=0
  cpu_list="aarch64 arm avr i386 i8086 jvm m68k mips mipsel powerpc powerpc64 sparc sparc64 x86_64"
  if [ -n "$FIXES_FPMAKEOPT" ] ; then
    export FPMAKEOPT="$FIXES_FPMAKEOPT"
  fi
else
  CHECKOUTDIR=$TRUNKDIR
  svnname=trunk
  FPCVERSION=$TRUNKVERSION
  if [ -n "$TRUNK_FPMAKEOPT" ] ; then
    export FPMAKEOPT="$TRUNK_FPMAKEOPT"
  fi
fi

# Some programs might freeze
# like i386-darwin-as...

ulimit -t $ULIMIT_TIME 2> /dev/null

# Add current FPC (trunk or fixes) bin directory to PATH
if [ -d ${HOME}/pas/fpc-${FPCVERSION}/bin ] ; then
  export PATH=$HOME/pas/fpc-$FPCVERSION/bin:$PATH
fi

# Checking if native $FPC is in PATH
found_fpc=`which $FPC 2> /dev/null `

# Add RELEASE directory
if [ -d ${HOME}/pas/fpc-${FPCRELEASEVERSION}${BINDIRSUFFIX:-}/bin ] ; then
  PATH=${PATH}:${HOME}/pas/fpc-${FPCRELEASEVERSION}${BINDIRSUFFIX:-}/bin
fi

# Also add $HOME/bin to PATH if it exists, but as last
if [ -d ${HOME}/bin ] ; then
  if [ $set_home_bindir_first -eq 1 ] ; then
    export PATH=${HOME}/bin:${PATH}
  else
    export PATH=${PATH}:${HOME}/bin
  fi
fi


if [ -d /opt/cfarm/clang-release/bin ] ; then
  PATH=$PATH:/opt/cfarm/clang-release/bin
fi

if [ "X${MAKE:-}" == "X" ] ; then
  GMAKE=`which gmake 2> /dev/null`
  if [ ! -z "$GMAKE" ] ; then
    MAKE=$GMAKE
  else
    MAKE=make
  fi
fi

if [ -z "${USER:-}" ]; then
  USER=${LOGNAME:-Unknown}
fi

# Use a fake install directory to avoid troubles
if [ ${DO_FPC_BINARY_INSTALL} -ne 0 ] ; then
  export LOCAL_INSTALL_PREFIX=$HOME/pas/fpc-$FPCVERSION
else
  if [ ! -z "${XDG_RUNTIME_DIR:-}" ] ; then
    export LOCAL_INSTALL_PREFIX=$XDG_RUNTIME_DIR/pas/fpc-$FPCVERSION
  elif [ ! -z "${TMP:-}" ] ; then
    export LOCAL_INSTALL_PREFIX=$TMP/$USER/pas/fpc-$FPCVERSION
  elif [ ! -z "${TEMP:-}" ] ; then
    export LOCAL_INSTALL_PREFIX=$TEMP/$USER/pas/fpc-$FPCVERSION
  else	
    export LOCAL_INSTALL_PREFIX=${HOME}/tmp/pas/fpc-$FPCVERSION
  fi
fi


clang_bin=`which clang`
min_clang_major=7
min_clang_minor=0

SKIP_CLANG=1

if [ -f "$clang_bin" ] ; then
  clang_version=`$clang_bin --version | sed -n "s:^.*clang version \([^ ]*\).*:\1:p"`
  #echo "clang_version=\"$clang_version\""
  clang_major=${clang_version/.*/}
  clang_not_major=`echo ${clang_version} | sed "s:^[^.]*\.::" `
  clang_minor=${clang_not_major/.*/}
  #echo "clang_major=\"$clang_major\""
  #echo "clang_not_major=\"$clang_not_major\""
  # echo "clang__minor=\"$clang_minor\"" 
  if [[ ( $clang_major -ge $min_clang_major ) && ( $clang_minor -ge $min_clang_minor ) ]] ; then
    SKIP_CLANG=0
  fi
fi

export PATH
if [ $verbose -eq 1 ] ; then
  echo "Using PATH=$PATH"
fi

START_DIR=`pwd`

script_dir=`dirname "$0"`
if [ -z "$script_dir" ] ; then
  script_name=`which "$0"`
else
  script_name="$0"
fi
script_source=`realpath -P "$script_name" 2> /dev/null `
if [ -z "$script_source" ] ; then
  script_source=`readlink "$script_name" 2> /dev/null `
fi

if [ -f "$script_source" ] ; then
  svn_script_version=` svnversion -c "$script_source"`
  script_date=` find "$script_source" -printf "%TY-%Tm-%Td_%TH:%TM"`
else
  svn_script_version="Unknown \"$script_source\" \"$script_name\""
  script_date=Unknown
fi


cd $CHECKOUTDIR

if [ -d fpcsrc ] ; then
  cd fpcsrc
fi

# Avoid still existing problems when FPCDIR is a relative directory
# leads to errors at packages bootstrap stage
export FPCDIR=`pwd`

svn_rtl_version=`svnversion -c rtl`
svn_compiler_version=`svnversion -c compiler`
svn_packages_version=`svnversion -c packages`
svn_utils_version=`svnversion -c utils`
# This variable is reset after
# all -T"OS" have been parsed
# it serves to add a comment that 
# the help does not cite this target
listed=1

LOGDIR=$HOME/logs/${svnname}${dir_name_suffix}/check-targets

if [ ! -d $LOGDIR ] ; then
  echo "Creating directory $LOGDIR"
  mkdir -p $LOGDIR
fi

if [ -z "${global_sysroot:-}" ] ; then
  global_sysroot=$HOME/sys-root
fi

LOGFILE=$LOGDIR/all-${name}-${svnname}-checks.log
LOCKFILE=$LOGDIR/all-${name}-${svnname}-checks.lock
LOGFILE_NATIVE_RTL=$LOGDIR/native-rtl-${name}-${svnname}.log
LISTLOGFILE=$LOGDIR/list-all-${name}-${svnname}-checks.log
TIMEDLISTLOGFILE=$LOGDIR/timed-list-all-${name}-${svnname}-checks.log
LISTOLDLOGFILE=$LOGDIR/list-all-${name}-${svnname}-check-changes.log
EMAILFILE=$LOGDIR/check-${name}-${svnname}-log.txt
if [ -z "${PREVIOUS_SUFFIX:-}" ] ; then
  PREVIOUS_SUFFIX=.previous
fi

PREVLOGFILE=${LOGFILE}${PREVIOUS_SUFFIX}
PREVLISTLOGFILE=${LISTLOGFILE}${PREVIOUS_SUFFIX}

if [ -f "$LOGFILE" ] ; then
  if [ $verbose -eq 1 ] ; then
    echo "moving $LOGFILE to ${PREVLOGFILE}"
  fi
  cp -f -p "$LOGFILE" "${PREVLOGFILE}"
fi

if [ -f "$LISTLOGFILE" ] ; then
  if [ $verbose -eq 1 ] ; then
    echo "moving $LISTLOGFILE to ${PREVLISTLOGFILE}"
  fi
  cp -f -p $LISTLOGFILE ${PREVLISTLOGFILE}
  prev_failure_list=` sed -n "s|Failure: See \(${LOGDIR}/.*.txt\) for details.*|\1|p" ${PREVLISTLOGFILE}`
  if [ $verbose -eq 1 ] ; then
    echo "Previous failure list is $prev_failure_list"
  fi
  echo "Previous failure list renamed:" > $LISTOLDLOGFILE
  for file in $prev_failure_list ; do
    if [ -f "$file" ] ; then
      echo "Previous failure in $file renamed to ${file/.txt/}.last-failure-txt" >> $LISTOLDLOGFILE
      cp -f -p $file ${file/.txt/}.last-failure-txt
    else
      echo "Previous failure in $file not found" >> $LISTOLDLOGFILE
    fi
  done
else
  prev_failure_list=""
fi

start_date_time=`date "+%Y-%m-%d %H:%M:%S"`
export start_system_date=`date +%Y/%m/%d`
last_time_in_secs=`date --utc +%s`

DATE_FORMAT="+%Y-%m-%d %H:%M:%S"
now_stamp=`date "+%s"`
secs_in_one_day=86400

function date2stamp ()
{
  date --utc --date "$1" +%s
}

function dateDiff ()
{
  case $1 in
    -s)   time_unit=1;      shift;;
    -m)   time_unit=60;     shift;;
    -h)   time_unit=3600;   shift;;
    -d)   time_unit=86400;  shift;;
    *)    time_unit=86400;;
  esac
  date1="$1"
  date2="$2"
  diffSec=$((date2-date1))
  if ((diffSec < 0)); then abs=-1; else abs=1; fi
  diffSec=$((diffSec*abs))
  if [ $time_unit -eq $secs_in_one_day ] ; then
    nbDays=0
    while [ $diffSec -gt $time_unit ] ; do
      let nbDays++
      let diffSec=diffSec-time_unit
    done
    echo $nbDays
  else
    diffRes=$((diffSec / time_unit))
    echo $diffRes
  fi
}

function filedatestamp ()
{
  echo `date -r "$1" "+%s"`
}

# Returns the number of days since file was last modified
function fileage ()
{
  filedate=$(filedatestamp "$1")
  echo $(dateDiff "$filedate" "$now_stamp")
}

function time_since_last ()
{
  now_time_in_secs=`date --utc +%s`
  diffSec=$((now_time_in_secs - last_time_in_secs))
  last_time_in_secs=$now_time_in_secs
  echo $diffSec
}

# echo to LOGFILE, LISTLOGFILE and EMAILFILE
function mecho ()
{
  echo "$*" >> $LOGFILE
  echo "$*" >> $LISTLOGFILE
  time_since_last > /dev/null
  echo "$diffSec `date --utc "+%Y-%m-%d %H:%M:%S"` $*" >> $TIMEDLISTLOGFILE
  echo "$*" >> $EMAILFILE
  if [ $verbose -eq 1 ] ; then
  echo "$*"
  fi
}

# echo to LISTLOGFILE and stdout
function lecho ()
{
  echo "$*"
  echo "$*" >> $LISTLOGFILE
  time_since_last > /dev/null
  echo "$diffSec `date --utc "+%Y-%m-%d %H:%M:%S"` $*" >> $TIMEDLISTLOGFILE
}

function rm_lockfile ()
{
  if [ -f "$LOCKFILE" ] ; then
    rm -f $LOCKFILE
  fi
}

function generate_local_diff_file ()
{
  subdir=$1
  svn_version=$2
  if [ "${svn_version/M/}" != "${svn_version}" ] ; then
    SVNLOGFILE=$LOGDIR/svn_diff_${subdir}.patch
    mecho "${subdir} is locally modified, saving into $SVNLOGFILE"
    cd $subdir
    svn diff > $SVNLOGFILE 2>&1
    cd ..
    eval "svn_${subdir}_modified=1"
  else
    eval "svn_${subdir}_modified=0"
  fi
}

echo "$0 for $svnname, version $FPCVERSION starting at `date --utc \"$DATE_FORMAT\"`" > $LOCKFILE

rm -f $LOGFILE $LISTLOGFILE $TIMEDLISTLOGFILE $EMAILFILE

# Remove all failure files, which have been copied before to avoid
# problems
for file in $prev_failure_list ; do
  rm -f $file
done

mecho "$0 for $svnname, version $FPCVERSION starting at `date --utc \"$DATE_FORMAT\"`"
mecho "Machine info: $machine_info"
mecho "RTL svn version: $svn_rtl_version"
generate_local_diff_file rtl $svn_rtl_version
mecho "Compiler svn version: $svn_compiler_version"
generate_local_diff_file compiler $svn_compiler_version
mecho "Packages svn version: $svn_packages_version"
generate_local_diff_file packages $svn_packages_version
mecho "Utils svn version: $svn_utils_version"
generate_local_diff_file utils $svn_utils_version
mecho "Script svn version: $svn_script_version ($script_date)"
if [ -f "$script_source" ] ; then
  if [ "${svn_script_version/M/}" != "${svn_script_version}" ] ; then
    SVNLOGFILE=$LOGDIR/svn_diff_script_source.patch
    mecho "${script_source} is locally modified, saving into $SVNLOGFILE"
    svn diff "$script_source" > $SVNLOGFILE 2>&1
  fi
fi 

if [ $DO_RECOMPILE_FULL -eq 1 ] ; then
  cd compiler
  cyclelog=$LOGDIR/native-cycle.log
  fullcyclelog=$LOGDIR/full-cycle.log
  mecho "Recompiling native compiler"
  make distclean cycle installsymlink OPT="-n -gl ${RECOMPILE_FULL_OPT} ${RECOMPILE_FULL_OPT_O}" INSTALL_PREFIX=$LOCAL_INSTALL_PREFIX > $cyclelog 2>&1
  makeres=$?
  if [ $makeres -ne 0 ] ; then
    RELEASE_FPC=`which $FPC`
    mecho "Second try for native compiler, using release FPC=\"$RELEASE_FPC\""
    make distclean cycle installsymlink OPT="-n -gl ${RECOMPILE_FULL_OPT}" INSTALL_PREFIX=$LOCAL_INSTALL_PREFIX FPC=$RELEASE_FPC >> $cyclelog 2>&1
    make installsymlink OPT="-n -gl ${RECOMPILE_FULL_OPT}" INSTALL_PREFIX=$LOCAL_INSTALL_PREFIX FPC=`pwd`/$FPC >> $cyclelog 2>&1
    makeres=$?
  fi
  if [ $makeres -ne 0 ] ; then
    mecho "Generating new native compiler failed, see $fullcyclelog for details"
    rm_lockfile
    exit
  fi
  native_cpu=`$LOCAL_INSTALL_PREFIX/bin/$FPC -iSP`
  mecho "Recompiling cross-compilers, using OPT=\"-n -gl ${RECOMPILE_FULL_OPT} ${RECOMPILE_FULL_OPT_O}\""
  make rtlclean rtl fullinstallsymlink OPT="-n -gl ${RECOMPILE_FULL_OPT} ${RECOMPILE_FULL_OPT_O}" INSTALL_PREFIX=$LOCAL_INSTALL_PREFIX FPC=$LOCAL_INSTALL_PREFIX/bin/$FPC > $fullcyclelog 2>&1
  makeres=$?
  if [ $makeres -ne 0 ] ; then
    mecho "Second try for cross-compilers, using OPT=\"-n -gl ${RECOMPILE_FULL_OPT} -O-\""
    make rtlclean rtl fullinstallsymlink OPT="-n -gl ${RECOMPILE_FULL_OPT} -O-" INSTALL_PREFIX=$LOCAL_INSTALL_PREFIX FPC=$LOCAL_INSTALL_PREFIX/bin/$FPC >> $fullcyclelog 2>&1
    makeres=$?
  fi
  if [ $makeres -ne 0 ] ; then
    mecho "Generating all cross-compilers failed, see $fullcyclelog for details"
    COMPILE_EACH_CPU=1
  fi
  if [ $COMPILE_EACH_CPU -eq 1 ] ; then
    export FPCCPUOPT="-O-"
    mecho "Recompiling rtl"
    make rtlclean rtl OPT="-n -gl ${RECOMPILE_FULL_OPT}" INSTALL_PREFIX=$LOCAL_INSTALL_PREFIX FPC=$LOCAL_INSTALL_PREFIX/bin/$FPC >> $fullcyclelog 2>&1
    makeres=$?
    if [ $makeres -ne 0 ] ; then
      mecho "Generating new native rtl failed, see $fullcyclelog for details"
      rm_lockfile
      exit
    fi
    for cpu in $cpu_list ; do
      if [ "$cpu" = "$native_cpu" ] ; then
        continue
      fi
      mecho "Compiling compiler for $cpu"
      make $cpu ${cpu}_exe_install OPT="-n -gl ${RECOMPILE_FULL_OPT}" INSTALL_PREFIX=$LOCAL_INSTALL_PREFIX FPC=$LOCAL_INSTALL_PREFIX/bin/$FPC >> $fullcyclelog 2>&1
      makeres=$?
      if [ $makeres -ne 0 ] ; then
        mecho "Generating $cpu cross-compiler failed, see $fullcyclelog for details"
      fi
    done
  fi
  # Using new temp installation bin dir
  export PATH=$LOCAL_INSTALL_PREFIX/bin:$PATH
  mecho "Adding $LOCAL_INSTALL_PREFIX/bin to front of PATH variable"
  export FPCCPUOPT=
  cd ..
  if [ -f ./packages/fpmake ] ; then
    rm -f ./packages/fpmake
  fi
  if [ -f ./utils/fpmake ] ; then
    rm -f ./utils/fpmake
  fi
fi

export LOGPREFIX=$LOGDIR/${name}-check
export dummy_count=0
export skipped_count=0
export run_fpcmake_first_failure=0
export os_target_not_supported_failure=0
export rtl_1_failure=0
export rtl_2_failure=0
export rtl_ppu_failure=0
export packages_failure=0
export packages_ppu_failure=0
export utils_failure=0
export utils_ppu_failure=0
export dummy_list=
export skipped_list=
export run_fpcmake_first_list=
export os_target_not_supported_list=
export rtl_1_list=
export rtl_2_list=
export rtl_ppu_list=
export packages_list=
export packages_ppu_list=
export utils_list=
export utils_ppu_list=


if [ -z "${NATIVEFPC:-}" ] ; then
  NATIVEFPC=fpc
fi

if [ "`basename $NATIVEFPC`" == "fpc" ] ; then
  export NATIVE_FPCBIN=`$NATIVEFPC -PB`
else
  export NATIVE_FPCBIN=`which $NATIVEFPC`
fi

export NATIVE_MACHINE=`uname -m`
export NATIVE_CPU=`$NATIVEFPC -iSP`
export NATIVE_OS=`$NATIVEFPC -iSO`
export NATIVE_DATE=`$NATIVEFPC -iD`
export NATIVE_VERSION=`$NATIVEFPC -iV`
export NATIVE_FULLVERSION=`$NATIVEFPC -iW`

if [ "$FPCVERSION" != "$NATIVE_VERSION" ] ; then
  echo "Version from native fpc binary is $NATIVE_VERSION, $FPCVERSION was expected" >> $LOGFILE
  echo "Version from native fpc binary is $NATIVE_VERSION, $FPCVERSION was expected" >> $EMAILFILE
fi
if [ "$start_system_date" != "$NATIVE_DATE" ] ; then
  echo "Date from native fpc binary is $NATIVE_DATE, date returns $start_system_date" >> $LOGFILE
  echo "Date from native fpc binary is $NATIVE_DATE, date returns $start_system_date" >> $EMAILFILE
fi

if [[ ("$NATIVE_MACHINE" == "sparc64") && ("$NATIVE_CPU" == "sparc") ]] ; then
  echo "Running	32bit sparc fpc on sparc64 machine, needs special options" >> $LOGFILE
  NATIVE_OPT="-ao-32"
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
  SPARC32_GCC_DIR=` gcc -m32 -print-libgcc-file-name | xargs dirname`
  if [ -d "$SPARC32_GCC_DIR" ] ; then
    NATIVE_OPT="$NATIVE_OPT -Fl$SPARC32_GCC_DIR"
  fi
  export NATIVE_OPT
  export NATIVE_BINUTILSPREFIX=sparc-linux-
else
  export NATIVE_OPT=
  export NATIVE_BINUTILSPREFIX=
fi

# Add a directory to CROSSOPT
# if pattern is found
is_64=0
sysroot=
dir_found=0

function add_dir ()
{
  pattern="$1"
  file_list=

  if [ "${pattern:0:1}" == "-" ] ; then
    find_expr="${pattern}"
    pattern="$2"
  else
    find_expr=
  fi

  echo "add_dir: testing \"$pattern\""
  if [ "${pattern/\//_}" != "$pattern" ] ; then
    if [ -f "$sysroot/$pattern" ] ; then
      file_list=$pattern
    else
      find_expr="-wholename"
    fi
  else
    find_expr="-iname"
  fi

  if [ -z "$file_list" ] ; then
    file_list=` find $sysroot/ $find_expr "$pattern" `
  fi

  for file in $file_list ; do
    use_file=0
    file_type=`file $file`
    if [ "$file_type" != "${file_type//symbolic link/}" ] ; then
      ls_line=`ls -l $file`
      echo "ls line is \"$ls_line\""
      link_target=${ls_line/* /}
      echo "link target is \"$link_target\""
      if [[ "${link_target:0:1}" == / || "${link_target:0:2}" == ~[/a-z] ]] ; then
        is_absolute=1
        add_dir $link_target
      else
        is_absolute=0
        dir=`dirname $file`
        add_dir $dir/$link_target
      fi
      continue
    fi

    file_is_64=`echo $file_type | grep "64-bit" `
    if [[ ( -n "$file_is_64" ) && ( $is_64 -eq 1 ) ]] ; then
      use_file=1
    fi
    if [[ ( -z "$file_is_64" ) && ( $is_64 -eq 0 ) ]] ; then
      use_file=1
    fi
    if [ "$OS_TARG_LOCAL" == "aix" ] ; then
      # AIX puts 32 and 64 bit versions into the same library
      use_file=1
    fi
    echo "add_dir found file=$file, is_64=$is_64, file_is_64=\"$file_is_64\""
    if [ $use_file -eq 1 ] ; then
      file_dir=`dirname $file`
      echo "Adding $file_dir"
      if [ "${CROSSOPT/-Fl$file_dir /}" == "$CROSSOPT" ] ; then
        echo "Adding $file_dir directory to library path list"
        CROSSOPT="$CROSSOPT -Fl$file_dir "
        dir_found=1
      fi
    fi
  done
}
 
function set_fpc_local ()
{
  LOC_CPU_TARGET=$1

  case $LOC_CPU_TARGET in
    aarch64)   FPC_LOCAL=ppca64;;
    alpha)     FPC_LOCAL=ppcaxp;;
    arm)       FPC_LOCAL=ppcarm;;
    avr)       FPC_LOCAL=ppcavr;;
    i386)      FPC_LOCAL=ppc386;;
    i8086)     FPC_LOCAL=ppc8086;;
    ia64)      FPC_LOCAL=ppcia64;;
    jvm)       FPC_LOCAL=ppcjvm;;
    m68k)      FPC_LOCAL=ppc68k;;
    mips)      FPC_LOCAL=ppcmips;;
    mipsel)    FPC_LOCAL=ppcmipsel;;
    powerpc)   FPC_LOCAL=ppcppc;;
    powerpc64) FPC_LOCAL=ppcppc64;;
    riscv32)   FPC_LOCAL=ppcrv32;;
    riscv64)   FPC_LOCAL=ppcrv64;;
    sparc)     FPC_LOCAL=ppcsparc;;
    sparc64)   FPC_LOCAL=ppcsparc64;;
    vis)       FPC_LOCAL=ppcvis;;
    x86_64)    FPC_LOCAL=ppcx64;;
    xtensa)    FPC_LOCAL=ppcxtensa;;
    z80)       FPC_LOCAL=ppcz80;;
    *)         FPC_LOCAL=ppc$LOC_CPU_TARGET;;
  esac
  if [ -n "${FPC_LOCAL_SUFFIX:-}" ] ; then
    FPC_LOCAL=${FPC_LOCAL}${FPC_LOCAL_SUFFIX}
  fi
}

function list_used_binaries ()
{
  LOG=${LOGFILE_USED_BINARIES:-}
  if [ -f "$LOG" ] ; then
    log_file_list=`ls -1 ${LOGFILE_LIST} 2> /dev/null`
    if [ -n "$log_file_list" ] ; then
      used_binaries=`sed -n -e 's:^Executing "\([^ "]*\).*:\1:p' -e 's,.* \([^: ]*\): Command not found.*,\1,p' ${LOGFILE_LIST} | sort | uniq `
      for bin in $used_binaries ; do
        echo "> $bin --version" >> $LOG
        $bin --version < /dev/null  >> $LOG
      done
    fi
  fi
}

function clean_for_target ()
{
  # Distclean in rtl, packages and utils first
  echo "Running \"make $CLEAN_RULE in rtl, packages and utils first" > $LOGFILE_DISTCLEAN
  $MAKE $MAKEJOPT -C $rtldir $CLEAN_RULE CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL OPT="$OPT_LOCAL" $MAKEEXTRA >> $LOGFILE_DISTCLEAN 2>&1
  $MAKE $MAKEJOPT -C $packagesdir $CLEAN_RULE CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL OPT="$OPT_LOCAL" $MAKEEXTRA >> $LOGFILE_DISTCLEAN 2>&1
  $MAKE $MAKEJOPT -C $packagesdir $CLEAN_RULE CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL OPT="$OPT_LOCAL" $MAKEEXTRA >> $LOGFILE_DISTCLEAN 2>&1
  $MAKE $MAKEJOPT -C $utilsdir $CLEAN_RULE CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL OPT="$OPT_LOCAL" $MAKEEXTRA >> $LOGFILE_DISTCLEAN 2>&1
  $MAKE $MAKEJOPT -C $utilsdir $CLEAN_RULE CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL OPT="$OPT_LOCAL" $MAKEEXTRA >> $LOGFILE_DISTCLEAN 2>&1
}

######################################
## check_target function
## ARG1: target CPU
## ARG2: target OS
## ARG3: Additional OPT
## ARG4: Additional MAKE parameter
## ARG5: Extra suffix for log names
## allows to check different options
## for same CPU-OS pair.
######################################
function check_target ()
{
  BINUTILSPREFIX_LOCAL=
  ASSEMBLER_LOCAL=
  ASPROG_LOCAL=
  ASPROG=
  OPT=
  OPT_LOCAL=
  MAKEEXTRA=

  ## First argument: CPU_TARGET
  CPU_TARG_LOCAL=$1

  # mipseb and mips are just aliases
  if [ "X$CPU_TARG_LOCAL" == "Xmipseb" ] ; then
    CPU_TARG_LOCAL=mips
  fi

  # x86_6432 is not a separate CPU
  if [ "X$CPU_TARG_LOCAL" == "Xx86_6432" ] ; then
    CPU_TARG_LOCAL=x86_64
    is_6432=1
  else
    is_6432=0
  fi

  # Find the corresponding Free Pascal compiler
  set_fpc_local $CPU_TARG_LOCAL

  ## Second argument: OS_TARG_LOCAL
  OS_TARG_LOCAL=$2

  # system_x86_6432_linux needs to be translated into
  # CPU=x86_64 and OS=linux6432
  if [ $is_6432 -eq 1 ] ; then
    OS_TARG_LOCAL=${OS_TARG_LOCAL}6432
  fi
   
  # jvm-java and jvm-android have 32 suffix
  # in their system_CPU_OS names
  if [ "X$OS_TARG_LOCAL" == "Xandroid32" ] ; then
    OS_TARG_LOCAL=android
  fi
  if [ "X$OS_TARG_LOCAL" == "Xjava32" ] ; then
    OS_TARG_LOCAL=java
  fi

  # Third argument: optional extra OPT value
  # Always add -vx to get exact command line used when
  # calling GNU assembler/clang/java ...
  OPT_LOCAL="${3:-} -vx ${GLOBAL_OPT:-}"

  if [[ ("$NATIVE_OS" == "$OS_TARG_LOCAL") && ("$NATIVE_CPU" == "$CPU_TARG_LOCAL") ]] ; then
    echo "Adding NATIVE_OPT \"$NATIVE_OPT\""
    OPT_LOCAL="$OPT_LOCAL $NATIVE_OPT"
    IS_NATIVE=1
  else
    IS_NATIVE=0
  fi

  if [ -z "${FPCFPMAKE:-}" ] ; then
    export FPCFPMAKE="${NATIVE_FPCBIN}"
  fi
  # Fourth argument: Global extra MAKE parameter
  MAKEEXTRA="${4:-}"

  # Fifth argument: log file name suffix
  EXTRASUFFIX=${5:-}

  echo "Testing rtl for $CPU_TARG_LOCAL $OS_TARG_LOCAL, with OPT=\"$OPT_LOCAL\" and MAKEEXTRA=\"$MAKEEXTRA\""
  date "+%Y-%m-%d %H:%M:%S"

  # Check if same test has already been performed
  already_tested=`grep " $CPU_TARG_LOCAL-${OS_TARG_LOCAL}$EXTRASUFFIX," $LISTLOGFILE `
  if [ "X$already_tested" != "X" ] ; then
    echo "Already done" 
    return
  fi

  # Try to set BINUTILSPREFIX 
  if [ "X${BINUTILSPREFIX:-}X" == "XresetX" ] ; then
    BINUTILSPREFIX_LOCAL=
  elif [ "X${BINUTILSPREFIX:-}" == "X" ] ; then
    BINUTILSPREFIX_LOCAL=not_set
  fi
  # Reset BINUTILSPREFIX here, to avoid troybles with fpmake compilation
  BINUTILSPREFIX=

  if [ "$CPU_TARG_LOCAL" == "jvm" ] ; then
    ASSEMBLER=java
    # java is installed, no need for prefix
    BINUTILSPREFIX_LOCAL=
  # Darwin, iphonesim and ios targets use clang by default
  elif [[ ("$OS_TARG_LOCAL" == "darwin") || ("$OS_TARG_LOCAL" == "iphonesim") || ("$OS_TARG_LOCAL" == "ios")
          || (("$OS_TARG_LOCAL" == "win64") && ("$CPU_TARG_LOCAL" == "aarch64")) ]] ; then
    if [ "X${OPT_LOCAL//Aas/}" != "X$OPT_LOCAL" ] ; then
      ASSEMBLER=as
    else
      # clang does not need a prefix, as it is multi-platform
      ASSEMBLER=clang
      if [ $SKIP_CLANG -eq 1 ] ; then
        echo "clang too old or not found, skipping"
        skipped_count=`expr $skipped_count + 1 `
        skipped_list="$skipped_list $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}"
        lecho "Skip: Not testing $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" clang not found or too old"
        return
      fi
      # Use symbolic links to clang with CPU-OS- prefixes
      # instead of resetting BINUTILSPREFIX=
    fi
  elif [[ ( "$CPU_TARG_LOCAL" == "i8086" ) || ( "X${OPT_LOCAL/-Anasm/}" != "X$OPT_LOCAL" ) ]] ; then
    ASSEMBLER=nasm
  elif [[ ( "X${OPT_LOCAL//-Avasm/}" != "X$OPT_LOCAL" ) || ( "$OS_TARG_LOCAL" == "sinclairql"  ) ]] ; then
    # -Avasm can be used for arm, m68k or z80 vasm assembler 
    ASSEMBLER=vasm${CPU_TARG_LOCAL}_std
  elif [[ ("$OS_TARG_LOCAL" == "win64") && ("$CPU_TARG_LOCAL" == "aarch64") ]] ; then
    # aarch64-win64 uses clang
    ASSEMBLER=clang
  elif [[ (("$OS_TARG_LOCAL" == "macos") || ("$OS_TARG_LOCAL" == "macosclassic")) && ("$CPU_TARG_LOCAL" == "powerpc") ]] ; then
    ASSEMBLER=PPCAsm
  elif [ "$OS_TARG_LOCAL" == "watcom" ] ; then
    ASSEMBLER=wasm
  elif [ "$CPU_TARG_LOCAL" == "z80" ] ; then
    if [ "X${OPT_LOCAL//-Az80asm/}" != "X$OPT_LOCAL" ] ; then
      # -Avasm can be used for arm, m68k or z80 vasm assembler 
      ASSEMBLER=z80asm
    elif [ "X${OPT_LOCAL//-Avasm/}" != "X$OPT_LOCAL" ] ; then
      # -Avasm can be used for arm, m68k or z80 vasm assembler 
      ASSEMBLER=z80vasm_std
    else
      ASSEMBLER=sdasz80
    fi
  else
    ASSEMBLER=as
  fi

  target_as=$ASSEMBLER

  if [ "X$BINUTILSPREFIX_LOCAL" == "Xnot_set" ] ; then
     TRY_BINUTILSPREFIX=${CPU_TARG_LOCAL}-${OS_TARG_LOCAL}-
     # Android has different binutilsprefix defaults
     if [ "${OS_TARG_LOCAL}" == "android" ] ; then
       if [ "${CPU_TARG_LOCAL}" == "aarch64" ] ; then
         TRY_BINUTILSPREFIX='aarch64-linux-android-'
         if [ -n "${AARCH64_ANDROID_ROOT:-}" ] ; then
           OPT_LOCAL="$OPT_LOCAL -k--sysroot=$AARCH64_ANDROID_ROOT -Fl$AARCH64_ANDROID_ROOT"
         fi
       elif [ "${CPU_TARG_LOCAL}" == "arm" ] ; then
         TRY_BINUTILSPREFIX='arm-linux-androideabi-'
         if [ -n "${ARM_ANDROID_ROOT:-}" ] ; then
           OPT_LOCAL="$OPT_LOCAL -k--sysroot=$ARM_ANDROID_ROOT -Fl$ARM_ANDROID_ROOT"
         fi
       elif [ "${CPU_TARG_LOCAL}" == "i386" ] ; then
         TRY_BINUTILSPREFIX='i686-linux-android-'
         if [ -n "${I386_ANDROID_ROOT:-}" ] ; then
           OPT_LOCAL="$OPT_LOCAL -k--sysroot=$I386_ANDROID_ROOT -Fl$I386_ANDROID_ROOT"
         fi
       elif [ "${CPU_TARG_LOCAL}" == "mipsel" ] ; then
         TRY_BINUTILSPREFIX='mipsel-linux-android-'
         if [ -n "${MIPSEL_ANDROID_ROOT:-}" ] ; then
           OPT_LOCAL="$OPT_LOCAL -k--sysroot=$MIPSEL_ANDROID_ROOT -Fl$MIPSEL_ANDROID_ROOT"
         fi
       elif [ "${CPU_TARG_LOCAL}" == "x86_64" ] ; then
         TRY_BINUTILSPREFIX='x86_64-linux-android-'
         if [ -n "${X86_64_ANDROID_ROOT:-}" ] ; then
           OPT_LOCAL="$OPT_LOCAL -k--sysroot=$X86_64_ANDROID_ROOT -Fl$X86_64_ANDROID_ROOT"
         fi
       fi
    fi

    target_as=`which ${TRY_BINUTILSPREFIX}${ASSEMBLER}`
    if [ -f "$target_as" ] ; then
      BINUTILSPREFIX_LOCAL=${TRY_BINUTILSPREFIX}
    else
      BINUTILSPREFIX_LOCAL=dummy-
      assembler_version="Dummy assembler"
      target_as=`which ${BINUTILSPREFIX_LOCAL}${ASSEMBLER}`
      if [ ! -f "$target_as" ] ; then
        echo "No ${BINUTILSPREFIX_LOCAL}${ASSEMBLER} found, skipping"
        skipped_count=`expr $skipped_count + 1 `
        skipped_list="$skipped_list $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}"
        lecho "Skip: Not testing $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" ${TRY_BINUTILSPREFIX}${ASSEMBLER} not found and no dummy"
        return
      fi
      dummy_count=`expr $dummy_count + 1 `
      dummy_list="$dummy_list $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}"
    fi
  else
    target_as=`which $target_as`
  fi

  if [ ! -f "$target_as" ] ; then
    echo "No ${BINUTILSPREFIX_LOCAL}${ASSEMBLER} found, skipping"
    lecho "Skip: Not testing $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" ${BINUTILSPREFIX_LOCAL}${ASSEMBLER} not found"
    skipped_count=`expr $skipped_count + 1 `
    skipped_list="$skipped_list $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}"
    return
  fi

  if [ "$ASSEMBLER" == "nasm" ] ; then
    ASSEMBLER_VER_OPT=-v
    ASSEMBLER_VER_REGEXPR="version"
  elif [ "$ASSEMBLER" == "clang" ] ; then
    ASSEMBLER_VER_OPT=--version
    ASSEMBLER_VER_REGEXPR="clang"
  elif [ "$ASSEMBLER" == "vasmm68k_std" ] ; then
    ASSEMBLER_VER_OPT=--version
    ASSEMBLER_VER_REGEXPR="vasm"
  elif [ "$ASSEMBLER" == "vasmz80_std" ] ; then
    ASSEMBLER_VER_OPT=--version
    ASSEMBLER_VER_REGEXPR="vasm"
  elif [ "$ASSEMBLER" == "sdasz80" ] ; then
    ASSEMBLER_VER_OPT=--version
    ASSEMBLER_VER_REGEXPR="sdas Assembler"
  elif [ "$ASSEMBLER" == "z80asm" ] ; then
    ASSEMBLER_VER_OPT=--version
    ASSEMBLER_VER_REGEXPR="Z80 assembler"
  elif [ "$ASSEMBLER" == "java" ] ; then
    ASSEMBLER_VER_OPT=-version
    ASSEMBLER_VER_REGEXPR="version"
  else
    ASSEMBLER_VER_OPT=--version
    ASSEMBLER_VER_REGEXPR="gnu assembler"
  fi
  if [ "X$BINUTILSPREFIX" != "Xdummy-" ] ; then
    # Recent java seems to output version to stderr, so redirect it to stdout
    assembler_version=` $target_as $ASSEMBLER_VER_OPT < /dev/null 2>&1 | grep -i "$ASSEMBLER_VER_REGEXPR" | head -1 `
  fi

  export ASTARGET=""
  if [ -n "${RECOMPILE_COMPILER_OPT}" ] ; then
    LOGFILE_RECOMPILE=${LOGPREFIX}-recompile-${CPU_TARG_LOCAL}-${OS_TARG_LOCAL}${EXTRASUFFIX}.txt
    # First recompile rtl
    make -C compiler rtlclean rtl OPT="-n -gl" > $LOGFILE_RECOMPILE 2>&1
    res=$?
    if [ $res -eq 0 ] ; then
      # Now recompile compiler, using CPC_TARGET, so that clean removes the old stuff
      make -C compiler clean all CPC_TARGET=$CPU_TARG_LOCAL PPC_TARGET=$CPU_TARG_LOCAL OPT="-n -gl $RECOMPILE_COMPILER_OPT" >> $LOGFILE_RECOMPILE 2>&1
      res=$?
    fi
    if [ $res -ne 0 ] ; then
      lecho "Skip: Not testing $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$RECOMPILE_COMPILER_OPT\" ${FPC_LOCAL} recompilation failed, res=$res"
      skipped_count=`expr $skipped_count + 1 `
      skipped_list="$skipped_list $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}"
      return
    fi
    fpc_local_exe=`pwd`/compiler/$FPC_LOCAL
    if [ -n "$RECOMPILE_INSTALL_NAME" ] ; then
      cp -fp $fpc_local_exe $LOCAL_INSTALL_PREFIX/bin/$RECOMPILE_INSTALL_NAME
    fi
    if [ -f ./packages/fpmake ] ; then
      rm -f ./packages/fpmake
    fi
    if [ -f ./utils/fpmake ] ; then
      rm -f ./utils/fpmake
    fi
    if [ $use_clean -eq 1 ] ; then
      echo "Re-compiling native rtl to allow for fpmake compilation"
      $MAKE $MAKEJOPT -C rtl FPC=$NATIVE_FPCBIN OPT="-n -g $NATIVE_OPT" ASTARGET= BINUTILSPREFIX=$NATIVE_BINUTILSPREFIX > $LOGFILE_NATIVE_RTL 2>&1
      res=$?
      if [ $res -ne 0 ] ; then
        echo "Re-compiling native rtl to allow for fpmake compilation failed, res=$res"
      fi
      echo "Re-compiling packages to allow for fpmake compilation"
      $MAKE $MAKEJOPT -C packages all FPC=$NATIVE_FPCBIN OPT="-n -g $NATIVE_OPT" ASTARGET= BINUTILSPREFIX=$NATIVE_BINUTILSPREFIX >> $LOGFILE_NATIVE_RTL 2>&1
      res=$?
      if [ $res -ne 0 ] ; then
        echo "Re-compiling packages to allow for fpmake compilation failed, res=$res"
      fi
    fi
  else
    fpc_local_exe=`which $FPC_LOCAL 2> /dev/null `
  fi
  export ASTARGET="${CROSSASTARGET:-}"

  if [ -z "${fpc_local_exe}" ] ; then
    lecho "Skip: Not testing $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" ${FPC_LOCAL} not found"
    skipped_count=`expr $skipped_count + 1 `
    skipped_list="$skipped_list $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}"
    return
  fi
  if [ ! -x "${fpc_local_exe}" ] ; then
    lecho "Skip: Not testing $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" ${FPC_LOCAL} not executable"
    skipped_count=`expr $skipped_count + 1 `
    skipped_list="$skipped_list $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}"
    return
  fi
  CROSS_VERSION=`$fpc_local_exe -iV` 
  if [ "$FPCVERSION" != "$CROSS_VERSION" ] ; then
    lecho "Skip: Not testing $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, Version from $fpc_local_exe binary is $CROSS_VERSION, $FPCVERSION was expected"
    skipped_count=`expr $skipped_count + 1 `
    skipped_list="$skipped_list $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}"
    return
  fi
  CROSS_DATE=`$fpc_local_exe -iD` 
  if [ "$start_system_date" != "$CROSS_DATE" ] ; then
    fpc_local_file_age=$(fileage $fpc_local_exe)
    if [ $fpc_local_file_age -eq 0 ] ; then
      lecho "Note: start script date is different from date returned by $fpc_local_exe -iD, but fileage=$fpc_local_file_age, so this is simply timezone issue"
    else
      lecho "Note: start script date $start_system_date is different from $CROSS_DATE, returned by $fpc_local_exe -iD, fileage=$fpc_local_file_age"
    fi
    if [ $fpc_local_file_age -lt 2 ] ; then
      lecho "Note: using $fpc_local_exe, despite date difference"
    else
      lecho "Skip: Not testing $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, Date from $fpc_local_exe binary is $CROSS_DATE, start script date is $start_system_date"
      skipped_count=`expr $skipped_count + 1 `
      skipped_list="$skipped_list $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}"
      return
    fi
  fi


  # use explicit compiler location
  FPC_LOCAL=$fpc_local_exe

  extra_text="$assembler_version"

  if [ $listed -eq 0 ] ; then
    extra_text="$extra_text, not listed in $FPC_LOCAL -h"
  fi

  if [ -d rtl/$OS_TARG_LOCAL ] ; then
    # Do not try to go directly into rtl/$OS_TARG_LOCAL,
    # This is wrong at least for jvm android
    rtldir=rtl
  else
    rtldir=rtl
    extra_text="$extra_text no rtl/$OS_TARG_LOCAL found"
  fi

  if [ -n "${ASPROG_LOCAL:-}" ] ; then
    export ASPROG="$ASPROG_LOCAL"
  fi

  if [ "X$extra_text" != "X" ] ; then
    extra_text="($extra_text)"
  fi
  packagesdir=packages
  utilsdir=utils

  is_64=0
  case $CPU_TARG_LOCAL in
    aarch64|powerpc64|riscv64|sparc64|x86_64) is_64=1;;
  esac


  CROSSOPT="$OPT_LOCAL"
  CROSSOPT_ORIG="$CROSSOPT"

  if [ -d "$global_sysroot/${CPU_TARG_LOCAL}-${OS_TARG_LOCAL}" ] ; then
    sysroot=$global_sysroot/${CPU_TARG_LOCAL}-${OS_TARG_LOCAL}
    dir_found=0
    add_dir "crt1.o"
    add_dir "crti.o"
    add_dir "crtbegin.o"
    add_dir "libc.a"
    add_dir "libc.so"
    add_dir -regex "'.*/libc\.so\..*'"
    add_dir "ld.so"
    add_dir -regex "'.*/ld\.so\.[0-9.]*'"
    if [ "${OS_TARG_LOCAL}" == "linux" ] ; then
      add_dir -regex "'.*/ld-linux.*\.so\.*[0-9.]*'"
    fi
    if [ "${OS_TARG_LOCAL}" == "beos" ] ; then
      add_dir "libroot.so"
      add_dir "libnetwork.so"
    fi
    if [ "${OS_TARG_LOCAL}" == "haiku" ] ; then
      add_dir "libroot.so"
      add_dir "libnetwork.so"
    fi
    if [ "${OS_TARG_LOCAL}" == "aix" ] ; then
      add_dir "libm.a"
      add_dir "libbsd.a"
      if [ $is_64 -eq 1 ] ; then
        add_dir "crt*_64.o"
      fi
    fi
    if [ $dir_found -eq 1 ] ; then
      echo "Trying to build ${CPU_TARG_LOCAL}-${OS_TARG_LOCAL}${EXTRASUFFIX} using BUILDFULLNATIVE=1"
      export BUILDFULLNATIVE=1
      export buildfullnative_text="with BUILDFULLNATIVE=1"
      OPT_LOCAL="-XR$sysroot $CROSSOPT -Xd -k--sysroot=$sysroot"
      # -Xr is not supported for AIX OS
      if [ "${OS_TARG_LOCAL}" != "aix" ] ; then
        OPT_LOCAL="$OPT_LOCAL -Xr$sysroot"
      fi
      echo "OPT_LOCAL set to \"$OPT_LOCAL\""
    else
      export BUILDFULLNATIVE=
      export buildfullnative_text=""
    fi
  else
    export BUILDFULLNATIVE=
    export buildfullnative_text=""
  fi

  if [ $test_add_dir -eq 1 ] ; then
    echo "test_add_dir: ${CPU_TARG_LOCAL}-${OS_TARG_LOCAL}${EXTRASUFFIX}: OPT_LOCAL=\"$OPT_LOCAL\""
    return
  fi
  LOGFILE_DISTCLEAN=${LOGPREFIX}-distclean-${CPU_TARG_LOCAL}-${OS_TARG_LOCAL}${EXTRASUFFIX}.txt
  LOGFILE_RTL=${LOGPREFIX}-rtl-${CPU_TARG_LOCAL}-${OS_TARG_LOCAL}${EXTRASUFFIX}.txt
  LOGFILE_NATIVE_RTL=${LOGPREFIX}-native-rtl-fpmake-${CPU_TARG_LOCAL}-${OS_TARG_LOCAL}${EXTRASUFFIX}.txt
  LOGFILE_RTL_2=${LOGPREFIX}-rtl2-${CPU_TARG_LOCAL}-${OS_TARG_LOCAL}${EXTRASUFFIX}.txt
  LOGFILE_RTL_PPU=${LOGPREFIX}-rtl-ppudump-${CPU_TARG_LOCAL}-${OS_TARG_LOCAL}${EXTRASUFFIX}.txt
  LOGFILE_PACKAGES=${LOGPREFIX}-packages-${CPU_TARG_LOCAL}-${OS_TARG_LOCAL}${EXTRASUFFIX}.txt
  LOGFILE_PACKAGES_PPU=${LOGPREFIX}-packages-ppudump-${CPU_TARG_LOCAL}-${OS_TARG_LOCAL}${EXTRASUFFIX}.txt
  LOGFILE_UTILS=${LOGPREFIX}-utils-${CPU_TARG_LOCAL}-${OS_TARG_LOCAL}${EXTRASUFFIX}.txt
  LOGFILE_UTILS_PPU=${LOGPREFIX}-utils-ppudump-${CPU_TARG_LOCAL}-${OS_TARG_LOCAL}${EXTRASUFFIX}.txt
  LOGFILE_USED_BINARIES=${LOGPREFIX}-used-binaries-${CPU_TARG_LOCAL}-${OS_TARG_LOCAL}${EXTRASUFFIX}.txt

  LOGFILE_LIST="$LOGFILE_RTL $LOGFILE_RTL_2 $LOGFILE_RTL_PPU $LOGFILE_PACKAGES $LOGFILE_PACKAGES_PPU $LOGFILE_UTILS $LOGFILE_UTILS_PPU"

  previous_target_failures=`sed -n "s|^Failure:.*See .*\(${LOGPREFIX}.*-${CPU_TARG_LOCAL}-${OS_TARG_LOCAL}${EXTRASUFFIX}.txt\).*|\1|p" ${PREVLISTLOGFILE} `

  step_ok_count=0
  clean_for_target 
  echo "$MAKE $MAKEJOPT -C $rtldir info CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL OPT=\"$OPT_LOCAL\" $MAKEEXTRA" > $LOGFILE_USED_BINARIES
  $MAKE $MAKEJOPT -C $rtldir info CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL OPT="$OPT_LOCAL" $MAKEEXTRA >> $LOGFILE_USED_BINARIES 2>&1
  echo "$MAKE $MAKEJOPT -C $rtldir all CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL OPT=\"$OPT_LOCAL\" $MAKEEXTRA" > $LOGFILE_RTL
  $MAKE $MAKEJOPT -C $rtldir all CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL OPT="$OPT_LOCAL" $MAKEEXTRA >> $LOGFILE_RTL 2>&1
  res=$?
  if [ $res -ne 0 ] ; then
    # Check for "The Makefile doesn't support target $CPU_TARG_LOCAL-$OS_TARG_LOCAL, please run fpcmake first.  Stop" pattern
    fpcmake_pattern=`grep "The Makefile doesn't support target $CPU_TARG_LOCAL-$OS_TARG_LOCAL, please run fpcmake first."  $LOGFILE_RTL 2> /dev/null`
    unsupported_target_pattern=`grep "Error: Illegal parameter: -T$OS_TARG_LOCAL" $LOGFILE_RTL 2> /dev/null `
    if [ -n "$fpcmake_pattern" ] ; then
      run_fpcmake_first_failure=`expr $run_fpcmake_first_failure + 1 `
      run_fpcmake_first_list="$run_fpcmake_first_list $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}"
      lecho "Failure: fpcmake does not support $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL, res=$res $extra_text"
      lecho "Failure: See $LOGFILE_RTL for details"
    elif [ -n "$unsupported_target_pattern" ] ; then
      os_target_not_supported_failure=`expr $os_target_not_supported_failure + 1 `
      os_target_not_supported_list="$os_target_not_supported_list $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}"
      lecho "Failure: OS Target $OS_TARG_LOCAL not supported for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL, res=$res $extra_text"
      lecho "Failure: See $LOGFILE_RTL for details"
    else
      rtl_1_failure=`expr $rtl_1_failure + 1 `
      rtl_1_list="$rtl_1_list $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}"
      lecho "Failure: Testing rtl for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL, res=$res $extra_text"
      lecho "Failure: See $LOGFILE_RTL for details"
    fi
    list_used_binaries
    if [ $CLEAN_AFTER -eq 1 ] ; then
      clean_for_target
    fi
    return 1
  else
    let ++step_ok_count
  fi
  lecho "OK: Testing 1st $rtldir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text"
  echo "Re-running make should do nothing"
  MAKEEXTRA="$MAKEEXTRA INSTALL_PREFIX=$LOCAL_INSTALL_PREFIX"
  if [ $DO_FPC_RTL_INSTALL -eq 1 ] ; then
    rtl_make_target="all install"
  else
    rtl_make_target="all"
  fi
  echo "$MAKE -C $rtldir $rtl_make_target CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL OPT=\"$OPT_LOCAL\" $MAKEEXTRA" > $LOGFILE_RTL_2
  $MAKE -C $rtldir $rtl_make_target CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL OPT="$OPT_LOCAL" $MAKEEXTRA >> $LOGFILE_RTL_2 2>&1
  res=$?
  if [ $res -ne 0 ] ; then
    rtl_2_failure=`expr $rtl_2_failure + 1 `
    rtl_2_list="$rtl_2_list $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}"
    lecho "Failure: Rerunning make $rtldir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL, res=$res $extra_text"
    lecho "Failure: See $LOGFILE_RTL_2 for details"
    list_used_binaries
    if [ $CLEAN_AFTER -eq 1 ] ; then
      clean_for_target
    fi
    return 2
  fi
  fpc_called=`grep -E "(^|[^=])$FPC_LOCAL" $LOGFILE_RTL_2 `
  if [ "X$fpc_called" != "X" ] ; then
    rtl_2_failure=`expr $rtl_2_failure + 1 `
    rtl_2_list="$rtl_2_list $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}"
    lecho "Failure: 2nd $rtldir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text, $FPC_LOCAL called again"
    lecho "Failure: See $LOGFILE_RTL_2 for details"
    list_used_binaries
    if [ $CLEAN_AFTER -eq 1 ] ; then
      clean_for_target
    fi
    return 2
  else
    let ++step_ok_count
  fi
  lecho "OK: Testing 2nd $rtldir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text"
  if [ $test_ppudump -eq 1 ] ; then
    echo "$MAKE $MAKEJOPT -C compiler rtlppulogs CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL OPT=\"$OPT_LOCAL\" $MAKEEXTRA" > $LOGFILE_RTL_PPU
    $MAKE $MAKEJOPT -C compiler rtlppulogs CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL OPT="$OPT_LOCAL" $MAKEEXTRA >> $LOGFILE_RTL_PPU 2>&1
    res=$?
    if [ $res -ne 0 ] ; then
      rtl_ppu_failure=`expr $rtl_ppu_failure + 1 `
      rtl_ppu_list="$rtl_ppu_list $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}"
      lecho "Failure: ppudump for $rtldir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text"
      lecho "Failure: See $LOGFILE_RTL_PPU for details"
    else
      lecho "OK: Testing ppudump of $rtldir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text"
      let ++step_ok_count
    fi
    LOGFILE_RTL_PPUNAME=`basename $LOGFILE_RTL_PPU`
    IS_HUGE=`find $LOGDIR -maxdepth 1 -name $LOGFILE_RTL_PPUNAME -size +1M`
    if [ ! -z "$IS_HUGE" ] ; then
      echo "$LOGFILE_RTL_PPU is huge: `wc -c $LOGFILE_RTL_PPU`"
      echo "Original $LOGFILE_RTL_PPU was huge: `wc -c $LOGFILE_RTL_PPU`" > ${LOGFILE_RTL_PPU}-tmp
      head -110 $LOGFILE_RTL_PPU >> ${LOGFILE_RTL_PPU}-tmp
      echo "%%%%% File size reduced %%%%"  >> ${LOGFILE_RTL_PPU}-tmp
      tail -110 $LOGFILE_RTL_PPU >> ${LOGFILE_RTL_PPU}-tmp
      rm -Rf $LOGFILE_RTL_PPU
      mv ${LOGFILE_RTL_PPU}-tmp ${LOGFILE_RTL_PPU}
    fi
  fi
  OPT_NAME=CROSSOPT
  if [ $IS_NATIVE -eq 1 ] ; then
    # For native test, we need to set OPT, not CROSSOPT
    OPT_NAME=OPT
  fi
  if [ $test_packages -eq 1 ] ; then
    if [ $use_clean -eq 0 ] ; then
      echo "Re-compiling native rtl to allow for fpmake compilation"
      $MAKE $MAKEJOPT -C rtl FPC=$NATIVE_FPCBIN OPT="-n -g $NATIVE_OPT" ASTARGET= BINUTILSPREFIX=$NATIVE_BINUTILSPREFIX > $LOGFILE_NATIVE_RTL 2>&1
      res=$?
      if [ $res -ne 0 ] ; then
        echo "Re-compiling native rtl to allow for fpmake compilation failed, res=$res"
      fi
      echo "Re-compiling packages/fpmkunit bootstrap to allow for fpmake compilation"
      $MAKE $MAKEJOPT -C packages/fpmkunit bootstrap FPC=$NATIVE_FPCBIN OPT="-n -g $NATIVE_OPT" ASTARGET= BINUTILSPREFIX=$NATIVE_BINUTILSPREFIX >> $LOGFILE_NATIVE_RTL 2>&1
      res=$?
      if [ $res -ne 0 ] ; then
        echo "Re-compiling packages/fpmkunit bootstrap to allow for fpmake compilation failed, res=$res"
      fi
    fi
    echo "Testing compilation in $packagesdir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with $OPT_NAME=\"$OPT_LOCAL\" $buildfullnative_text FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text"
    echo "Testing compilation in $packagesdir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with $OPT_NAME=\"$OPT_LOCAL\" $buildfullnative_text FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text" > $LOGFILE_PACKAGES
    $MAKE $MAKEJOPT -C $packagesdir all CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $OPT_NAME="$OPT_LOCAL" FPC=$FPC_LOCAL FPCMAKEOPT="$NATIVE_OPT" $MAKEEXTRA >> $LOGFILE_PACKAGES 2>&1
    res=$?
    if [ $res -ne 0 ] ; then
      if [ "$BUILDFULLNATIVE" == "1" ] ; then
        export BUILDFULLNATIVE=
	export buildfullnative_text=""
        echo "Testing second compilation in $packagesdir (without BUILDFULLNATIVE=1) for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with $OPT_NAME=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text"
        $MAKE $MAKEJOPT -C $packagesdir clean CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $OPT_NAME="$OPT_LOCAL" FPC=$FPC_LOCAL FPCMAKEOPT="$NATIVE_OPT" $MAKEEXTRA >> $LOGFILE_PACKAGES 2>&1
        if [ $use_clean -eq 0 ] ; then
          # Warning, we need to re-compile bootstrap in fmpkunit after that clean, otherwise compilation of fpmake in utils might fail
          echo "Re-compiling bootstrap in packages/fpmkunit for fpmake compilation in utils"
          $MAKE $MAKEJOPT -C packages/fpmkunit bootstrap FPC=$NATIVE_FPCBIN OPT="-n -g $NATIVE_OPT" ASTARGET= BINUTILSPREFIX=$NATIVE_BINUTILSPREFIX >> $LOGFILE_NATIVE_RTL 2>&1
        fi
        $MAKE $MAKEJOPT -C $packagesdir all CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $OPT_NAME="$OPT_LOCAL" FPC=$FPC_LOCAL FPCMAKEOPT="$NATIVE_OPT" $MAKEEXTRA >> $LOGFILE_PACKAGES 2>&1
        res=$?
      fi
    fi

    if [ $res -ne 0 ] ; then
      packages_failure=`expr $packages_failure + 1 `
      packages_list="$packages_list $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}"
      lecho "Failure: Testing $packagesdir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" $buildfullnative_text FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL, res=$res $extra_text"
      lecho "Failure: See $LOGFILE_PACKAGES for details"
      list_used_binaries
      if [ $CLEAN_AFTER -eq 1 ] ; then
        clean_for_target
      fi
      return 3
    fi
    lecho "OK: Testing 1st $packagesdir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" $buildfullnative_text FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text"
    if [[ ( ${DO_FPC_PACKAGES_INSTALL} -eq 1 ) || (( ${IS_NATIVE} -eq 1 ) && ( ${DO_FPC_RTL_INSTALL} -eq 1 )) ]] ; then
      echo "Testing installation in $packagesdir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with $OPT_NAME=\"$OPT_LOCAL\" $buildfullnative_text FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text"
      $MAKE $MAKEJOPT -C $packagesdir install CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $OPT_NAME="$OPT_LOCAL" FPC=$FPC_LOCAL FPCMAKEOPT="$NATIVE_OPT" $MAKEEXTRA >> $LOGFILE_PACKAGES 2>&1
    fi
    if [ $test_ppudump -eq 1 ] ; then
      echo "$MAKE $MAKEJOPT -C packages testppudump CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL OPT=\"$OPT_LOCAL\" $MAKEEXTRA" > $LOGFILE_PACKAGES_PPU
      $MAKE $MAKEJOPT -C packages testppudump CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL OPT="$OPT_LOCAL" $MAKEEXTRA >> $LOGFILE_PACKAGES_PPU 2>&1
      res=$?
      if [ $res -ne 0 ] ; then
        packages_ppu_failure=`expr $packages_ppu_failure + 1 `
        packages_ppu_list="$packages_ppu_list $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}"
        lecho "Failure: ppudump for $packagesdir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" $buildfullnative_text FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text"
        lecho "Failure: See $LOGFILE_PACKAGES_PPU for details"
      else
        lecho "OK: Testing ppudump of $packagesdir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" $buildfullnative_text FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text"
      fi
      LOGFILEPPUNAME=`basename $LOGFILE_PACKAGES_PPU`
      IS_HUGE=`find $LOGDIR -maxdepth 1 -name $LOGFILEPPUNAME -size +1M`
      if [ ! -z "$IS_HUGE" ] ; then
        echo "$LOGFILE_PACKAGES_PPU is huge: `wc -c $LOGFILE_PACKAGES_PPU`"
        echo "Original $LOGFILE_PACKAGES_PPU was huge: `wc -c $LOGFILE_PACKAGES_PPU`" > ${LOGFILE_PACKAGES_PPU}-tmp
        head -110 $LOGFILE_PACKAGES_PPU >> ${LOGFILE_PACKAGES_PPU}-tmp
        echo "%%%%% File size reduced %%%%"  >> ${LOGFILE_PACKAGES_PPU}-tmp
        tail -110 $LOGFILE_PACKAGES_PPU >> ${LOGFILE_PACKAGES_PPU}-tmp
        rm -Rf $LOGFILE_PACKAGES_PPU
        mv ${LOGFILE_PACKAGES_PPU}-tmp ${LOGFILE_PACKAGES_PPU}
      fi
    fi
  fi
  if [ $test_utils -eq 1 ] ; then
    echo "Testing compilation in $utilsdir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with $OPT_NAME=\"$OPT_LOCAL\" $buildfullnative_text FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text"
    echo "Testing compilation in $utilsdir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with $OPT_NAME=\"$OPT_LOCAL\" $buildfullnative_text FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text" > $LOGFILE_UTILS
    $MAKE $MAKEJOPT -C $utilsdir all CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $OPT_NAME="$OPT_LOCAL" FPC=$FPC_LOCAL FPCMAKEOPT="$NATIVE_OPT" $MAKEEXTRA >> $LOGFILE_UTILS 2>&1
    res=$?
    if [ $res -ne 0 ] ; then
      if [ "$BUILDFULLNATIVE" == "1" ] ; then
        export BUILDFULLNATIVE=
        export buildfullnative_text=""
        echo "Testing second compilation in $utilsdir (without BUILDFULLNATIVE=1) for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with $OPT_NAME=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text"
        $MAKE $MAKEJOPT -C $utilsdir clean CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $OPT_NAME="$OPT_LOCAL" FPC=$FPC_LOCAL FPCMAKEOPT="$NATIVE_OPT" $MAKEEXTRA >> $LOGFILE_UTILS 2>&1
        $MAKE $MAKEJOPT -C $utilsdir all CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $OPT_NAME="$OPT_LOCAL" FPC=$FPC_LOCAL FPCMAKEOPT="$NATIVE_OPT" $MAKEEXTRA >> $LOGFILE_UTILS 2>&1
        res=$?
      fi
    fi

    if [ $res -ne 0 ] ; then
      utils_failure=`expr $utils_failure + 1 `
      utils_list="$utils_list $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}"
      lecho "Failure: Testing $utilsdir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" $buildfullnative_text FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL, res=$res $extra_text"
      lecho "Failure: See $LOGFILE_UTILS for details"
      list_used_binaries
      if [ $CLEAN_AFTER -eq 1 ] ; then
        clean_for_target
      fi
      return 3
    fi
    lecho "OK: Testing 1st $utilsdir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" $buildfullnative_text FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text"
    if [ "${DO_FPC_UTILS_INSTALL}" == "1" ] ; then
      echo "Testing installation in $utilsdir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with $OPT_NAME=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text"
      $MAKE $MAKEJOPT -C $utilsdir install CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $OPT_NAME="$OPT_LOCAL" FPC=$FPC_LOCAL FPCMAKEOPT="$NATIVE_OPT" $MAKEEXTRA >> $LOGFILE_UTILS 2>&1
    fi
    if [ $test_utils_ppudump -eq 1 ] ; then
      echo "$MAKE $MAKEJOPT -C $utilsdir testppudump CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL OPT=\"$OPT_LOCAL\" $MAKEEXTRA" > $LOGFILE_UTILS_PPU
      $MAKE $MAKEJOPT -C $utilsdir testppudump CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL OPT="$OPT_LOCAL" $MAKEEXTRA >> $LOGFILE_UTILS_PPU 2>&1
      res=$?
      if [ $res -ne 0 ] ; then
        utils_ppu_failure=`expr $utils_ppu_failure + 1 `
        utils_ppu_list="$utils_ppu_list $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}"
        lecho "Failure: ppudump for $utilsdir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" $buildfullnative_text FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text"
        lecho "Failure: See $LOGFILE_UTILS_PPU for details"
      else
        lecho "OK: Testing ppudump of $utilsdir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" $buildfullnative_text FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text"
      fi
      LOGFILEPPUNAME=`basename $LOGFILE_UTILS_PPU`
      IS_HUGE=`find $LOGDIR -maxdepth 1 -name $LOGFILEPPUNAME -size +1M`
      if [ ! -z "$IS_HUGE" ] ; then
        echo "$LOGFILE_UTILS_PPU is huge: `wc -c $LOGFILE_UTILS_PPU`"
        echo "Original $LOGFILE_UTILS_PPU was huge: `wc -c $LOGFILE_UTILS_PPU`" > ${LOGFILE_UTILS_PPU}-tmp
        head -110 $LOGFILE_UTILS_PPU >> ${LOGFILE_UTILS_PPU}-tmp
        echo "%%%%% File size reduced %%%%"  >> ${LOGFILE_UTILS_PPU}-tmp
        tail -110 $LOGFILE_UTILS_PPU >> ${LOGFILE_UTILS_PPU}-tmp
        rm -Rf $LOGFILE_UTILS_PPU
        mv ${LOGFILE_UTILS_PPU}-tmp ${LOGFILE_UTILS_PPU}
      fi
    fi
    if [ $CLEAN_AFTER -eq 1 ] ; then
      clean_for_target
    fi
  fi
  date "+%Y-%m-%d %H:%M:%S"
  BINUTILSPREFIX_LOCAL=
  ASSEMBLER_LOCAL=
  ASPROG_LOCAL=
  ASPROG=
  OPT=
  OPT_LOCAL=
  MAKEEXTRA=
  LOGFILE_USED_BINARIES=
}

function list_os ()
{
  CPU_TARG_LOCAL=$1
  set_fpc_local $CPU_TARG_LOCAL
  list_os_OPT="${2:-}"
  list_os_MAKEEXTRA="${3-}"
  fpc_local_exe=`which $FPC_LOCAL 2> /dev/null `
  if [ -z "$fpc_local_exe" ] ; then
    echo "No $FPC_LOCAL found"
    return
  fi
  fpc_version_local=`$FPC_LOCAL -iV`
  if [ "$FPCVERSION" != "$fpc_version_local" ] ; then
    echo "Warning: $FPC_LOCAL binary reports version $fpc_version_local, while $FPCVERSION is expected"
  fi

  fpc_fullversion_local=`$FPC_LOCAL -iW`
  echo "$FPC_LOCAL -iW reports full version $fpc_fullversion_local"

  os_list=`$FPC_LOCAL -h | sed -n "s:^[ \t]*-T\([a-zA-Z_][a-zA-Z_0-9]*\).*:\1:p" `
  for os in ${os_list} ; do
    echo "check_target $CPU_TARG_LOCAL ${os,,} \"$list_os_OPT\" \"$list_os_MAKEEXTRA\""
    check_target $CPU_TARG_LOCAL ${os,,} "$list_os_OPT" "$list_os_MAKEEXTRA"
  done
}

if [ "X$selected_cpu" != "X" ] ; then
  echo "Testing single configuration $0 $*"
  echo "check_target cpu=\"$selected_cpu\" os=\"$selected_os\" opts=\"${3:-}\" make args=\"${4:-}\" suffix=\"${5:-}\""
  check_target "$selected_cpu" "$selected_os" "${3:-}" "${4:-}" "${5:-}"
  rm_lockfile
  exit
fi

(

# Remove all existing logs, but not failed ones
rm -Rf ${LOGPREFIX}*.txt

# List separately cases for which special parameters are required
check_target arm embedded "-n" "SUBARCH=armv4t"
check_target avr embedded "-n" "SUBARCH=avr25" "-avr25"
check_target avr embedded "-n" "SUBARCH=avr4" "-avr4"
check_target avr embedded "-n" "SUBARCH=avr6"
check_target mipsel embedded "-n" "SUBARCH=pic32mx"
check_target riscv32 embedded "-n" "SUBARCH=rv32imac"
# check_target xtensa embedded "-n" "SUBARCH=lx6" "-lx6"
check_target xtensa embedded "-n" "SUBARCH=lx106"


# Known to be broken, disabled
# check_target i386 darwin "-n -Aas-darwin" "" "-with-darwin-as"
# check_target x86_64 darwin "-n -Aas-darwin" "" "-gnu-as"
# Default run using clang (unique executable)
export BINUTILSPREFIX=reset
check_target i386 darwin "-n -ao--target=i686-apple-darwin-macho" "" "-bare-clang"
export BINUTILSPREFIX=reset
check_target x86_64 darwin "-n -ao--target=x86_64-apple-darwin-macho" "" "-bare-clang"
# Default run using CPU-OS-clang
check_target i386 darwin "-n" 
check_target x86_64 darwin "-n"
# powerpc (32 and 64 bit) ofr Darwin will be removed from clang
# check_target powerpc darwin "-n -Aclang" "" "-with-clang"
# check_target powerpc64 darwin "-n -Aclang" "" "-with-clang"

check_target powerpc darwin "-n -Aas-darwin"
check_target powerpc64 darwin "-n -Aas-darwin"

# arm linux

export RECOMPILE_COMPILER_OPT="-dFPC_ARMEL"
export RECOMPILE_INSTALL_NAME=ppcarmel
export CROSSASTARGET="-march=armv6 -meabi=5 -mfpu=softvfp "
check_target arm linux "-n -gl -Cparmv6 -Caeabi -Cfsoft" "" "-armeabi"
export CROSSASTARGET=
export RECOMPILE_INSTALL_NAME=
export RECOMPILE_COMPILER_OPT=

export RECOMPILE_COMPILER_OPT="-dFPC_ARMEB"
export RECOMPILE_INSTALL_NAME=ppcarmeb
export CROSSASTARGET="-march=armv5 -meabi=5 -mfpu=softvfp "
check_target arm linux "-n -gl -Cparmv6 -Caarmeb -Cfsoft" "" "-armeb"
export CROSSASTARGET=
export RECOMPILE_INSTALL_NAME=
export RECOMPILE_COMPILER_OPT=

export RECOMPILE_COMPILER_OPT="-dFPC_OARM"
export RECOMPILE_INSTALL_NAME=ppcoarm
export CROSSASTARGET="-march=armv5 -mfpu=softvfp "
check_target arm linux "-n -gl" "" "-arm_softvfp"
export CROSSASTARGET=
export RECOMPILE_INSTALL_NAME=
export RECOMPILE_COMPILER_OPT=

export RECOMPILE_COMPILER_OPT="-dFPC_ARMHF"
export RECOMPILE_INSTALL_NAME=ppcarmhf
export CROSSASTARGET="-march=armv6 -mfpu=vfpv2 -mfloat-abi=hard"
check_target arm linux "-n -gl -CaEABIHF -CpARMv6 -CfVFPv2" "" "-arm_eabihf"
export CROSSASTARGET=
export RECOMPILE_INSTALL_NAME=
export RECOMPILE_COMPILER_OPT=

# msdos OS
check_target i8086 msdos "-n -CX -XX -Wmtiny" "" "-tiny"
check_target i8086 msdos "-n -CX -XX -Wmmedium" "" "-medium"
check_target i8086 msdos "-n -CX -XX -Wmcompact" "" "-compact"
check_target i8086 msdos "-n -CX -XX -Wmlarge" "" "-large"
check_target i8086 msdos "-n -CX -XX -Wmhuge" "" "-huge"
# Use small as default memory model
check_target i8086 msdos "-n -CX -XX -Wmsmall"

# Win16 OS
check_target i8086 win16 "-n -CX -XX -Wmhuge"

# m68k 
export ASPROG_LOCAL=m68k-amiga-vasmm68k_std
check_target m68k amiga "-n -Avasm" "" "-vasm"
export ASPROG_LOCAL=m68k-atari-vasmm68k_std 
check_target m68k atari "-n -Avasm"
## Disabled vasm support for m68k-linux removed
## in commit #42597 as vasm does not support .hidden directive
## now required for linux assembler
## export ASPROG_LOCAL=m68k-linux-vasmm68k_std
## check_target m68k linux "-n -Avasm" "" "-vasm"
export ASPROG_LOCAL=
## Disabled: -Avasm is not supported for macos
## check_target m68k macos "-n -Avasm" "" "-vasm"
# palmos requires -CX -XX otherwise section overflow errors appear
check_target m68k palmos "-n -CX -XX"

# FreeRTOS 

check_target xtensa freertos "-n" "SUBARCH=lx6" "-lx6"
check_target xtensa freertos "-n" "SUBARCH=lx106"
check_target arm freertos "-n" "SUBARCH=armv6m"

# z80 cpu, also test alternative assemblers
# z80asm does not seem to support relocations
# export ASPROG_LOCAL=z80asm
# check_target z80 embedded "-n -Az80asm -CX -XX -Cfsoft" "" "-z80asm"
# check_target z80 zxspectrum "-n -Az80asm -CX -XX -Cfsoft" "" "-z80asm"
# check_target z80 msxdos "-n -Az80asm -CX -XX -Cfsoft" "" "-z80asm"
export ASPROG_LOCAL=vasmz80_std
check_target z80 embedded "-n -Avasm -CX -XX -XV -Cfsoft" "" "-vasmz80"
check_target z80 zxspectrum "-n -Avasm -CX -XX -XV -Cfsoft" "" "-vasmz80"
check_target z80 msxdos "-n -Avasm -CX -XX -XV -Cfsoft" "" "-vasmz80"
export ASPROG_LOCAL=
# Test with -Cfsoft option
check_target z80 embedded "-n -CX -XX -Cfsoft" "" "-Cfsoft"
check_target z80 zxspectrum "-n -CX -XX -Cfsoft" "" "-Cfsoft"
check_target z80 msxdos "-n -CX -XX -Cfsoft" "" "-Cfsoft"

# LLVM compiler trials
if [ $DO_CHECK_LLVM -eq 1 ] ; then
  # List comes from fpcsrc/compiler/Makefile.fpc
  llvm_cpu_list="aarch64 arm x86_64"
  llvm_os_list_aarch64="linux"
  llvm_os_list_arm="linux"
  llvm_os_list_x86_64="darwin linux"
  for cpu in $llvm_cpu_list ; do
    set_fpc_local $cpu
    LLVM_FPC=${FPC_LOCAL}-llvm
    if [ "$cpu" == "arm" ] ; then
      LLVM_COMPILE_OPT="-n -gwl -dFPC_ARMHF"
    elif [ "$cpu" == "x86_64" ] ; then
      LLVM_COMPILE_OPT="-n -gwl -dFPC_USE_SOFTX80"
    else
      LLVM_COMPILE_OPT="-n -gwl"
    fi
    llvmlogfile=${LOGDIR}/llvm_${cpu}_compile.log
    echo "Starting compilation of compiler with LLVM=1 for $cpu" > $llvmlogfile
    ${MAKE} -C rtl clean >> $llvmlogfile 2>&1
    ${MAKE} -C compiler clean PPC_TARGET=${cpu} LLVM=1 >> $llvmlogfile 2>&1
    ${MAKE} -C rtl all OPT="$LLVM_COMPILE_OPT" >> $llvmlogfile 2>&1
    ${MAKE} -C compiler PPC_TARGET=${cpu} LLVM=1 OPT="$LLVM_COMPILE_OPT" >> $llvmlogfile 2>&1
    llvm_res=$?
    if [ $llvm_res -ne 0 ] ; then
      echo "Recompilation of LLVM version of compiler for $cpu failed, see details in $llvmlogfile" >> $llvmlogfile
      echo "Recompilation of LLVM version of compiler for $cpu failed, see details in $llvmlogfile"
    fi
    echo "cp ./compiler/${FPC_LOCAL} $HOME/pas/fpc-$FPCVERSION/bin/${LLVM_FPC}" >> $llvmlogfile
    cp ./compiler/${FPC_LOCAL} $HOME/pas/fpc-$FPCVERSION/bin/${LLVM_FPC}
    res=$?
    if [ $res -ne 0 ] ; then
      echo "Copying LLVM version of compiler for $cpu failed" >> $llvmlogfile
      echo "Copying LLVM version of compiler for $cpu failed"
    fi
    llvm_os_list_name=llvm_os_list_${cpu}
    if [ $SKIP_CLANG -eq 1 ] ; then
      echo "clang too old or not found, skipping all LLVM tests" >> $llvmlogfile
      echo "clang too old or not found, skipping all LLVM tests"
    else 
      for os in ${!llvm_os_list_name} ; do
        export FPC_LOCAL_SUFFIX=-llvm
        if [ "$cpu" == "arm" ] ; then
          if [ "$NATIVE_MACHINE" == "aarch64" ] ; then
            LLVM_OPT="-dARMHF -CaEABIHF -CpARMv7a -CfVFPv4"
          else
            LLVM_OPT="-dARMHF -CaEABIHF -CpARMv6 -CfVFPv2"
          fi
        else
          LLVM_OPT=""
        fi
        # We need to handle native case specially
        if [[ ( "$NATIVE_OS" == "$os" ) && ( "$NATIVE_CPU" == "$cpu" ) ]] ; then
          export FPCFPMAKE=${LLVM_FPC}
          export FPCFPMAKENEW=${LLVM_FPC}
        fi
        check_target $cpu $os "-n $LLVM_OPT" "LLVM=1" "-llvm"
        export FPC_LOCAL_SUFFIX=
        export FPCFPMAKE=
        export FPCFPMAKENEW=
      done
    fi
  done
fi

## Obsolete since fixes_3_2 branch
##if [ "$svnname" == "fixes" ] ; then
  # Wii OS requires -Sfresources option
  ##check_target powerpc wii "-n -Sfresources"
##else
  # -Sfresources is now by default inside rtl/wii/rtl.cfg
##  check_target powerpc wii "-n"
##fi

# Generic listing based on -T$OS_TARGET
list_os aarch64 "-n"
list_os arm "-n"
list_os avr "-n"
list_os i386 "-n"
list_os i8086 "-n"
list_os m68k "-n"
list_os jvm "-n"
list_os mips "-n"
list_os mipsel "-n"
list_os powerpc "-n"
list_os powerpc64 "-n"
list_os riscv32 "-n"
list_os riscv64 "-n"
list_os sparc "-n"
list_os sparc64 "-n"
list_os x86_64 "-n"
list_os xtensa "-n"
list_os z80 "-n -CX -XX"

listed=0

# Parse system_CPU_OS entries in compiler/systems.inc source file 
# Obsolete systems are not listed here
# as they start with obsolete_system
index_cpu_os_list=`sed -n "s:^[[:space:]]*system_\([a-zA-Z0-9_]*\)_\([a-zA-Z0-9]*\) *[,]* *{ *\([0-9]*\).*:\3;\1,\2:p" compiler/systems.inc`

# Split into index, cpu and os
for index_cpu_os in $index_cpu_os_list ; do
   index=${index_cpu_os//;*/}
   os=${index_cpu_os//*,/}
   os=${os,,}
   cpu=${index_cpu_os/*;/}
   cpu=${cpu//,*/}
   cpu=${cpu,,}
   echo "Found item $index, cpu=$cpu, os=$os"
   check_target $cpu $os "-n"
done

$MAKE -C rtl distclean 1> /dev/null 2>&1
echo "dummy_count=$dummy_count"
if [ $dummy_count -gt 0 ] ; then
  echo "dummy_list=\"$dummy_list\""
fi
echo "skipped_count=$skipped_count"
if [ $skipped_count -gt 0 ] ; then
  echo "skipped_list=\"$skipped_list\""
fi
echo "run_fpcmake_first_failure=$run_fpcmake_first_failure"
if [ $run_fpcmake_first_failure -gt 0 ] ; then
  echo "run_fpcmake_first_list=\"$run_fpcmake_first_list\""
fi
echo "os_target_not_supported_failure=$os_target_not_supported_failure"
if [ $os_target_not_supported_failure -gt 0 ] ; then
  echo "os_target_not_supported_list=\"$os_target_not_supported_list\""
fi
echo "rtl_1_failure=$rtl_1_failure"
if [ $rtl_1_failure -gt 0 ] ; then
  echo "rtl_1_list=\"$rtl_1_list\""
fi
echo "rtl_2_failure=$rtl_2_failure"
if [ $rtl_2_failure -gt 0 ] ; then
  echo "rtl_2_list=\"$rtl_2_list\""
fi
echo "rtl_ppu_failure=$rtl_ppu_failure"
if [ $rtl_ppu_failure -gt 0 ] ; then
  echo "rtl_ppu_list=\"$rtl_ppu_list\""
fi
echo "packages_failure=$packages_failure"
if [ $packages_failure -gt 0 ] ; then
  echo "packages_list=\"$packages_list\""
fi
echo "packages_ppu_failure=$packages_ppu_failure"
if [ $packages_ppu_failure -gt 0 ] ; then
  echo "packages_ppu_list=\"$packages_ppu_list\""
fi

echo "utils_failure=$utils_failure"
if [ $utils_failure -gt 0 ] ; then
  echo "utils_list=\"$utils_list\""
fi
echo "utils_ppu_failure=$utils_ppu_failure"
if [ $utils_ppu_failure -gt 0 ] ; then
  echo "utils_ppu_list=\"$utils_ppu_list\""
fi

) >> $LOGFILE 2>&1

dummy_count_new_val=` grep "^dummy_count=" $LOGFILE `
eval $dummy_count_new_val
skipped_count_new_val=` grep "^skipped_count=" $LOGFILE `
eval $skipped_count_new_val
run_fpcmake_first_failure_new_val=` grep "^run_fpcmake_first_failure=" $LOGFILE `
eval $run_fpcmake_first_failure_new_val
os_target_not_supported_failure_new_val=` grep "^os_target_not_supported_failure=" $LOGFILE `
eval $os_target_not_supported_failure_new_val
rtl_1_failure_new_val=` grep "^rtl_1_failure=" $LOGFILE `
eval $rtl_1_failure_new_val
rtl_2_failure_new_val=` grep "^rtl_2_failure=" $LOGFILE `
eval $rtl_2_failure_new_val
rtl_ppu_failure_new_val=` grep "^rtl_ppu_failure=" $LOGFILE `
eval $rtl_ppu_failure_new_val
packages_failure_new_val=` grep "^packages_failure=" $LOGFILE `
eval $packages_failure_new_val
packages_ppu_failure_new_val=` grep "^packages_ppu_failure=" $LOGFILE `
eval $packages_ppu_failure_new_val
utils_failure_new_val=` grep "^utils_failure=" $LOGFILE `
eval $utils_failure_new_val
utils_ppu_failure_new_val=` grep "^utils_ppu_failure=" $LOGFILE `
eval $utils_ppu_failure_new_val
dummy_list_new_val=` grep "^dummy_list=" $LOGFILE `
eval $dummy_list_new_val
skipped_list_new_val=` grep "^skipped_list=" $LOGFILE `
eval $skipped_list_new_val
run_fpcmake_first_list_new_val=` grep "^run_fpcmake_first_list=" $LOGFILE `
eval $run_fpcmake_first_list_new_val
os_target_not_supported_list_new_val=` grep "^os_target_not_supported_list=" $LOGFILE `
eval $os_target_not_supported_list_new_val
rtl_1_list_new_val=` grep "^rtl_1_list=" $LOGFILE `
eval $rtl_1_list_new_val
rtl_2_list_new_val=` grep "^rtl_2_list=" $LOGFILE `
eval $rtl_2_list_new_val
rtl_ppu_list_new_val=` grep "^rtl_ppu_list=" $LOGFILE `
eval $rtl_ppu_list_new_val
packages_list_new_val=` grep "^packages_list=" $LOGFILE `
eval $packages_list_new_val
packages_ppu_list_new_val=` grep "^packages_ppu_list=" $LOGFILE `
eval $packages_ppu_list_new_val
utils_list_new_val=` grep "^utils_list=" $LOGFILE `
eval $utils_list_new_val
utils_ppu_list_new_val=` grep "^utils_ppu_list=" $LOGFILE `
eval $utils_ppu_list_new_val

function prev_ ()
{
# Dummy function to avoid error in eval below
# when no regular expression is found by grep
  true
}

function get_prev_var_value ()
{
  var_name=$1
  prev_value="prev_` grep "^$var_name=" $PREVLOGFILE `"
  if [ "$prev_value" == "prev_" ] ; then
    eval "prev_$var_name=\"\""
  else
    eval "$prev_value"
  fi
}
  
if [ -f $PREVLOGFILE ] ; then
  prev_var_list=`sed -n "s:^\([a-zA-Z0-9_]*\)=\(.*\)$:prev_\1=\"\2\";:p" $PREVLOGFILE | grep -v "^prev_prev_" `
  # eval $prev_var_list ;
  lecho "prev_var_list=\"$prev_var_list\"" >> $LOGFILE
  get_prev_var_value dummy_count
  get_prev_var_value skipped_count
  get_prev_var_value run_fpcmake_first_failure
  get_prev_var_value os_target_not_supported_failure
  get_prev_var_value rtl_1_failure
  get_prev_var_value rtl_2_failure
  get_prev_var_value rtl_ppu_failure
  get_prev_var_value packages_failure
  get_prev_var_value packages_ppu_failure
  get_prev_var_value utils_failure
  get_prev_var_value utils_ppu_failure
  get_prev_var_value dummy_list
  get_prev_var_value skipped_list
  get_prev_var_value run_fpcmake_first_list
  get_prev_var_value os_target_not_supported_list
  get_prev_var_value rtl_1_list
  get_prev_var_value rtl_2_list
  get_prev_var_value rtl_ppu_list
  get_prev_var_value packages_list
  get_prev_var_value packages_ppu_list
  get_prev_var_value utils_list
  get_prev_var_value utils_ppu_list
  prev_date_new_val="prev_date='` sed -n 's:Ending at ::p' $PREVLOGFILE`'"
  eval $prev_date_new_val
  prev_ok_count=` grep "$OK_REGEXP" $PREVLISTLOGFILE | wc -l `
  prev_pb_count=` grep "Failure: See.*" $PREVLISTLOGFILE | wc -l `
  prev_total_count=`expr $prev_pb_count + $prev_ok_count `
else
  prev_date=
fi

echo "Ending at `date --utc \"$DATE_FORMAT\"`" >> $LOGFILE
echo "Ending at `date --utc \"$DATE_FORMAT\"`" >> $LISTLOGFILE

# Generate email summarizing found problems

error_file_list=` sed -n "s|Failure: See \(.*\) for details|\1|p" $LISTLOGFILE `

ok_count=` grep "$OK_REGEXP" $LISTLOGFILE | wc -l `
pb_count=` grep "Failure: See.*" $LISTLOGFILE | wc -l `
total_count=`expr $pb_count + $ok_count `

if [ -n "$prev_date" ] ; then
  diff_output=` diff -b $PREVLISTLOGFILE $LISTLOGFILE `
  if [ -z "$diff_output" ] ; then
    echo "No diff to previous list" >> $EMAILFILE
  else
    echo "Diff to previous list" >> $EMAILFILE
    diff ${PREVLISTLOGFILE} ${LISTLOGFILE} >> $EMAILFILE
  fi
fi

echo "Short summary: number of ok=$ok_count, number of pb=$pb_count, number of skips=$skipped_count" >> $EMAILFILE
if [ -n "$prev_date" ] ; then
  echo "Previous short summary: number of ok=$prev_ok_count, number of pb=$prev_pb_count, number of skips=$prev_skipped_count" >> $EMAILFILE
fi
if [ $run_fpcmake_first_failure -gt 0 ] ; then
  echo "$run_fpcmake_first_failure CPU-OS not handled by fpcmake failure(s), $run_fpcmake_first_list" >> $EMAILFILE
fi
if [ -n "$prev_date" ] ; then
  if [ "$run_fpcmake_first_list" != "$prev_run_fpcmake_first_list" ] ; then
    echo "Previous $prev_run_fpcmake_first_failure CPU-OS not handled by fpcmake failure(s), $prev_run_fpcmake_first_list" >> $EMAILFILE
  fi
fi
if [ $os_target_not_supported_failure -gt 0 ] ; then
  echo "$os_target_not_supported_failure OS not supported by CPU compiler failure(s), $os_target_not_supported_list" >> $EMAILFILE
fi
if [ -n "$prev_date" ] ; then
  if [ "$os_target_not_supported_list" != "$prev_os_target_not_supported_list" ] ; then
    echo "Previous $prev_os_target_not_supported_failure OS not supported by CPU compiler failure(s), $prev_os_target_not_supported_list" >> $EMAILFILE
  fi
fi
if [ $rtl_1_failure -gt 0 ] ; then
  echo "$rtl_1_failure rtl level 1 failure(s), $rtl_1_list" >> $EMAILFILE
fi
if [ -n "$prev_date" ] ; then
  if [ "$rtl_1_list" != "${prev_rtl_1_list:-}" ] ; then
    echo "Previous $prev_rtl_1_failure rtl level 1 failure(s), $prev_rtl_1_list" >> $EMAILFILE
  fi
fi
if [ $rtl_2_failure -gt 0 ] ; then
  echo "$rtl_2_failure rtl level 2 failure(s), $rtl_2_list" >> $EMAILFILE
fi
if [ -n "$prev_date" ] ; then
  if [ "$rtl_2_list" != "${prev_rtl_2_list:-}" ] ; then
    echo "Previous $prev_rtl_2_failure rtl level 2 failure(s), $prev_rtl_2_list" >> $EMAILFILE
  fi
fi
if [ $rtl_ppu_failure -gt 0 ] ; then
  echo "$rtl_ppu_failure rtl ppudump failure(s), $rtl_ppu_list" >> $EMAILFILE
fi
if [ -n "$prev_date" ] ; then
  if [ "$rtl_ppu_list" != "${prev_rtl_ppu_list:-}" ] ; then
    echo "iPrevious $prev_rtl_ppu_failure rtl ppudump failure(s), $prev_rtl_ppu_list" >> $EMAILFILE
  fi
fi
if [ $packages_failure -gt 0 ] ; then
  echo "$packages_failure packages failure(s), $packages_list" >> $EMAILFILE
fi
if [ -n "$prev_date" ] ; then
  if [ "$packages_list" != "${prev_packages_list:-}" ] ; then
    echo "Previous $prev_packages_failure packages failure(s), $prev_packages_list" >> $EMAILFILE
  fi
fi
if [ $packages_ppu_failure -gt 0 ] ; then
  echo "$packages_ppu_failure packages ppudump failure(s), $packages_ppu_list" >> $EMAILFILE
fi
if [ -n "$prev_date" ] ; then
  if [ "$packages_ppu_list" != "${prev_packages_ppu_list:-}" ] ; then
    echo "Previous $prev_packages_ppu_failure packages ppudump failure(s), $prev_packages_ppu_list" >> $EMAILFILE
  fi
fi
if [ $utils_failure -gt 0 ] ; then
  echo "$utils_failure utils failure(s), $utils_list" >> $EMAILFILE
fi
if [ -n "$prev_date" ] ; then
  if [ "$utils_list" != "${prev_utils_list:-}" ] ; then
    echo "Previous $prev_utils_failure utils failure(s), $prev_utils_list" >> $EMAILFILE
  fi
fi
if [ $utils_ppu_failure -gt 0 ] ; then
  echo "$utils_ppu_failure utils ppudump failure(s), $utils_ppu_list" >> $EMAILFILE
fi
if [ -n "$prev_date" ] ; then
  if [ "$utils_ppu_list" != "${prev_utils_ppu_list:-}" ] ; then
    echo "Previous $prev_utils_ppu_failure utils ppudump failure(s), $prev_utils_ppu_list" >> $EMAILFILE
  fi
fi
if [ $skipped_count -gt 0 ] ; then
  echo "$skipped_count skipped target(s), $skipped_list" >> $EMAILFILE
fi
if [ -n "$prev_date" ] ; then
  if [ "$skipped_list" != "${prev_skipped_list:-}" ] ; then
    echo "Previous $prev_skipped_count skipped target(s), $prev_skipped_list" >> $EMAILFILE
  fi
fi
if [ $dummy_count -gt 0 ] ; then
  echo "$dummy_count target(s) using dummy assembler, $dummy_list" >> $EMAILFILE
fi
if [ -n "$prev_date" ] ; then
  if [ "$dummy_list" != "${prev_dummy_list:-}" ] ; then
    echo "Previous $prev_dummy_count target(s) using dummy assembler, $prev_dummy_list" >> $EMAILFILE
  fi
fi
echo "Number of targets using dummy assembler: $dummy_count/$total_count" >> $EMAILFILE
echo "###############################" >> $EMAILFILE
echo "Short list of failed cpu-os pairs" >> $EMAILFILE
echo "###############################" >> $EMAILFILE
echo "" >> $EMAILFILE
grep "Failure: See.*" $LISTLOGFILE >> $EMAILFILE

echo "" >> $EMAILFILE
echo "###############################" >> $EMAILFILE
echo "Details of failed cpu-os pairs" >> $EMAILFILE
echo "###############################" >> $EMAILFILE
echo "" >> $EMAILFILE
index=1
# Suppress lines starting with rm 
rmprog=`which rm`
for file in $error_file_list ; do
  echo "###############################" >> $EMAILFILE
  echo "Error in file $index $file" >> $EMAILFILE
  output=`grep -nC3  -E "(Fatal:|Error:|make.*Error|make.*Fatal|External command.*failed with exit code)" $file | grep -v "^[0-9 ]*-$rmprog" `
  if [ "X$output" == "X" ] ; then
    echo "No error pattern found in $file" >> $EMAILFILE
    cat $file  | grep -v "^$rmprog" | tail -20 >> $EMAILFILE
  else
    grep -n -C${GREP_CONTEXT_LINES}  -E "(Fatal:|Error:|make.*Error|make.*Fatal|imake.*Broken pipe)" $file  | grep -v "^[0-9 ]*-$rmprog" | head -20 >> $EMAILFILE
  fi
  index=` expr $index + 1 `
done

echo "" >> $EMAILFILE
echo "###############################" >> $EMAILFILE
echo "Full log listing: " >> $EMAILFILE
echo "###############################" >> $EMAILFILE
echo "" >> $EMAILFILE
cat $LISTLOGFILE >> $EMAILFILE

if [ -n "${RECOMPILE_FULL_OPT:-}" ] ; then
  FPC_INFO="$FPCVERSION, compilers compiled with $RECOMPILE_FULL_OPT,"
else
  FPC_INFO="$FPCVERSION"
fi

# Add $HOME/bin directory if it exists at start of PATH to use custom mutt
if [ -d $HOME/bin ] ; then
  PATH=$HOME/bin:$PATH
fi

mutt -x -s "Free Pascal check RTL/Packages ${svnname}, $FPC_INFO results date `date +%Y-%m-%d` on $machine_info" -i $EMAILFILE -- pierre@freepascal.org < /dev/null > /dev/null 2>&1

if [ ${DO_FPC_BINARY_INSTALL} -eq 0 ] ; then
  rm -Rf $LOCAL_INSTALL_PREFIX
fi

rm_lockfile

