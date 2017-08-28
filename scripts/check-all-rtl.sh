#!/usr/bin/env bash

. $HOME/bin/fpc-versions.sh

# Some programs might freeze
# like i386-darwin-as...

ulimit -t 300

FPCRELEASEVERSION=$RELEASEVERSION


# Add FPC release bin and $HOME/bin directories to PATH
if [ -d $HOME/bin ] ; then
  PATH=$HOME/bin:$PATH
fi

if [ -d ${HOME}/pas/fpc-${FPCRELEASEVERSION}/bin ] ; then
  PATH=${HOME}/pas/fpc-${FPCRELEASEVERSION}/bin:$PATH
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
  STARTDIR=$FIXESDIR
  svnname=fixes
  FPCVERSION=$FIXESVERSION
else
  STARTDIR=$TRUNKDIR
  svnname=trunk
  FPCVERSION=$TRUNKVERSION
fi

# Add current FPC (trunk or fixes) bin directory to PATH
if [ -d ${HOME}/pas/fpc-${FPCVERSION}/bin ] ; then
  export PATH=$HOME/pas/fpc-$FPCVERSION/bin:$PATH
fi

export INSTALL_PREFIX=${HOME}/pas/fpc-$FPCVERSION

export PATH
cd $STARTDIR

if [ -d fpcsrc ] ; then
  cd fpcsrc
fi

# This variable is reset after
# all -T"OS" have been parsed
# it serves to add a comment that 
# the help does not cite this target
listed=1

LOGFILE=$HOME/logs/all-rtl-${svnname}-checks.log
LISTLOGFILE=$HOME/logs/list-all-rtl-${svnname}-checks.log
EMAILFILE=$HOME/logs/check-rtl-${svnname}-log.txt

echo "$0 for $svnname starting at `date`" > $LOGFILE
echo "$0 for $svnname starting at `date`" > $LISTLOGFILE
echo "$0 for $svnname starting at `date`" > $EMAILFILE

LOGPREFIX=$HOME/logs/rtl-check-${svnname}
export dummy_count=0

