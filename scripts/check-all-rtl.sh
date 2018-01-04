#!/usr/bin/env bash

. $HOME/bin/fpc-versions.sh

# Some programs might freeze
# like i386-darwin-as...

ulimit -t 300

FPCRELEASEVERSION=$RELEASEVERSION
export GREP_CONTEXT_LINES=6

machine_host=`uname -n`
if [ "$machine_host" == "CFARM-IUT-TLSE3" ] ; then
  machine_host=gcc21
fi
machine_cpu=`uname -m`
machine_os=`uname -s`
machine_info="$machine_host $machine_cpu $machine_os"

if [ "X$TEST_PACKAGES" == "X0" ] ; then
  test_packages=0
  name=rtl
else
  test_packages=1
  name=rtl-packages
fi

if [ "X$TEST_PPUDUMP" == "X0" ] ; then
  test_ppudump=0
else
  test_ppudump=1
fi

# Install all cross-rtl-pacakges on gcc20 machine
if [ "X$machine_host" == "Xgcc20" ] ; then
  DO_FPC_INSTALL=1
fi

# Add FPC release bin and $HOME/bin directories to PATH
if [ -d $HOME/bin ] ; then
  PATH=$HOME/bin:$PATH
fi

if [ -d ${HOME}/pas/fpc-${FPCRELEASEVERSION}/bin ] ; then
  PATH=${HOME}/pas/fpc-${FPCRELEASEVERSION}/bin:$PATH
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

# Also add $HOME/bin to PATH if it exists, but as last
if [ -d ${HOME}/bin ] ; then
  export PATH=$PATH:$HOME/bin
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

# This variable is reset after
# all -T"OS" have been parsed
# it serves to add a comment that 
# the help does not cite this target
listed=1

LOGFILE=$HOME/logs/all-${name}-${svnname}-checks.log
LISTLOGFILE=$HOME/logs/list-all-${name}-${svnname}-checks.log
EMAILFILE=$HOME/logs/check-${name}-${svnname}-log.txt

if [ -f $LOGFILE ] ; then
  mv -f $LOGFILE ${LOGFILE}.previous
fi

if [ -f $LISTLOGFILE ] ; then
  mv -f $LISTLOGFILE ${LISTLOGFILE}.previous
fi

echo "$0 for $svnname starting at `date`" > $LOGFILE
echo "$0 for $svnname starting at `date`" > $LISTLOGFILE
echo "$0 for $svnname starting at `date`" > $EMAILFILE
echo "Machine info: $machine_info" >> $EMAILFILE

LOGPREFIX=$HOME/logs/${name}-check-${svnname}
export dummy_count=0
export rtl_1_failure=0
export rtl_2_failure=0
export rtl_ppu_failure=0
export packages_failure=0
export packages_ppu_failure=0

NATIVEFPC=fpc

export NATIVE_MACHINE=`uname -m`
export NATIVE_CPU=`fpc -iSP`
export NATIVE_OS=`fpc -iSO`

if [[ ("$NATIVE_MACHINE" == "sparc64") && ("$NATIVE_CPU" == "sparc") ]] ; then
  echo "Running	32bit sparc fpc on sparc64 machine, needs special options"
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
    sparc)     FPC_LOCAL=ppcsparc;;
    sparc64)   FPC_LOCAL=ppcsparc64;;
    vis)       FPC_LOCAL=ppcvis;;
    x86_64)    FPC_LOCAL=ppcx64;;
    *)         FPC_LOCAL=ppc$LOC_CPU_TARGET;;
  esac
}

