#!/usr/bin/env bash

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

LOGDIR=$HOME/logs/${svnname}/all-snapshots

if [ ! -d $LOGDIR ] ; then
  mkdir -p $LOGDIR
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
    *)         FPC_LOCAL=ppc$CPU_TARGET;;
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

  set_fpc_local $CPU_TARGET

  fpc_version=`$FPC_LOCAL -iV`
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
    extra_text="not listed in $FPC_LOCAL -h"
  fi

  if [ -n "$RECOMPILE_OPT" ] ; then
    LOGFILE_RECOMPILE=${LOGDIR}/recompile-${CPU_TARGET}-${OS_TARGET}${EXTRASUFFIX}.txt
    cd $CHECKOUTDIR
    if [ -d fpcsrc ] ; then
      cd fpcsrc
    fi
    # First recompile rtl
    make -C compiler rtlclean rtl OPT="-n -gl" > $LOGFILE_RECOMPILE 2>&1
    res=$?
    if [ $res -eq 0 ] ; then
      # Now recompile compiler, using CPC_TARGET, so that clean removes the old stuff
      make -C compiler clean all CPC_TARGET=$CPU_TARGET OPT="-n -gl $RECOMPILE_OPT" >> $LOGFILE_RECOMPILE 2>&1
      res=$?
    fi
    if [ $res -ne 0 ] ; then
      echo "Skip: Not testing $CPU_TARGET-${OS_TARGET}${EXTRASUFFIX}, with OPT=\"$RECOMPILE_OPT\" ${FPC_LOCAL} recompilation failed, res=$res"
      echo "Skip: Not testing $CPU_TARGET-${OS_TARGET}${EXTRASUFFIX}, with OPT=\"$RECOMPILE_OPT\" ${FPC_LOCAL} recompilation failed, res=$res" >> $LISTLOGFILE
      skipped_count=`expr $skipped_count + 1 `
      return
    fi
    fpc_local_exe=`pwd`/compiler/$FPC_LOCAL
    LOCAL_OPT="$LOCAL_OPT $RECOMPILE_OPT"
    export LOCALOPTLEVEL2="$RECOMPILE_OPT"
    if [ -n "$RECOMPILE_INSTALL_NAME" ] ; then
      LOCAL_INSTALL_PREFIX=$HOME/pas/fpc-$FPCVERSION
      cp -fp $fpc_local_exe $LOCAL_INSTALL_PREFIX/bin/$RECOMPILE_INSTALL_NAME
      fpc_local_exe=$LOCAL_INSTALL_PREFIX/bin/$RECOMPILE_INSTALL_NAME
    fi
  else
    fpc_local_exe=`which $FPC_LOCAL 2> /dev/null `
    export LOCALOPTLEVEL2=
  fi
  if [  -f $target_as ] ; then
    if [ "X${target_as/clang/}" != "X$target_as" ] ; then
      echo "Also use $target_as for AS make variable to compile startup assembler file"
      # export CROSSOPT="ASNAME=clang"
    fi
    export CROSSOPT="$LOCAL_OPT"
    # Do not export BINUTILSPREFIX, because
    # this would be used already in first cycle...

    echo "$HOME/bin/makesnapshot.sh $CPU_TARGET $OS_TARGET, with CROSSOPT=\"$CROSSOPT\", using $target_as ($assembler_version)"
    export LOGFILE=$LOGDIR/makesnapshot-${BRANCH}-${CPU_TARGET}-${OS_TARGET}${EXTRASUFFIX}.log
    FPC_PREV=$FPC 
    export FPC=$fpc_local_exe
    $HOME/bin/makesnapshot.sh $CPU_TARGET $OS_TARGET
    res=$?
    if [ $res -ne 0 ] ; then
      echo "makesnapshot.sh failed, res=$res" 
      echo "$HOME/bin/makesnapshot.sh ${CPU_TARGET}-${OS_TARGET}${EXTRASUFFIX}, with CROSSOPT=\"$CROSSOPT\", using $target_as ($assembler_version) Error: $res" >> $LISTLOGFILE
    else
      echo "makesnapshot.sh returned 0"
      echo "$HOME/bin/makesnapshot.sh ${CPU_TARGET}-${OS_TARGET}${EXTRASUFFIX}, with CROSSOPT=\"$CROSSOPT\", using $target_as ($assembler_version) OK" >> $LISTLOGFILE
    fi
    FPC=$FPC_PREV
  else
    echo "$target_as for ${CPU_TARGET}-${OS_TARGET} not found, skipping"
    echo "No $target_as for ${CPU_TARGET}-${OS_TARGET}${EXTRASUFFIX}, with CROSSOPT=\"$CROSSOPT\", using $target_as ($assembler_version)" >> $LISTLOGFILE
  fi
  BINUTILSPREFIX=
  ASSEMBLER=
  AS=
  target_as=
  assembler_version=
  OPT=
  LOCAL_OPT=
  FPC=
}

function list_os ()
{
  local local_FPC=$1
  local local_CPU_TARGET=$2
  local local_OPT="$3"
  local os_list=`$local_FPC -h | sed -n "s:.*-T\([a-zA-Z_][a-zA-Z_0-9]*\).*:\1:p" `
  listed=1
  for local_OS in ${os_list} ; do
   echo "run_one_snapshot $local_CPU_TARGET $local_OS \"$local_OPT\""
   date "+%Y-%m-%d %H:%M:%S"
   run_one_snapshot $local_CPU_TARGET $local_OS "$local_OPT"
   date "+%Y-%m-%d %H:%M:%S"
  done
  listed=0
}

