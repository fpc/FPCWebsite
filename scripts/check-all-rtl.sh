#!/usr/bin/env bash

# Script to try all possible CPU-OS combinations
# possibly with several different options also

. $HOME/bin/fpc-versions.sh

if [ -n "$1" ] ; then
  dir_name_suffix="-$1"
else
  dir_name_suffix=
fi

# Some programs might freeze
# like i386-darwin-as...

ulimit -t 300 2> /dev/null

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
if [ "X$TEST_PACKAGES" == "X0" ] ; then
  test_packages=0
  name=target-rtl
else
  test_packages=1
  name=target
fi

# Allows to disable testing ppudump
if [ "X$TEST_PPUDUMP" == "X0" ] ; then
  test_ppudump=0
else
  test_ppudump=1
fi

if [ -z "$FPC" ] ; then
  FPC=ppc$machine_cpu
  case $machine_cpu in
    aarch64|arm64) FPC=ppca64 ;;
    arm) FPC=ppcarm ;;
    i*86) FPC=ppc386 ;;
    m68k) FPC=ppc68k ;;
    mipsel*) FPC=ppcmipsel ;;
    mips*) FPC=ppcmips ;;
    powerpc) FPC=ppcppc ;;
    powerpc64) FPC=ppcppc64 ;;
    riscv32) FPC=ppcrv32 ;;
    riscv64) FPC=ppcrv64 ;;
    x86_64|amd64) FPC=ppcx64 ;;
  esac
  export FPC
fi

# Install all cross-rtl-packages on gcc20/gcc21/gcc123 machines
# Install all packages on gcc21 and gcc123
if [ "X$machine_host" == "Xgcc20" ] ; then
  DO_FPC_INSTALL=1
elif [ "X$machine_host" == "Xgcc21" ] ; then
  DO_FPC_INSTALL=1
  DO_FPC_PACKAGES_INSTALL=1
elif [ "X$machine_host" == "Xgcc70" ] ; then
  # Temp mount is too small, don't use it
  XDG_RUNTIME_DIR=
  DO_FPC_INSTALL=1
  DO_FPC_PACKAGES_INSTALL=1
  DO_RECOMPILE_FULL=1
  # RECOMPILE_FULL_OPT=-CriotR
  RECOMPILE_FULL_OPT="-CriotR"
  USE_RELEASE_MAKEFILE_VARIABLE=1
elif [ "X$machine_host" == "Xgcc123" ] ; then
  DO_FPC_INSTALL=1
  DO_FPC_PACKAGES_INSTALL=1
  DO_RECOMPILE_FULL=1
  # RECOMPILE_FULL_OPT=-CriotR
  RECOMPILE_FULL_OPT=
  USE_RELEASE_MAKEFILE_VARIABLE=1
fi

if [ "X$USE_RELEASE_MAKEFILE_VARIABLE" == "X1" ] ; then
  export RELEASE=1
fi

if [ "X$FIXES" == "X1" ] ; then
  CHECKOUTDIR=$FIXESDIR
  svnname=fixes
  FPCVERSION=$FIXESVERSION
else
  CHECKOUTDIR=$TRUNKDIR
  svnname=trunk
  FPCVERSION=$TRUNKVERSION
fi

# Add current FPC (trunk or fixes) bin directory to PATH
if [ -d ${HOME}/pas/fpc-${FPCVERSION}/bin ] ; then
  export PATH=$HOME/pas/fpc-$FPCVERSION/bin:$PATH
fi

# Checking if native $FPC is in PATH
found_fpc=`which $FPC 2> /dev/null `

# Add RELEASE directory
if [ -d ${HOME}/pas/fpc-${FPCRELEASEVERSION}/bin ] ; then
  PATH=${PATH}:${HOME}/pas/fpc-${FPCRELEASEVERSION}/bin
fi

# Also add $HOME/bin to PATH if it exists, but as last
if [ -d ${HOME}/bin ] ; then
  export PATH=${PATH}:${HOME}/bin
fi


if [ -d /opt/cfarm/clang-release/bin ] ; then
  PATH=$PATH:/opt/cfarm/clang-release/bin
fi

if [ "X$MAKE" == "X" ] ; then
  GMAKE=`which gmake 2> /dev/null`
  if [ ! -z "$GMAKE" ] ; then
    MAKE=$GMAKE
  else
    MAKE=make
  fi
fi

# Use a fake install directory to avoid troubles
if [ ! -z "$DO_FPC_INSTALL" ] ; then
  export LOCAL_INSTALL_PREFIX=$HOME/pas/fpc-$FPCVERSION
else
  if [ ! -z "$XDG_RUNTIME_DIR" ] ; then
    export LOCAL_INSTALL_PREFIX=$XDG_RUNTIME_DIR/pas/fpc-$FPCVERSION
  elif [ ! -z "$TMP" ] ; then
    export LOCAL_INSTALL_PREFIX=$TMP/$USER/pas/fpc-$FPCVERSION
  elif [ ! -z "$TEMP" ] ; then
    export LOCAL_INSTALL_PREFIX=$TEMP/$USER/pas/fpc-$FPCVERSION
  else	
    export LOCAL_INSTALL_PREFIX=${HOME}/tmp/pas/fpc-$FPCVERSION
  fi
