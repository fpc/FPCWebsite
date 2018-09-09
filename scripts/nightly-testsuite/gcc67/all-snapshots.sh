
. $HOME/bin/fpc-versions.sh

# Add FPC release bin and $HOME/bin directories to PATH
if [ -d $HOME/bin ] ; then
  PATH=$HOME/bin:$PATH
fi

if [ -d ${HOME}/pas/fpc-${RELEASEVERSION}/bin ] ; then
  PATH=${HOME}/pas/fpc-${RELEASEVERSION}/bin:$PATH
fi

if [ "X$MAKE" == "X" ] ; then
  MAKE=make
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

# Need for makesnapshot.sh call
export CHECKOUTDIR

# Add current FPC (trunk or fixes) bin directory to PATH
if [ -d ${HOME}/pas/fpc-${FPCVERSION}/bin ] ; then
  export PATH=$HOME/pas/fpc-$FPCVERSION/bin:$PATH
fi

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

 function run_one_snapshot ()
{
  CPU_TARGET=$1
  # mipseb and mips are just aliases
  if [ "X$CPU_TARGET" == "Xmipseb" ] ; then
    CPU_TARGET=mips
  fi

  if [ "X$CPU_TARGET" == "Xx86_6432" ] ; then
    CPU_TARGET=x86_64
    is_6432=1
  else
    is_6432=0
  fi

  set_fpc $CPU_TARGET

  fpc_version=`$FPC -iV`
  # Remove first point
  fpc_branch=${fpc_version/\./}
  # Remove rest, prefix with 'v'
  fpc_branch=v${fpc_branch/\.*/}

  OS_TARGET=$2

  export BRANCH=$fpc_branch

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

  # Always add -vx to get exact command line used when
  # calling GNU assembler/clang/java ...
  LOCAL_OPT="$3 -vx"
  MAKEEXTRA="$4"

  EXTRASUFFIX=$5

  echo "Testing rtl for $CPU_TARGET $OS_TARGET, with OPT=\"$LOCAL_OPT\" and MAKEEXTRA=\"$MAKEEXTRA\""
  date "+%Y-%m-%d %H:%M:%S"
  already_tested=`grep " $CPU_TARGET-${OS_TARGET}$EXTRASUFFIX," $LISTLOGFILE `
  if [ "X$already_tested" != "X" ] ; then
    echo "Already done" 
    return
  fi


  if [ "X${BINUTILSPREFIX}X" == "XresetX" ] ; then
    BINUTILSPREFIX=
  elif [ "X$BINUTILSPREFIX" == "X" ] ; then
    BINUTILSPREFIX=not_set
  fi

  if [ "$CPU_TARGET" == "jvm" ] ; then
    ASSEMBLER=java
    # java is installed, no need for prefix
    BINUTILSPREFIX=
    assembler_version=` $target_as $ASSEMBLER_VER_OPT | grep -i "$ASSEMBLER_VER_REGEXPR" `
  elif [[ ("$OS_TARGET" == "darwin") || ("$OS_TARGET" == "iphonesim") ]] ; then
    if [ "X${LOCAL_OPT//Aas/}" != "X$LOCAL_OPT" ] ; then
      ASSEMBLER=as
    else
      ASSEMBLER=clang
      BINUTILSPREFIX=
    fi
  elif [ "$CPU_TARGET" == "i8086" ] ; then
    ASSEMBLER=nasm
  elif [ "X${LOCAL_OPT//Avasm/}" != "X$LOCAL_OPT" ] ; then
    # -Avasm is only used for m68k vasm assembler 
    ASSEMBLER=vasmm68k_std
    MAKEEXTRA="$MAKEEXTRA AS=$ASSEMBLER"
    BINUTILSPREFIX=
  else
    ASSEMBLER=as
  fi

  target_as=`which $ASSEMBLER`

  if [ "X$BINUTILSPREFIX" == "Xnot_set" ] ; then
    target_as=`which ${CPU_TARGET}-${OS_TARGET}-${ASSEMBLER}`
    if [ "X$target_as" != "X" ] ; then
      BINUTILSPREFIX=${CPU_TARGET}-${OS_TARGET}-
    else
      BINUTILSPREFIX=dummy-
      assembler_version="Dummy assembler"
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
    assembler_version=` $target_as $ASSEMBLER_VER_OPT | grep -i "$ASSEMBLER_VER_REGEXPR" `
  fi

  extra_text="$assembler_version"

  if [ $listed -eq 0 ] ; then
    extra_text="not listed in $FPC -h"
  fi

  if [  -f $target_as ] ; then
    if [ "X${target_as/clang/}" != "X$target_as" ] ; then
      echo "Also use $target_as for AS make variable to compile startup assembler file"
      # export CROSSOPT="ASNAME=clang"
    fi
    export OPT="$LOCAL_OPT"
    # Do not export BINUTILSPREFIX, because
    # this would be used already in first cycle...

    echo "$HOME/bin/makesnapshot.sh $CPU_TARGET $OS_TARGET, with OPT=\"$OPT\", using $target_as ($assembler_version)"
    export LOGFILE=$HOME/logs/makesnapshot-${BRANCH}-${CPU_TARGET}-${OS_TARGET}${EXTRASUFFIX}.log
    $HOME/bin/makesnapshot.sh $CPU_TARGET $OS_TARGET
    res=$?
    if [ $res -ne 0 ] ; then
      echo "makesnapshot.sh failed, res=$res" 
      echo "$HOME/bin/makesnapshot.sh ${CPU_TARGET}-${OS_TARGET}${EXTRASUFFIX}, with OPT=\"$OPT\", using $target_as ($assembler_version) Error: $res" >> $LISTLOGFILE
    else
      echo "makesnapshot.sh returned 0"
      echo "$HOME/bin/makesnapshot.sh ${CPU_TARGET}-${OS_TARGET}${EXTRASUFFIX}, with OPT=\"$OPT\", using $target_as ($assembler_version) OK" >> $LISTLOGFILE
    fi
  else
    echo "$target_as for ${CPU_TARGET}-${OS_TARGET} not found, skipping"
    echo "No $target_as for ${CPU_TARGET}-${OS_TARGET}${EXTRASUFFIX}, with OPT=\"$OPT\", using $target_as ($assembler_version)" >> $LISTLOGFILE
  fi
  BINUTILSPREFIX=
  ASSEMBLER=
  AS=
  target_as=
  assembler_version=
  OPT=
  LOCAL_OPT=
}