######################################
## check_one_rtl function
## ARG1: target CPU
## ARG2: target OS
## ARG3: Additional OPT
## ARG4: Additional MAKE parameter
## ARG5: Extra suffix for log names
## allows to check different options
## for same CPU-OS pair.
######################################
function check_one_rtl ()
{
  ## First argument: CPU_TARGET
  CPU_TARG_LOCAL=$1

  # mipseb and mips are just aliases
  if [ "X$CPU_TARG_LOCAL" == "Xmipseb" ] ; then
    CPU_TARG_LOCAL=mips
  fi

  # x86_6432 is not a seperate CPU
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

  if [ ! -z "$ASPROG_LOCAL" ] ; then
    export ASPROG="$ASPROG_LOCAL"
  fi

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
  else
    ASSEMBLER=as
  fi

  target_as=$ASSEMBLER

  if [ "X$BINUTILSPREFIX_LOCAL" == "Xnot_set" ] ; then
    target_as=`which ${CPU_TARG_LOCAL}-${OS_TARG_LOCAL}-${ASSEMBLER}`
    if [ -f "$target_as" ] ; then
      BINUTILSPREFIX_LOCAL=${CPU_TARG_LOCAL}-${OS_TARG_LOCAL}-
    else
      BINUTILSPREFIX_LOCAL=dummy-
      assembler_version="Dummy assembler"
      target_as=`which ${BINUTILSPREFIX_LOCAL}${ASSEMBLER}`
      if [ ! -f "$target_as" ] ; then
        echo "No ${BINUTILSPREFIX_LOCAL}${ASSEMBLER} found, skipping"
        return
      fi
      dummy_count=`expr $dummy_count + 1 `
    fi
  else
    target_as=`which $target_as`
  fi

  if [ ! -f "$target_as" ] ; then
    echo "No ${BINUTILSPREFIX_LOCAL}${ASSEMBLER} found, skipping"
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
    assembler_version=` $target_as $ASSEMBLER_VER_OPT 2>&1 | grep -i "$ASSEMBLER_VER_REGEXPR" | head -1 `
  fi

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
    rtl_1_failure=`expr $rtl_1_failure + 1 `
    echo "Failure: Testing rtl for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL, res=$res $extra_text"
    echo "Failure: See $LOGFILE1 for details"
    echo "Failure: Testing rtl for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL, res=$res $extra_text" >> $LISTLOGFILE
    echo "Failure: See $LOGFILE1 for details" >> $LISTLOGFILE
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
      echo "Failure: Rerunning make $rtldir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL, res=$res $extra_text"
      echo "Failure: See $LOGFILE2 for details"
      echo "Failure: Rerunning make $rtldir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL, res=$res $extra_text" >> $LISTLOGFILE
      echo "Failure: See $LOGFILE2 for details" >> $LISTLOGFILE
    else
      fpc_called=`grep -E "(^|[^=])$FPC_LOCAL" $LOGFILE2 `
      if [ "X$fpc_called" != "X" ] ; then
        rtl_2_failure=`expr $rtl_2_failure + 1 `
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
            echo "Failure: ppudump for $rtldir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text"
            echo "Failure: See $LOGFILEPPU for details"
            echo "Failure: ppudump for $rtldir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text" >> $LISTLOGFILE
            echo "Failure: See $LOGFILEPPU for details" >> $LISTLOGFILE
	  else
            echo "OK: Testing ppudump of $rtldir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text"
            echo "OK: Testing ppudump of $rtldir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text" >> $LISTLOGFILE
          fi
        fi
	if [ $test_packages -eq 1 ] ; then
	  echo "Re-compiling native rtl to allow for fpmake compilation"
          $MAKE -C rtl FPC=$NATIVEFPC OPT="$NATIVE_OPT"
	  echo "Testing compilation in $packagesdir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with CROSSOPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text"
          $MAKE -C $packagesdir all CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL CROSSOPT="$OPT_LOCAL" FPC=$FPC_LOCAL OPT="$NATIVE_OPT" $MAKEEXTRA >> $LOGFILE3 2>&1
          res=$?
          if [ $res -ne 0 ] ; then
            packages_failure=`expr $packages_failure + 1 `
            echo "Failure: Testing $packagesdir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL, res=$res $extra_text"
            echo "Failure: See $LOGFILE3 for details"
            echo "Failure: Testing $packagesdir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL, res=$res $extra_text" >> $LISTLOGFILE
            echo "Failure: See $LOGFILE3 for details" >> $LISTLOGFILE
          else
            echo "OK: Testing 1st $packagesdir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text"
            echo "OK: Testing 1st $packagesdir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text" >> $LISTLOGFILE
	    if [ $test_ppudump -eq 1 ] ; then
              echo "$MAKE -C packages testppudump CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL OPT=\"$OPT_LOCAL\" $MAKEEXTRA" > $LOGFILEPACKPPU
              $MAKE -C packages testppudump CPU_TARGET=$CPU_TARG_LOCAL OS_TARGET=$OS_TARG_LOCAL FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL OPT="$OPT_LOCAL" $MAKEEXTRA >> $LOGFILEPACKPPU 2>&1
              res=$?
	      if [ $res -ne 0 ] ; then
                packages_ppu_failure=`expr $packages_ppu_failure + 1 `
                echo "Failure: ppudump for $packagesdir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text"
                echo "Failure: See $LOGFILEPACKPPU for details"
                echo "Failure: ppudump for $packagesdir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text" >> $LISTLOGFILE
                echo "Failure: See $LOGFILEPACKPPU for details" >> $LISTLOGFILE
	      else
                echo "OK: Testing ppudump of $packagesdir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text"
                echo "OK: Testing ppudump of $packagesdir for $CPU_TARG_LOCAL-${OS_TARG_LOCAL}${EXTRASUFFIX}, with OPT=\"$OPT_LOCAL\" FPC=$FPC_LOCAL BINUTILSPREFIX=$BINUTILSPREFIX_LOCAL $extra_text" >> $LISTLOGFILE
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
  os_list=`$FPC_LOCAL -h | sed -n "s:.*-T\([a-zA-Z_][a-zA-Z_0-9]*\).*:\1:p" `
  for os in ${os_list} ; do
   echo "check_one_rtl $CPU_TARG_LOCAL ${os,,} \"$OPT\" \"$MAKEEXTRA\""
   check_one_rtl $CPU_TARG_LOCAL ${os,,} "$OPT" "$MAKEEXTRA"
  done
}