fi
 
export PATH
cd $CHECKOUTDIR

if [ -d fpcsrc ] ; then
  cd fpcsrc
fi
svn_rtl_version=`svnversion -c rtl`
svn_compiler_version=`svnversion -c compiler`
svn_packages_version=`svnversion -c packages`


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

LOGFILE=$LOGDIR/all-${name}-${svnname}-checks.log
LISTLOGFILE=$LOGDIR/list-all-${name}-${svnname}-checks.log
EMAILFILE=$LOGDIR/check-${name}-${svnname}-log.txt

if [ -f $LOGFILE ] ; then
  mv -f $LOGFILE ${LOGFILE}.previous
fi

if [ -f $LISTLOGFILE ] ; then
  mv -f $LISTLOGFILE ${LISTLOGFILE}.previous
fi

echo "$0 for $svnname, version $FPCVERSION starting at `date`" > $LOGFILE
echo "$0 for $svnname, version $FPCVERSION starting at `date`" > $LISTLOGFILE
echo "$0 for $svnname, version $FPCVERSION starting at `date`" > $EMAILFILE
echo "Machine info: $machine_info" >> $LOGFILE
echo "Machine info: $machine_info" >> $LISTLOGFILE
echo "Machine info: $machine_info" >> $EMAILFILE
echo "RTL svn version: $svn_rtl_version" >> $LOGFILE
echo "RTL svn version: $svn_rtl_version" >> $LISTLOGFILE
echo "RTL svn version: $svn_rtl_version" >> $EMAILFILE
echo "Compiler svn version: $svn_compiler_version" >> $LOGFILE
echo "Compiler svn version: $svn_compiler_version" >> $LISTLOGFILE
echo "Compiler svn version: $svn_compiler_version" >> $EMAILFILE
echo "Packages svn version: $svn_packages_version" >> $LOGFILE
echo "Packages svn version: $svn_packages_version" >> $LISTLOGFILE
echo "Packages svn version: $svn_packages_version" >> $EMAILFILE

if [ "X$DO_RECOMPILE_FULL" == "X1" ] ; then
  cd compiler
  fullcyclelog=$LOGDIR/full-cycle.log
  make distclean cycle installsymlink OPT="-n -gl $RECOMPILE_FULL_OPT" INSTALL_PREFIX=$LOCAL_INSTALL_PREFIX > $fullcyclelog 2>&1
  makeres=$?
  if [ $makeres -ne 0 ] ; then
    echo "Generating new native compiler failed, see $fullcyclelog for details" >> $LOGFILE
    echo "Generating new native compiler failed, see $fullcyclelog for details" >> $LISTLOGFILE
    echo "Generating new native compiler failed, see $fullcyclelog for details" >> $EMAILFILE
    exit
  fi
  make rtlclean rtl fullinstallsymlink OPT="-n -gl $RECOMPILE_FULL_OPT" INSTALL_PREFIX=$LOCAL_INSTALL_PREFIX FPC=$LOCAL_INSTALL_PREFIX/bin/$FPC >> $fullcyclelog 2>&1
  makeres=$?
  if [ $makeres -ne 0 ] ; then
    echo "Generating new cross-compilers failed, see $fullcyclelog for details" >> $LOGFILE
    echo "Generating new cross-compilers failed, see $fullcyclelog for details" >> $LISTLOGFILE
    echo "Generating new cross-compilers failed, see $fullcyclelog for details" >> $EMAILFILE
    exit
  else
    # Using new temp installation bin dir
    export PATH=$LOCAL_INSTALL_PREFIX/bin:$PATH
    echo "Adding $LOCAL_INSTALL_PREFIX/bin to front of PATH variable" >> $LOGFILE
    echo "Adding $LOCAL_INSTALL_PREFIX/bin to front of PATH variable" >> $LISTLOGFILE
    echo "Adding $LOCAL_INSTALL_PREFIX/bin to front of PATH variable" >> $EMAILFILE
  fi
  cd ..
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
export dummy_list=
export skipped_list=
export run_fpcmake_first_list=
export os_target_not_supported_list=
export rtl_1_list=
export rtl_2_list=
export rtl_ppu_list=
export packages_list=
export packages_ppu_list=


NATIVEFPC=fpc

export NATIVE_MACHINE=`uname -m`
export NATIVE_CPU=`fpc -iSP`
export NATIVE_OS=`fpc -iSO`
export NATIVE_DATE=`fpc -iD`
export NATIVE_VERSION=`fpc -iV`
export NATIVE_FULLVERSION=`fpc -iW`

if [ "$FPCVERSION" != "$NATIVE_VERSION" ] ; then
  echo "Version from native fpc binary is $NATIVE_VERSION, $FPCVERSION was expected" >> $LOGFILE
  echo "Version from native fpc binary is $NATIVE_VERSION, $FPCVERSION was expected" >> $EMAILFILE