LOGFILE=$LOGDIR/all-${svnname}-snapshots.log
LISTLOGFILE=$LOGDIR/list-all-snapshots-${svnname}.log

(
echo "Script $0 started at  `date +%Y-%m-%d-%H-%M `"
echo "Using PATH=$PATH"
echo "Script $0 started at  `date +%Y-%m-%d-%H-%M `" > $LISTLOGFILE
echo "Using PATH=$PATH" >> $LISTLOGFILE
listed=0
list_os ppca64 aarch64 "-n -g"
# -Tlinux is not listed on `ppca64 -h` output
run_one_snapshot aarch64 linux "-n -gl"


#export CROSSOPT="-CpARMV6 -CaEABI -CfSOFT"
#run_one_snapshot arm linux "-n -gl" "CROSSOPT=$CROSSOPT" "-armeabi"
#export CROSSOPT=

#export ASTARGETLEVEL3="-march=armv5 -mfpu=softvfp "
#run_one_snapshot arm linux "-n -gl" "-arm_softvfp"
#export ASTARGETLEVEL3=

# arm linux

export RECOMPILE_OPT="-dFPC_ARMEL"
export RECOMPILE_INSTALL_NAME=ppcarmel
export ASTARGET="-march=armv6 -meabi=5 -mfpu=softvfp "
export MAKESNAPSHOT_SUFFIX=-el
run_one_snapshot arm linux "-n -gl -Cparmv6 -Caeabi -Cfsoft" "" "-armeabi"
export MAKESNAPSHOT_SUFFIX=
export ASTARGET=
export RECOMPILE_INSTALL_NAME=
export RECOMPILE_OPT=

export RECOMPILE_OPT="-dFPC_ARMEB"
export RECOMPILE_INSTALL_NAME=ppcarmeb
export ASTARGET="-march=armv5 -meabi=5 -mfpu=softvfp "
export MAKESNAPSHOT_SUFFIX=-eb
run_one_snapshot arm linux "-n -gl -Cparmv6 -Caarmeb -Cfsoft" "" "-armeb"
export MAKESNAPSHOT_SUFFIX=
export ASTARGET=
export RECOMPILE_INSTALL_NAME=
export RECOMPILE_OPT=

export RECOMPILE_OPT="-dFPC_OARM"
export RECOMPILE_INSTALL_NAME=ppcoarm
export ASTARGET="-march=armv5 -mfpu=softvfp "
export MAKESNAPSHOT_SUFFIX=-oarm
run_one_snapshot arm linux "-n -gl" "" "-arm_softvfp"
export MAKESNAPSHOT_SUFFIX=
export ASTARGET=
export RECOMPILE_INSTALL_NAME=
export RECOMPILE_OPT=

export RECOMPILE_OPT="-dFPC_ARMHF"
export RECOMPILE_INSTALL_NAME=ppcarmhf
export ASTARGET="-march=armv6 -mfpu=vfpv2 -mfloat-abi=hard"
export MAKESNAPSHOT_SUFFIX=-eabihf
run_one_snapshot arm linux "-n -gl -CaEABIHF -CpARMv6 -CfVFPv2" "" "-arm_eabihf"
export MAKESNAPSHOT_SUFFIX=
export ASTARGET=
export RECOMPILE_INSTALL_NAME=
export RECOMPILE_OPT=

# msdos targets
run_one_snapshot i8086 msdos "-n -Wmtiny -CX -XX" "-Wmtiny"
run_one_snapshot i8086 msdos "-n -Wmcompat -CX -XX" "-Wmcompact"
run_one_snapshot i8086 msdos "-n -Wmmedium -CX -XX" "-Wmmedium"
run_one_snapshot i8086 msdos "-n -Wmlarge -CX -XX" "-Wmlarge"
run_one_snapshot i8086 msdos "-n -Wmhuge -CX -XX" "-Wmhuge"
run_one_snapshot i8086 msdos "-n -Wmsmall -CX -XX"

# Targets that use internal linker can be built with BUILDFULLNATIVE=1
export BUILDFULLNATIVE=1
run_one_snapshot i386 win32 "-n -gl" 
run_one_snapshot i386 go32v2 "-n -gl" 
run_one_snapshot x86_64 win64 "-n -gl" 
export BUILDFULLNATIVE=
# nativvent has no lineinfo unit support
run_one_snapshot i386 nativent "-n -g" 

list_os ppcarm arm "-n -gl"
list_os ppcavr avr "-n -gl"
list_os ppc386 i386 "-n -gl"
list_os ppc8086 i8086 "-n -CX -XX"
list_os ppcjvm jvm "-n"
# obsolote  -Oonopeephole option removed
# Amiga has no lineinfo support
# m68k-amiga fails with -g option
# as the symbol DEBUGINO_$WPO 
# which is a global symbol in an empty .data section
# gets discarded by the latest amiga-gcc asembler
# fixed 2018-12-01
run_one_snapshot m68k amiga "-n -g"
# powerpc amiga also has no lineinfo unit support
run_one_snapshot powerpc amiga "-n -g" 
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