function set_fpc ()
{
  LOC_CPU_TARGET=$1

  case $LOC_CPU_TARGET in
    aarch64)   FPC=ppca64;;
    alpha)     FPC=ppcaxp;;
    arm)       FPC=ppcarm;;
    avr)       FPC=ppcavr;;
    i386)      FPC=ppc386;;
    i8086)     FPC=ppc8086;;
    ia64)      FPC=ppcia64;;
    jvm)       FPC=ppcjvm;;
    m68k)      FPC=ppc68k;;
    mips)      FPC=ppcmips;;
    mipsel)    FPC=ppcmipsel;;
    powerpc)   FPC=ppcppc;;
    powerpc64) FPC=ppcppc64;;
    sparc)     FPC=ppcsparc;;
    sparc64)   FPC=ppcsparc64;;
    vis)       FPC=ppcvis;;
    x86_64)    FPC=ppcx64;;
    *)         FPC=ppc$CPU_TARGET;;
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
  CPU_TARGET=$1

  # mipseb and mips are just aliases
  if [ "X$CPU_TARGET" == "Xmipseb" ] ; then
    CPU_TARGET=mips
  fi

  # x86_6432 is not a seperate CPU
  if [ "X$CPU_TARGET" == "Xx86_6432" ] ; then
    CPU_TARGET=x86_64
    is_6432=1
  else
    is_6432=0
  fi

  # Find the corresponding Free Pascal compiler
  set_fpc $CPU_TARGET

  ## Second argument: OS_TARGET
  OS_TARGET=$2

  # system_x86_6432_linux needs to be translated into
  # CPU=x86_64 and OS=linux6432
  if [ $is_6432 -eq 1 ] ; then
    OS_TARGET=${OS_TARGET}6432
  fi
   
  # jvm-java and jvm-android have 32 suffix
  # in their system_CPU_OS names
  if [ "X$OS_TARGET" == "Xandroid32" ] ; then
    OS_TARGET=android
  fi
  if [ "X$OS_TARGET" == "Xjava32" ] ; then
    OS_TARGET=java
  fi

  # Third argument: optional extra OPT value
  # Always add -vx to get exact command line used when
  # calling GNU assembler/clang/java ...
  LOCAL_OPT="$3 -vx"

  # Fourth argument: Global extra MAKE parameter
  MAKEEXTRA="$4"

  # Fifth argument: log file name suffix
  EXTRASUFFIX=$5

  echo "Testing rtl for $CPU_TARGET $OS_TARGET, with OPT=\"$LOCAL_OPT\" and MAKEEXTRA=\"$MAKEEXTRA\""
  date "+%Y-%m-%d %H:%M:%S"

  # Check if same test has already been performed
  already_tested=`grep " $CPU_TARGET-${OS_TARGET}$EXTRASUFFIX," $LISTLOGFILE `
  if [ "X$already_tested" != "X" ] ; then
    echo "Already done" 
    return
  fi


  # Try to set BINUTILSPREFIX 
  if [ "X${BINUTILSPREFIX}X" == "XresetX" ] ; then
    BINUTILSPREFIX=
  elif [ "X$BINUTILSPREFIX" == "X" ] ; then
    BINUTILSPREFIX=not_set
  fi

  if [ "$CPU_TARGET" == "jvm" ] ; then
    ASSEMBLER=java
    # java is installed, no need for prefix
    BINUTILSPREFIX=
  # Darwin and iphonesim targets use clang by default
  elif [[ ("$OS_TARGET" == "darwin") || ("$OS_TARGET" == "iphonesim") ]] ; then
    if [ "X${LOCAL_OPT//Aas/}" != "X$LOCAL_OPT" ] ; then
      ASSEMBLER=as
    else
      # clang does not need a prefix, as it is multi-platform
      ASSEMBLER=clang
      # Use symbolic links to clang with CPU-OS- prefixes
      # instead of resetting BINUTILSPREFIX=
    fi
  elif [ "$CPU_TARGET" == "i8086" ] ; then
    ASSEMBLER=nasm
  elif [ "X${LOCAL_OPT//Avasm/}" != "X$LOCAL_OPT" ] ; then
    # -Avasm is only used for m68k vasm assmebler 
    ASSEMBLER=vasmm68k_std
  else
    ASSEMBLER=as
  fi

  target_as=$ASSEMBLER

  if [ "X$BINUTILSPREFIX" == "Xnot_set" ] ; then
    target_as=`which ${CPU_TARGET}-${OS_TARGET}-${ASSEMBLER}`
    if [ "X$target_as" != "X" ] ; then
      BINUTILSPREFIX=${CPU_TARGET}-${OS_TARGET}-
    else
      BINUTILSPREFIX=dummy-
      assembler_version="Dummy assembler"
      dummy_count=`expr $dummy_count + 1 `
    fi
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
    ASSEMBLER_VER_OPT=--version
    ASSEMBLER_VER_REGEXPR="java"
  else
    ASSEMBLER_VER_OPT=--version
    ASSEMBLER_VER_REGEXPR="gnu assembler"
  fi
  if [ "X$BINUTILSPREFIX" != "Xdummy-" ] ; then
    assembler_version=` $target_as $ASSEMBLER_VER_OPT | grep -i "$ASSEMBLER_VER_REGEXPR" | head -1 `
  fi

  extra_text="$assembler_version"

  if [ $listed -eq 0 ] ; then
    extra_text="$extra_text, not listed in $FPC -h"
  fi

  if [ -d rtl/$OS_TARGET ] ; then
    # Do not try to go directly into rtl/$OS_TARGET,
    #his is wrong at least for jvm android
    rtldir=rtl
  else
    rtldir=rtl
    extra_text="$extra_text no rtl/$OS_TARGET found"
  fi

  if [ "X$extra_text" != "X" ] ; then
    extra_text="($extra_text)"
  fi

  LOGFILE1=${LOGPREFIX}-${CPU_TARGET}-${OS_TARGET}${EXTRASUFFIX}.txt
  LOGFILE2=${LOGPREFIX}-2-${CPU_TARGET}-${OS_TARGET}${EXTRASUFFIX}.txt

  echo "$MAKE -C $rtldir clean all CPU_TARGET=$CPU_TARGET OS_TARGET=$OS_TARGET BINUTILSPREFIX=$BINUTILSPREFIX OPT=\"$LOCAL_OPT\" $MAKEEXTRA" > $LOGFILE1
  $MAKE -C $rtldir clean all CPU_TARGET=$CPU_TARGET OS_TARGET=$OS_TARGET BINUTILSPREFIX=$BINUTILSPREFIX OPT="$LOCAL_OPT" $MAKEEXTRA >> $LOGFILE1 2>&1
  res=$?
  if [ $res -eq 0 ] ; then
    echo "OK: Testing 1st $rtldir for $CPU_TARGET-${OS_TARGET}${EXTRASUFFIX}, with OPT=\"$LOCAL_OPT\" BINUTILSPREFIX=$BINUTILSPREFIX $extra_text"
    echo "OK: Testing 1st $rtldir for $CPU_TARGET-${OS_TARGET}${EXTRASUFFIX}, with OPT=\"$LOCAL_OPT\" BINUTILSPREFIX=$BINUTILSPREFIX $extra_text" >> $LISTLOGFILE
    echo "Re-running make should do nothing"
    MAKEEXTRA="$MAKEEXTRA INSTALL_PREFIX=$INSTALL_PREFIX"
    echo "$MAKE -C $rtldir all CPU_TARGET=$CPU_TARGET OS_TARGET=$OS_TARGET BINUTILSPREFIX=$BINUTILSPREFIX OPT=\"$LOCAL_OPT\" $MAKEEXTRA" > $LOGFILE2
    $MAKE -C $rtldir all install CPU_TARGET=$CPU_TARGET OS_TARGET=$OS_TARGET BINUTILSPREFIX=$BINUTILSPREFIX OPT="$LOCAL_OPT" $MAKEEXTRA >> $LOGFILE2 2>&1
    res=$?
    if [ $res -eq 0 ] ; then
      fpc_called=`grep $FPC $LOGFILE2 `
      if [ "X$fpc_called" == "X" ] ; then
        echo "OK: Testing 2nd $rtldir for $CPU_TARGET-${OS_TARGET}${EXTRASUFFIX}, with OPT=\"$LOCAL_OPT\" BINUTILSPREFIX=$BINUTILSPREFIX $extra_text"
        echo "OK: Testing 2nd $rtldir for $CPU_TARGET-${OS_TARGET}${EXTRASUFFIX}, with OPT=\"$LOCAL_OPT\" BINUTILSPREFIX=$BINUTILSPREFIX $extra_text" >> $LISTLOGFILE
      else
        echo "Failure: 2nd $rtldir for $CPU_TARGET-${OS_TARGET}${EXTRASUFFIX}, with OPT=\"$LOCAL_OPT\" BINUTILSPREFIX=$BINUTILSPREFIX $extra_text"
        echo "Failure: See $LOGFILE2 for details"
        echo "Failure: 2nd $rtldir for $CPU_TARGET-${OS_TARGET}${EXTRASUFFIX}, with OPT=\"$LOCAL_OPT\" BINUTILSPREFIX=$BINUTILSPREFIX $extra_text" >> $LISTLOGFILE
        echo "Failure: See $LOGFILE2 for details" >> $LISTLOGFILE
      fi 
    else
      echo "Failure: Rerunning make $rtldir for $CPU_TARGET-${OS_TARGET}${EXTRASUFFIX}, with OPT=\"$LOCAL_OPT\" BINUTILSPREFIX=$BINUTILSPREFIX, res=$res $extra_text"
      echo "Failure: See $LOGFILE2 for details"
      echo "Failure: Rerunning make $rtldir for $CPU_TARGET-${OS_TARGET}${EXTRASUFFIX}, with OPT=\"$LOCAL_OPT\" BINUTILSPREFIX=$BINUTILSPREFIX, res=$res $extra_text" >> $LISTLOGFILE
      echo "Failure: See $LOGFILE2 for details" >> $LISTLOGFILE
    fi
   else
    echo "Failure: Testing rtl for $CPU_TARGET-${OS_TARGET}${EXTRASUFFIX}, with OPT=\"$LOCAL_OPT\" BINUTILSPREFIX=$BINUTILSPREFIX, res=$res $extra_text"
    echo "Failure: See $LOGFILE1 for details"
    echo "Failure: Testing rtl for $CPU_TARGET-${OS_TARGET}${EXTRASUFFIX}, with OPT=\"$LOCAL_OPT\" BINUTILSPREFIX=$BINUTILSPREFIX, res=$res $extra_text" >> $LISTLOGFILE
    echo "Failure: See $LOGFILE1 for details" >> $LISTLOGFILE
  fi
  date "+%Y-%m-%d %H:%M:%S"
  BINUTILSPREFIX=
  ASSEMBLER=
  AS=
  OPT=
  LOCAL_OPT=
  MAKEEXTRA=
}