fi
system_date=`date +%Y/%m/%d`
if [ "$system_date" != "$NATIVE_DATE" ] ; then
  echo "Date from native fpc binary is $NATIVE_DATE, date returns $system_date" >> $LOGFILE
  echo "Date from native fpc binary is $NATIVE_DATE, date returns $system_date" >> $EMAILFILE
fi

if [[ ("$NATIVE_MACHINE" == "sparc64") && ("$NATIVE_CPU" == "sparc") ]] ; then
  echo "Running	32bit sparc fpc on sparc64 machine, needs special options" >> $LOGFILE
  export NATIVE_OPT="-ao-32 -Fo/usr/lib32 -Fl/usr/lib32 -Fl/usr/sparc64-linux-gnu/lib32 -Fl/home/pierre/local/lib32"
else
  export NATIVE_OPT=
fi

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
    *)         FPC_LOCAL=ppc$LOC_CPU_TARGET;;
  esac
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
  OPT_LOCAL="$3 -vx"

  if [[ ("$NATIVE_OS" == "$OS_TARG_LOCAL") && ("$NATIVE_CPU" == "$CPU_TARG_LOCAL") ]] ; then
    echo "Adding NATIVE_OPT \"$NATIVE_OPT\""
    OPT_LOCAL="$OPT_LOCAL $NATIVE_OPT"
  fi

  # Fourth argument: Global extra MAKE parameter
  MAKEEXTRA="$4"

  # Fifth argument: log file name suffix
  EXTRASUFFIX=$5

  echo "Testing rtl for $CPU_TARG_LOCAL $OS_TARG_LOCAL, with OPT=\"$OPT_LOCAL\" and MAKEEXTRA=\"$MAKEEXTRA\""
  date "+%Y-%m-%d %H:%M:%S"

  # Check if same test has already been performed
  already_tested=`grep " $CPU_TARG_LOCAL-${OS_TARG_LOCAL}$EXTRASUFFIX," $LISTLOGFILE `
  if [ "X$already_tested" != "X" ] ; then
    echo "Already done" 
    return
  fi

  # Try to set BINUTILSPREFIX 
  if [ "X${BINUTILSPREFIX}X" == "XresetX" ] ; then
    BINUTILSPREFIX_LOCAL=
  elif [ "X$BINUTILSPREFIX" == "X" ] ; then
    BINUTILSPREFIX_LOCAL=not_set
  fi
  # Reset BINUTILSPREFIX here, to avoid troybles with fpmake compilation
  BINUTILSPREFIX=

  if [ "$CPU_TARG_LOCAL" == "jvm" ] ; then
    ASSEMBLER=java
    # java is installed, no need for prefix
    BINUTILSPREFIX_LOCAL=
  # Darwin and iphonesim targets use clang by default
  elif [[ ("$OS_TARG_LOCAL" == "darwin") || ("$OS_TARG_LOCAL" == "iphonesim") ]] ; then
    if [ "X${OPT_LOCAL//Aas/}" != "X$OPT_LOCAL" ] ; then
      ASSEMBLER=as
    else
      # clang does not need a prefix, as it is multi-platform
      ASSEMBLER=clang
      # Use symbolic links to clang with CPU-OS- prefixes
      # instead of resetting BINUTILSPREFIX=
    fi
  elif [ "$CPU_TARG_LOCAL" == "i8086" ] ; then
    ASSEMBLER=nasm
  elif [ "X${OPT_LOCAL//Avasm/}" != "X$OPT_LOCAL" ] ; then
    # -Avasm is only used for m68k vasm assmebler 
    ASSEMBLER=vasmm68k_std
  elif [[ ("$OS_TARG_LOCAL" == "macos") && ("$CPU_TARG_LOCAL" == "powerpc") ]] ; then
    ASSEMBLER=PPCAsm
  elif [ "$OS_TARG_LOCAL" == "watcom" ] ; then
    ASSEMBLER=wasm
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
         if [ -n "$AARCH64_ANDROID_ROOT" ] ; then
           OPT_LOCAL="$OPT_LOCAL -k--sysroot=$AARCH64_ANDROID_ROOT -Fl$AARCH64_ANDROID_ROOT"
         fi
       elif [ "${CPU_TARG_LOCAL}" == "arm" ] ; then
         TRY_BINUTILSPREFIX='arm-linux-androideabi-'
         if [ -n "$ARM_ANDROID_ROOT" ] ; then
           OPT_LOCAL="$OPT_LOCAL -k--sysroot=$ARM_ANDROID_ROOT -Fl$ARM_ANDROID_ROOT"
         fi
       elif [ "${CPU_TARG_LOCAL}" == "i386" ] ; then
         TRY_BINUTILSPREFIX='i686-linux-android-'
         if [ -n "$I386_ANDROID_ROOT" ] ; then
           OPT_LOCAL="$OPT_LOCAL -k--sysroot=$I386_ANDROID_ROOT -Fl$I386_ANDROID_ROOT"
         fi
       elif [ "${CPU_TARG_LOCAL}" == "mipsel" ] ; then
         TRY_BINUTILSPREFIX='mipsel-linux-android-'
         if [ -n "$MIPSEL_ANDROID_ROOT" ] ; then
           OPT_LOCAL="$OPT_LOCAL -k--sysroot=$MIPSEL_ANDROID_ROOT -Fl$MIPSEL_ANDROID_ROOT"
         fi
       elif [ "${CPU_TARG_LOCAL}" == "x86_64" ] ; then
         TRY_BINUTILSPREFIX='x86_64-linux-android-'
         if [ -n "$X86_64_ANDROID_ROOT" ] ; then
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
        echo "Skip: Not testing $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" ${TRY_BINUTILSPREFIX}${ASSEMBLER} not found and no dummy"
        echo "Skip: Not testing $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" ${TRY_BINUTILSPREFIX}${ASSEMBLER} not found and no dummy" >> $LISTLOGFILE
        return
      fi
      dummy_count=`expr $dummy_count + 1 `
    fi
  else
    target_as=`which $target_as`
  fi

  if [ ! -f "$target_as" ] ; then
    echo "No ${BINUTILSPREFIX_LOCAL}${ASSEMBLER} found, skipping"
    echo "Skip: Not testing $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" ${BINUTILSPREFIX_LOCAL}${ASSEMBLER} not found"
    echo "Skip: Not testing $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" ${BINUTILSPREFIX_LOCAL}${ASSEMBLER} not found" >> $LISTLOGFILE
    skipped_count=`expr $skipped_count + 1 `
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

  if [ -n "$RECOMPILE_OPT" ] ; then
    LOGFILE_RECOMPILE=${LOGPREFIX}-recompile-${CPU_TARG_LOCAL}-${OS_TARG_LOCAL}${EXTRASUFFIX}.txt
    # First recompile rtl
    make -C compiler rtlclean rtl OPT="-n -gl" > $LOGFILE_RECOMPILE 2>&1
    res=$?
    if [ $res -eq 0 ] ; then
      # Now recompile compiler, using CPC_TARGET, so that clean removes the old stuff
      make -C compiler clean all CPC_TARGET=$CPU_TARG_LOCAL OPT="-n -gl $RECOMPILE_OPT" >> $LOGFILE_RECOMPILE 2>&1
      res=$?
    fi
    if [ $res -ne 0 ] ; then
      echo "Skip: Not testing $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$RECOMPILE_OPT\" ${FPC_LOCAL} recompilation failed, res=$res"
      echo "Skip: Not testing $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$RECOMPILE_OPT\" ${FPC_LOCAL} recompilation failed, res=$res" >> $LISTLOGFILE
      skipped_count=`expr $skipped_count + 1 `
      return
    fi
    fpc_local_exe=`pwd`/compiler/$FPC_LOCAL
    if [ -n "$RECOMPILE_INSTALL_NAME" ] ; then
      cp -fp $fpc_local_exe $LOCAL_INSTALL_PREFIX/bin/$RECOMPILE_INSTALL_NAME
    fi
  else
    fpc_local_exe=`which $FPC_LOCAL 2> /dev/null `
  fi

  if [ -z "$fpc_local_exe" ] ; then
    echo "Skip: Not testing $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" ${FPC_LOCAL} not found"
    echo "Skip: Not testing $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" ${FPC_LOCAL} not found" >> $LISTLOGFILE
    skipped_count=`expr $skipped_count + 1 `
    return
  fi
  if [ ! -x "$fpc_local_exe" ] ; then
    echo "Skip: Not testing $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" ${FPC_LOCAL} not executable"
    echo "Skip: Not testing $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" ${FPC_LOCAL} not executable" >> $LISTLOGFILE
    skipped_count=`expr $skipped_count + 1 `
    return
  fi
  CROSS_VERSION=`$fpc_local_exe -iV` 
  if [ "$FPCVERSION" != "$CROSS_VERSION" ] ; then
    echo "Version from $fpc_local_exe binary is $CROSS_VERSION, $FPCVERSION was expected" >> $LOGFILE
    echo "Version from $fpc_local_exe binary is $CROSS_VERSION, $FPCVERSION was expected" >> $EMAILFILE
    skipped_count=`expr $skipped_count + 1 `
    return
  fi
  CROSS_DATE=`$fpc_local_exe -iD` 
  if [ "$system_date" != "$CROSS_DATE" ] ; then
    echo "Date from $fpc_local_exe binary is $CROSS_DATE, date returns $system_date" >> $LOGFILE
    echo "Date from $fpc_local_exe binary is $CROSS_DATE, date returns $system_date" >> $EMAILFILE
    skipped_count=`expr $skipped_count + 1 `
    return
  fi


  # use explicit compiler location
  FPC_LOCAL=$fpc_local_exe

  extra_text="$assembler_version"

  if [ $listed -eq 0 ] ; then
    extra_text="$extra_text, not listed in $FPC_LOCAL -h"
  fi

  if [ -d rtl/$OS_TARG_LOCAL ] ; then
    # Do not try to go directly into rtl/$OS_TARG_LOCAL,
    #his is wrong at least for jvm android
    rtldir=rtl
  else
    rtldir=rtl
    extra_text="$extra_text no rtl/$OS_TARG_LOCAL found"
  fi

  if [ ! -z "$ASPROG_LOCAL" ] ; then
    export ASPROG="$ASPROG_LOCAL"
  fi

  if [ "X$extra_text" != "X" ] ; then
    extra_text="($extra_text)"
  fi
  packagesdir=packages

  LOGFILE0=${LOGPREFIX}-distclean-${CPU_TARG_LOCAL}-${OS_TARG_LOCAL}${EXTRASUFFIX}.txt
  LOGFILE1=${LOGPREFIX}-${CPU_TARG_LOCAL}-${OS_TARG_LOCAL}${EXTRASUFFIX}.txt
  LOGFILE2=${LOGPREFIX}-2-${CPU_TARG_LOCAL}-${OS_TARG_LOCAL}${EXTRASUFFIX}.txt
  LOGFILEPPU=${LOGPREFIX}-ppudump-${CPU_TARG_LOCAL}-${OS_TARG_LOCAL}${EXTRASUFFIX}.txt
  LOGFILE3=${LOGPREFIX}-packages-${CPU_TARG_LOCAL}-${OS_TARG_LOCAL}${EXTRASUFFIX}.txt
  LOGFILEPACKPPU=${LOGPREFIX}-packages-ppudump-${CPU_TARG_LOCAL}-${OS_TARG_LOCAL}${EXTRASUFFIX}.txt

  # Distclean in rtl and packages first
  echo "Distclean in rtl and packages first" > $LOGFILE0
  $MAKE -C $rtldir distclean CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL OPT="$OPT_LOCAL" $MAKEEXTRA >> $LOGFILE0 2>&1
  $MAKE -C $packagesdir distclean CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL OPT="$OPT_LOCAL" $MAKEEXTRA >> $LOGFILE0 2>&1
  $MAKE -C $packagesdir distclean CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL OPT="$OPT_LOCAL" $MAKEEXTRA >> $LOGFILE0 2>&1

  echo "$MAKE -C $rtldir all CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL OPT=\"$OPT_LOCAL\" $MAKEEXTRA" > $LOGFILE1
  $MAKE -C $rtldir all CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL OPT="$OPT_LOCAL" $MAKEEXTRA >> $LOGFILE1 2>&1
  res=$?
  if [ $res -ne 0 ] ; then
    # Check for "The Makefile doesn't support target $CPU_TARG_LOCAL-$OS_TARG_LOCAL, please run fpcmake first.  Stop" pattern
    fpcmake_pattern=`grep "The Makefile doesn't support target $CPU_TARG_LOCAL-$OS_TARG_LOCAL, please run fpcmake first."  $LOGFILE1 2> /dev/null`
    unsupported_target_pattern=`grep "Error: Illegal parameter: -T$OS_TARG_LOCAL" $LOGFILE1 2> /dev/null `
    if [ -n "$fpcmake_pattern" ] ; then
      run_fpcmake_first_failure=`expr $run_fpcmake_first_failure + 1 `
      run_fpcmake_first_list="$run_fpcmake_first_list $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}"
      echo "Failure: fpcmake does not support $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL, res=$res $extra_text"
      echo "Failure: See $LOGFILE1 for details"
      echo "Failure: fpcmake does not support $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL, res=$res $extra_text" >> $LISTLOGFILE
      echo "Failure: See $LOGFILE1 for details" >> $LISTLOGFILE
    elif [ -n "$unsupported_target_pattern" ] ; then
      os_target_not_supported_failure=`expr $os_target_not_supported_failure + 1 `
      os_target_not_supported_list="$os_target_not_supported_list $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}"
      echo "Failure: OS Target $OS_TARG_LOCAL not supported for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL, res=$res $extra_text"
      echo "Failure: See $LOGFILE1 for details"
      echo "Failure: OS Target $OS_TARG_LOCAL not supported for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL, res=$res $extra_text" >> $LISTLOGFILE
      echo "Failure: See $LOGFILE1 for details" >> $LISTLOGFILE
    else
      rtl_1_failure=`expr $rtl_1_failure + 1 `
      rtl_1_list="$rtl_1_list $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}"
      echo "Failure: Testing rtl for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL, res=$res $extra_text"
      echo "Failure: See $LOGFILE1 for details"
      echo "Failure: Testing rtl for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL, res=$res $extra_text" >> $LISTLOGFILE
      echo "Failure: See $LOGFILE1 for details" >> $LISTLOGFILE
    fi
  else
    echo "OK: Testing 1st $rtldir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text"
    echo "OK: Testing 1st $rtldir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text" >> $LISTLOGFILE
    echo "Re-running make should do nothing"
    MAKEEXTRA="$MAKEEXTRA INSTALL_PREFIX=$LOCAL_INSTALL_PREFIX"
    echo "$MAKE -C $rtldir all install CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL OPT=\"$OPT_LOCAL\" $MAKEEXTRA" > $LOGFILE2
    $MAKE -C $rtldir all install CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL OPT="$OPT_LOCAL" $MAKEEXTRA >> $LOGFILE2 2>&1
    res=$?
    if [ $res -ne 0 ] ; then
      rtl_2_failure=`expr $rtl_2_failure + 1 `
      rtl_2_list="$rtl_2_list $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}"
      echo "Failure: Rerunning make $rtldir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL, res=$res $extra_text"
      echo "Failure: See $LOGFILE2 for details"
      echo "Failure: Rerunning make $rtldir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL, res=$res $extra_text" >> $LISTLOGFILE
      echo "Failure: See $LOGFILE2 for details" >> $LISTLOGFILE
    else
      fpc_called=`grep -E "(^|[^=])$FPC_LOCAL" $LOGFILE2 `
      if [ "X$fpc_called" != "X" ] ; then
        rtl_2_failure=`expr $rtl_2_failure + 1 `
        rtl_2_list="$rtl_2_list $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}"
        echo "Failure: 2nd $rtldir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text, $FPC_LOCAL called again"
        echo "Failure: See $LOGFILE2 for details"
        echo "Failure: 2nd $rtldir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text, $FPC_LOCAL called again" >> $LISTLOGFILE
        echo "Failure: See $LOGFILE2 for details" >> $LISTLOGFILE
      else
        echo "OK: Testing 2nd $rtldir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text"
        echo "OK: Testing 2nd $rtldir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text" >> $LISTLOGFILE

	if [ $test_ppudump -eq 1 ] ; then
          echo "$MAKE -C compiler rtlppulogs CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL OPT=\"$OPT_LOCAL\" $MAKEEXTRA" > $LOGFILEPPU
          $MAKE -C compiler rtlppulogs CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL OPT="$OPT_LOCAL" $MAKEEXTRA >> $LOGFILEPPU 2>&1
          res=$?
	  if [ $res -ne 0 ] ; then
            rtl_ppu_failure=`expr $rtl_ppu_failure + 1 `
            rtl_ppu_list="$rtl_ppu_list $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}"
            echo "Failure: ppudump for $rtldir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text"
            echo "Failure: See $LOGFILEPPU for details"
            echo "Failure: ppudump for $rtldir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text" >> $LISTLOGFILE
            echo "Failure: See $LOGFILEPPU for details" >> $LISTLOGFILE
	  else
            echo "OK: Testing ppudump of $rtldir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text"
            echo "OK: Testing ppudump of $rtldir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text" >> $LISTLOGFILE
          fi
          LOGFILEPPUNAME=`basename $LOGFILEPPU`
          IS_HUGE=`find $LOGDIR -maxdepth 1 -name $LOGFILEPPUNAME -size +1M`
          if [ ! -z "$IS_HUGE" ] ; then
            echo "$LOGFILEPPU is huge: `wc -c $LOGFILEPPU`"
            echo "Original $LOGFILEPPU was huge: `wc -c $LOGFILEPPU`" > ${LOGFILEPPU}-tmp
            head -110 $LOGFILEPPU >> ${LOGFILEPPU}-tmp
            echo "%%%%% File size reduced %%%%"  >> ${LOGFILEPPU}-tmp
            tail -110 $LOGFILEPPU >> ${LOGFILEPPU}-tmp
            rm -Rf $LOGFILEPPU
            mv ${LOGFILEPPU}-tmp ${LOGFILEPPU}
          fi
        fi
	if [ $test_packages -eq 1 ] ; then
	  echo "Re-compiling native rtl to allow for fpmake compilation"
          $MAKE -C rtl FPC=$NATIVEFPC OPT="$NATIVE_OPT"
	  echo "Testing compilation in $packagesdir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with CROSSOPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text"
          $MAKE -C $packagesdir all CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL CROSSOPT="$OPT_LOCAL" FPC=$FPC_LOCAL FPCMAKEOPT="$NATIVE_OPT" $MAKEEXTRA >> $LOGFILE3 2>&1
          res=$?
          if [ $res -ne 0 ] ; then
            packages_failure=`expr $packages_failure + 1 `
            packages_list="$packages_list $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}"
            echo "Failure: Testing $packagesdir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL, res=$res $extra_text"
            echo "Failure: See $LOGFILE3 for details"
            echo "Failure: Testing $packagesdir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL, res=$res $extra_text" >> $LISTLOGFILE
            echo "Failure: See $LOGFILE3 for details" >> $LISTLOGFILE
          else
            echo "OK: Testing 1st $packagesdir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text"
            echo "OK: Testing 1st $packagesdir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text" >> $LISTLOGFILE
            if [ "$DO_FPC_PACKAGES_INSTALL" == "1" ] ; then
              echo "Testing installation in $packagesdir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with CROSSOPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text"
              $MAKE -C $packagesdir install CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL CROSSOPT="$OPT_LOCAL" FPC=$FPC_LOCAL FPCMAKEOPT="$NATIVE_OPT" $MAKEEXTRA >> $LOGFILE3 2>&1
            fi
 	    if [ $test_ppudump -eq 1 ] ; then
              echo "$MAKE -C packages testppudump CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL OPT=\"$OPT_LOCAL\" $MAKEEXTRA" > $LOGFILEPACKPPU
              $MAKE -C packages testppudump CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL OPT="$OPT_LOCAL" $MAKEEXTRA >> $LOGFILEPACKPPU 2>&1
              res=$?
	      if [ $res -ne 0 ] ; then
                packages_ppu_failure=`expr $packages_ppu_failure + 1 `
                packages_ppu_list="$packages_ppu_list $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}"
                echo "Failure: ppudump for $packagesdir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text"
                echo "Failure: See $LOGFILEPACKPPU for details"
                echo "Failure: ppudump for $packagesdir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text" >> $LISTLOGFILE
                echo "Failure: See $LOGFILEPACKPPU for details" >> $LISTLOGFILE
	      else
                echo "OK: Testing ppudump of $packagesdir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text"
                echo "OK: Testing ppudump of $packagesdir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text" >> $LISTLOGFILE
              fi
              LOGFILEPPUNAME=`basename $LOGFILEPACKPPU`
              IS_HUGE=`find $LOGDIR -maxdepth 1 -name $LOGFILEPPUNAME -size +1M`
              if [ ! -z "$IS_HUGE" ] ; then
                echo "$LOGFILEPACKPPU is huge: `wc -c $LOGFILEPACKPPU`"
                echo "Original $LOGFILEPACKPPU was huge: `wc -c $LOGFILEPACKPPU`" > ${LOGFILEPACKPPU}-tmp
                head -110 $LOGFILEPACKPPU >> ${LOGFILEPACKPPU}-tmp
                echo "%%%%% File size reduced %%%%"  >> ${LOGFILEPACKPPU}-tmp
                tail -110 $LOGFILEPACKPPU >> ${LOGFILEPACKPPU}-tmp
                rm -Rf $LOGFILEPACKPPU
                mv ${LOGFILEPACKPPU}-tmp ${LOGFILEPACKPPU}
              fi
            fi
	  fi
	fi
      fi 
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
}