(

# Remove all existing logs
rm -Rf ${LOGPREFIX}*

if [ "X$1" != "X" ] ; then
  echo "Testing single configuration $0 $*"
  check_one_rtl "$1" "$2" "$3" "$4" "$5"
  exit
fi

# List separately cases for which special parameters are required
check_one_rtl arm embedded "-n" "SUBARCH=armv4t"
check_one_rtl avr embedded "-n" "SUBARCH=avr25" "-avr25"
check_one_rtl avr embedded "-n" "SUBARCH=avr4" "-avr4"
check_one_rtl avr embedded "-n" "SUBARCH=avr6"
check_one_rtl mipsel embedded "-n" "SUBARCH=pic32mx"

# Darwin OS check both clang and GNU binutils
check_one_rtl i386 darwin "-n -Aas-darwin" "" "-gnu-as"
check_one_rtl x86_64 darwin "-n -Aas-darwin" "" "-gnu-as"
# Default run using clang (unique executable)
export BINUTILSPREFIX=reset
check_one_rtl i386 darwin "-n -ao--target=i686-apple-darwin-macho" "" "-bare-clang"
export BINUTILSPREFIX=reset
check_one_rtl x86_64 darwin "-n -ao--target=x86_64-apple-darwin-macho" "" "-bare-clang"
# Default run using CPU-OS-clang
check_one_rtl i386 darwin "-n"
check_one_rtl x86_64 darwin "-n"

# arm linux

export CROSSOPT="-Cparmv6 -Caeabi -Cfsoft"
check_one_rtl arm linux "-n -gl" "CROSSOPT=$CROSSOPT" "-armeabi"
export CROSSOPT=

export ASTARGETLEVEL3="-march=armv5 -mfpu=softvfp "
check_one_rtl arm linux "-n -gl" "ASTARGETLEVEL3=$ASTARGETLEVEL3" "-arm_softvfp"
export ASTARGETLEVEL3=

# msdos OS
check_one_rtl i8086 msdos "-n -CX -XX -Wmtiny" "" "-tiny"
check_one_rtl i8086 msdos "-n -CX -XX -Wmsmall" "" "-small"
check_one_rtl i8086 msdos "-n -CX -XX -Wmmedium" "" "-medium"
check_one_rtl i8086 msdos "-n -CX -XX -Wmcompact" "" "-compact"
check_one_rtl i8086 msdos "-n -CX -XX -Wmlarge" "" "-large"
check_one_rtl i8086 msdos "-n -CX -XX -Wmhuge"

# Win16 OS
check_one_rtl i8086 win16 "-n -CX -XX -Wmhuge"

# m68k 
check_one_rtl m68k amiga "-n -Avasm"
export ASPROG_LOCAL="m68k-atari-as --register-prefix-optional" 
check_one_rtl m68k atari "-n -Avasm"
export ASPROG_LOCAL=
check_one_rtl m68k linux "-n -Avasm" "" "-vasm"
check_one_rtl m68k macos "-n -Avasm" "" "-vasm"

# Wii OS requires -Sfresources option
check_one_rtl powerpc wii "-n -Sfresources"

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
   check_one_rtl $cpu $os "-n"
done

$MAKE -C rtl distclean 1> /dev/null 2>&1
echo "dummy_count=$dummy_count"
echo "rtl_1_failure=$rtl_1_failure"
echo "rtl_2_failure=$rtl_2_failure"
echo "rtl_ppu_failure=$rtl_ppu_failure"
echo "packages_failure=$packages_failure"
echo "packages_ppu_failure=$packages_ppu_failure"

) >> $LOGFILE 2>&1

dummy_count_new_val=` grep "^dummy_count=" $LOGFILE `
eval $dummy_count_new_val
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

echo "Short summary: number of ok=$ok_count, number of pb=$pb_count" >> $EMAILFILE
if [ $rtl_1_failure -gt 0 ] ; then
  echo "$rtl_1_failure rtl level 1 failure(s)" >> $EMAILFILE
fi
if [ $rtl_2_failure -gt 0 ] ; then
  echo "$rtl_2_failure rtl level 2 failure(s)" >> $EMAILFILE
fi
if [ $rtl_ppu_failure -gt 0 ] ; then
  echo "$rtl_ppu_failure rtl ppudump failure(s)" >> $EMAILFILE
fi
if [ $packages_failure -gt 0 ] ; then
  echo "$packages_failure packages failure(s)" >> $EMAILFILE
fi
if [ $packages_ppu_failure -gt 0 ] ; then
  echo "$packages_ppu_failure packages ppudump failure(s)" >> $EMAILFILE
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

mutt -x -s "Free Pascal check RTL ${svnname} results date `date +%Y-%m-%d` on $machine_info" -i $EMAILFILE -- pierre@freepascal.org < /dev/null > /dev/null 2>&1

if [ -z "$DO_FPC_INSTALL" ] ; then
  rm -Rf $LOCAL_INSTALL_PREFIX
fi