function list_os ()
{
  FPC=$1
  CPU_TARGET=$2
  OPT="$3"
  os_list=`$FPC -h | sed -n "s:.*-T\([a-zA-Z_][a-zA-Z_0-9]*\).*:\1:p" `
  listed=1
  for os in ${os_list} ; do
   echo "run_one_snapshot $CPU_TARGET $os \"$OPT\""
   date "+%Y-%m-%d %H:%M:%S"
   run_one_snapshot $CPU_TARGET $os "$OPT"
   date "+%Y-%m-%d %H:%M:%S"
  done
  listed=0
}

LOGFILE=$HOME/logs/all-${svnname}-snapshots.log
LISTLOGFILE=$HOME/logs/list-all-snapshots-${svnname}.log

(
echo  "Script $0 started at  `date +%Y-%m-%d-%H-%M `"
echo "Using PATH=$PATH"
echo  "Script $0 started at  `date +%Y-%m-%d-%H-%M `" > $LISTLOGFILE
echo "Using PATH=$PATH" >> $LISTLOGFILE
listed=0
list_os ppca64 aarch64 "-n -g"
# -Tlinux is not listed on `ppca64 -h` output
run_one_snapshot aarch64 linux "-n -gl"

export CROSSOPT="-CpARMV6 -CaEABI -CfSOFT"
run_one_snapshot arm linux "-n -gl" "CROSSOPT=$CROSSOPT" "-armeabi"
export CROSSOPT=

export ASTARGETLEVEL3="-march=armv5 -mfpu=softvfp "
run_one_snapshot arm linux "-n -gl" "-arm_softvfp"
export ASTARGETLEVEL3=

list_os ppcarm arm "-n -gl"
list_os ppcavr avr "-n -gl"
list_os ppc386 i386 "-n -gl"
list_os ppc8086 i8086 "-n -Wmhuge -CX -XX"
list_os ppcjvm jvm "-n"
# obsolote  -Oonopeephole option removed
# Amiga has no lineinfo support
run_one_snapshot m68k amiga "-n -g" 
# Other m68k targets
list_os ppc68k m68k "-n -gl"
list_os ppcmips mips "-n -gl"
list_os ppcmipsel mipsel "-n -gl"
list_os ppcppc powerpc "-n -gl"
list_os ppcppc64 powerpc64 "-n -gl"
list_os ppcsparc sparc "-n -gl"
list_os ppcsparc64 sparc64 "-n -gl"
list_os ppcx64 x86_64 "-n -gl"
listed=0
run_one_snapshot x86_64 dragonfly "-n -gl"
run_one_snapshot m68k netbsd "-n -gl"
run_one_snapshot arm aros "-n -gl"
run_one_snapshot x86_64 aros "-n -gl"
echo  "Script $0 ended at  `date +%Y-%m-%d-%H-%M `"
) > $LOGFILE 2>&1