function list_os ()
{
  CPU_TARG_LOCAL=$1
  set_fpc_local $CPU_TARG_LOCAL
  OPT="$2"
  MAKEEXTRA="$3"
  fpc_local_exe=`which $FPC_LOCAL 2> /dev/null `
  if [ -z "$fpc_local_exe" ] ; then
    echo "No $FPC_LOCAL found"
    return
  fi
  fpc_version_local=`$FPC_LOCAL -iV`
  if [ "$FPC_VERSION" != "$fpc_version_local" ] ; then
    echo "Warning: $FPC_LOCAL binary reports version $fpc_version_local, while $FPC_VERSION is expected"
  fi

  fpc_fullversion_local=`$FPC_LOCAL -iW`
  echo "$FPC_LOCAL -iW reports full version $fpc_fullversion_local"

  os_list=`$FPC_LOCAL -h | sed -n "s:^[ \t]*-T\([a-zA-Z_][a-zA-Z_0-9]*\).*:\1:p" `
  for os in ${os_list} ; do
   echo "check_target $CPU_TARG_LOCAL ${os,,} \"$OPT\" \"$MAKEEXTRA\""
   check_target $CPU_TARG_LOCAL ${os,,} "$OPT" "$MAKEEXTRA"
  done
}

if [ "X$1" != "X" ] ; then
  echo "Testing single configuration $0 $*"
  echo "check_target cpu=\"$1\" os=\"$2\" opts=\"$3\" make args=\"$4\" suffix=\"$5\""
  check_target "$1" "$2" "$3" "$4" "$5"
  exit