function list_os ()
{
  CPU_TARGET=$1
  set_fpc $CPU_TARGET
  OPT="$2"
  MAKEEXTRA="$3"
  os_list=`$FPC -h | sed -n "s:.*-T\([a-zA-Z_][a-zA-Z_0-9]*\).*:\1:p" `
  for os in ${os_list} ; do
   echo "check_one_rtl $CPU_TARGET ${os,,} \"$OPT\" \"$MAKEEXTRA\""
   check_one_rtl $CPU_TARGET ${os,,} "$OPT" "$MAKEEXTRA"
  done
}

(

# Remove all existing logs
rm -Rf ${LOGPREFIX}*

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
check_one_rtl i386 darwin "-n"
export BINUTILSPREFIX=reset
check_one_rtl x86_64 darwin "-n"

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
check_one_rtl m68k atari "-n -Avasm"
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

) >> $LOGFILE 2>&1

dummy_count_new_val=` grep "^dummy_count=" $LOGFILE `
eval $dummy_count_new_val

echo "Ending at `date`" >> $LOGFILE
echo "Ending at `date`" >> $LISTLOGFILE

# Generate email summarizing found problems

error_file_list=` sed -n "s|Failure: See \(.*\) for details|\1|p" $LISTLOGFILE `

ok_count=` grep "OK:.*2nd.*" $LISTLOGFILE | wc -l `
pb_count=` grep "Failure: See.*" $LISTLOGFILE | wc -l `
total_count=`expr $pb_count + $ok_count `

echo "Short summary: number of ok=$ok_count, number of pb=$pb_count" >> $EMAILFILE
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
    cat $file  | grep -v "^$rmprog" | head -20 >> $EMAILFILE
  else
    grep -nC3  -E "(Fatal:|Error:|make.*Error|make.*Fatal)" $file  | grep -v "^[0-9 ]*-$rmprog" | head -20 >> $EMAILFILE
  fi
  index=` expr $index + 1 `
done

echo "" >> $EMAILFILE
echo "###############################" >> $EMAILFILE
echo "Full log listing: " >> $EMAILFILE
echo "###############################" >> $EMAILFILE
echo "" >> $EMAILFILE
cat $LISTLOGFILE >> $EMAILFILE

mutt -x -s "Free Pascal check RTL ${svnname} results date `date +%Y-%m-%d`" -i $EMAILFILE -- pierre@freepascal.org < /dev/null > /dev/null 2>&1