fi

(

# Remove all existing logs
rm -Rf ${LOGPREFIX}*

# List separately cases for which special parameters are required
check_target arm embedded "-n" "SUBARCH=armv4t"
check_target avr embedded "-n" "SUBARCH=avr25" "-avr25"
check_target avr embedded "-n" "SUBARCH=avr4" "-avr4"
check_target avr embedded "-n" "SUBARCH=avr6"
check_target mipsel embedded "-n" "SUBARCH=pic32mx"

# Darwin OS check both clang and GNU binutils
# Known to be broken, disabled
check_target i386 darwin "-n -Aas-darwin" "" "-with-darwin-as"
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

export RECOMPILE_OPT="-dFPC_ARMEL"
export RECOMPILE_INSTALL_NAME=ppcarmel
export ASTARGET="-march=armv6 -meabi=5 -mfpu=softvfp "
check_target arm linux "-n -gl -Cparmv6 -Caeabi -Cfsoft" "" "-armeabi"
export ASTARGET=
export RECOMPILE_INSTALL_NAME=
export RECOMPILE_OPT=

export RECOMPILE_OPT="-dFPC_ARMEB"
export RECOMPILE_INSTALL_NAME=ppcarmeb
export ASTARGET="-march=armv5 -meabi=5 -mfpu=softvfp "
check_target arm linux "-n -gl -Cparmv6 -Caarmeb -Cfsoft" "" "-armeb"
export ASTARGET=
export RECOMPILE_INSTALL_NAME=
export RECOMPILE_OPT=

export RECOMPILE_OPT="-dFPC_OARM"
export RECOMPILE_INSTALL_NAME=ppcoarm
export ASTARGET="-march=armv5 -mfpu=softvfp "
check_target arm linux "-n -gl" "" "-arm_softvfp"
export ASTARGET=
export RECOMPILE_INSTALL_NAME=
export RECOMPILE_OPT=

export RECOMPILE_OPT="-dFPC_ARMHF"
export RECOMPILE_INSTALL_NAME=ppcarmhf
export ASTARGET="-march=armv6 -mfpu=vfpv2 -mfloat-abi=hard"
check_target arm linux "-n -gl -CaEABIHF -CpARMv6 -CfVFPv2" "" "-arm_eabihf"
export ASTARGET=
export RECOMPILE_INSTALL_NAME=
export RECOMPILE_OPT=

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
check_target m68k amiga "-n -Avasm" "" "-vasm"
export ASPROG_LOCAL="m68k-atari-as --register-prefix-optional" 
check_target m68k atari "-n -Avasm"
export ASPROG_LOCAL=
check_target m68k linux "-n -Avasm" "" "-vasm"
## Disabled: -Avasm is not supported for macos
## check_target m68k macos "-n -Avasm" "" "-vasm"
# palmos requires -CX -XX otherwise section overflow errors appear
check_target m68k palmos "-n -CX -XX"

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

listed=0

# Parse system_CPU_OS entries in compiler/systems.inc source file 
# Obsolete systems are not listed here
# as they start with obsolete_system
index_cpu_os_list=`sed -n "s:^[[:space:]]*system_\([a-zA-Z0-9_]*\)_\([a-zA-Z0-9]*\), *{ *\([0-9]*\).*:\3;\1!\2:p" compiler/systems.inc`

# Split into index, cpu and os
for index_cpu_os in $index_cpu_os_list ; do
   index=${index_cpu_os//;*/}
   os=${index_cpu_os//*!/}
   os=${os,,}
   cpu=${index_cpu_os/*;/}
   cpu=${cpu//!*/}
   cpu=${cpu,,}
   echo "Found item $index, cpu=$cpu, os=$os"
   check_target $cpu $os "-n"
done

$MAKE -C rtl distclean 1> /dev/null 2>&1
echo "dummy_count=$dummy_count"
echo "skipped_count=$skipped_count"
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
packages_ppu_list_new_val=` grep "^packages_ppu_failure=" $LOGFILE `
eval $packages_ppu_list_new_val


echo "Ending at `date`" >> $LOGFILE
echo "Ending at `date`" >> $LISTLOGFILE

# Generate email summarizing found problems

error_file_list=` sed -n "s|Failure: See \(.*\) for details|\1|p" $LISTLOGFILE `

ok_count=` grep "OK:.*2nd.*" $LISTLOGFILE | wc -l `
pb_count=` grep "Failure: See.*" $LISTLOGFILE | wc -l `
total_count=`expr $pb_count + $ok_count `

if [ -f $LISTLOGFILE.previous ] ; then
  echo "Diff to previous list" >> $EMAILFILE
  diff ${LISTLOGFILE}.previous ${LISTLOGFILE} >> $EMAILFILE
fi

echo "Short summary: number of ok=$ok_count, number of pb=$pb_count, number of skips=$skipped_count" >> $EMAILFILE
if [ $run_fpcmake_first_failure -gt 0 ] ; then
  echo "$run_fpcmake_first_failure CPU-OS not handled by fpcmake failure(s), $run_fpcmake_first_list" >> $EMAILFILE
fi
if [ $os_target_not_supported_failure -gt 0 ] ; then
  echo "$os_target_not_supported_failure OS not supported by CPU compiler failure(s), $os_target_not_supported_list" >> $EMAILFILE
fi
if [ $rtl_1_failure -gt 0 ] ; then
  echo "$rtl_1_failure rtl level 1 failure(s), $rtl_1_list" >> $EMAILFILE
fi
if [ $rtl_2_failure -gt 0 ] ; then
  echo "$rtl_2_failure rtl level 2 failure(s), $rtl_2_list" >> $EMAILFILE
fi
if [ $rtl_ppu_failure -gt 0 ] ; then
  echo "$rtl_ppu_failure rtl ppudump failure(s), $rtl_ppu_list" >> $EMAILFILE
fi
if [ $packages_failure -gt 0 ] ; then
  echo "$packages_failure packages failure(s), $packages_list" >> $EMAILFILE
fi
if [ $packages_ppu_failure -gt 0 ] ; then
  echo "$packages_ppu_failure packages ppudump failure(s), $packages_ppu_list" >> $EMAILFILE
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
  output=`grep -nC3  -E "(Fatal:|Error:|make.*Error|make.*Fatal)" $file | grep -v "^[0-9 ]*-$rmprog" `
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

if [ -n "$RECOMPILE_FULL_OPT" ] ; then
  FPC_INFO="$FPC_VERSION, compilers compiled with $RECOMPILE_FULL_OPT,"
else
  FPC_INFO="$FPC_VERSION"
fi

mutt -x -s "Free Pascal check RTL/Packages ${svnname}, $FPC_INFO results date `date +%Y-%m-%d` on $machine_info" -i $EMAILFILE -- pierre@freepascal.org < /dev/null > /dev/null 2>&1

if [ -z "$DO_FPC_INSTALL" ] ; then
  rm -Rf $LOCAL_INSTALL_PREFIX
fi

