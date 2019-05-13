#!/bin/bash
. $HOME/bin/fpc-versions.sh

if [ "X$FIXES" == "X1" ] ; then
  SVNDIR=$FIXESDIR
  CURRENT_VERSION=$FIXESVERSION
else
  SVNDIR=$TRUNKDIR
  CURRENT_VERSION=$TRUNKVERSION
fi

export PATH=${HOME}/pas/fpc-${CURRENT_VERSION}/bin:${PATH}

if [ -z "$FPC" ] ; then
  FPC=fpc
fi

FULLFPC=` which $FPC 2> /dev/null `
if [ -z "$FULLFPC" ] ; then
  echo "Could not find $FPC in $PATH"
  exit
fi

if [ "X$MAKE" == "X" ] ; then
  GMAKE=`which gmake 2> /dev/null`
  if [ -n "$GMAKE" ] ; then
    MAKE=$GMAKE
  else
    MAKE=`which make 2> /dev/null`
  fi
fi
if [ -z "$MAKE" ] ; then
  echo "Could not find make/gmake in $PATH"
  exit
fi


CPU_TARGET=`$FPC -iTP`
FPCBIN_VARNAME=FPC_BIN_$CPU_TARGET
DEFAULT_FPC_BIN=${!FPCBIN_VARNAME}
SPECIAL_FPC_BIN=${DEFAULT_FPC_BIN}x80
echo "Default FPC_BIN is $DEFAULT_FPC_BIN"

cd 
cd $SVNDIR
if [ -d fpcsrc ] ; then
  cd fpcsrc
fi

cd compiler

$MAKE rtlclean rtl OPT="-n -gwl -dFPC_SOFT_FPUX80"
$MAKE  -C . clean all OPT="-n -gwl -dFPC_SOFT_FPUX80"  
# ALLOW_WARNINGS=1
cp ./$DEFAULT_FPC_BIN ./$SPECIAL_FPC_BIN
$MAKE rtlclean rtl OPT="-n -gwl -dFPC_SOFT_FPUX80" FPC=`pwd`/$SPECIAL_FPC_BIN
$MAKE clean i386 OPT="-n -gwl -dFPC_SOFT_FPUX80" FPC=`pwd`/$SPECIAL_FPC_BIN
cp ./ppc386 ~/pas/fpc-$CURRENT_VERSION/lib/fpc/$CURRENT_VERSION/ppc386
( cd ~/pas/fpc-$CURRENT_VERSION/bin ; ln -sf ../lib/fpc/$CURRENT_VERSION/ppc386 ppc386 )
$MAKE clean x86_64 OPT="-n -gwl -dFPC_SOFT_FPUX80" FPC=`pwd`/$SPECIAL_FPC_BIN
cp ./ppcx64 ~/pas/fpc-$CURRENT_VERSION/lib/fpc/$CURRENT_VERSION/ppcx64
( cd ~/pas/fpc-$CURRENT_VERSION/bin ; ln -sf ../lib/fpc/$CURRENT_VERSION/ppcx64 ppcx64 )
$MAKE clean i8086 OPT="-n -gwl -dFPC_SOFT_FPUX80" FPC=`pwd`/$SPECIAL_FPC_BIN
cp ./ppc8086 ~/pas/fpc-$CURRENT_VERSION/lib/fpc/$CURRENT_VERSION/ppc8086
( cd ~/pas/fpc-$CURRENT_VERSION/bin ; ln -sf ../lib/fpc/$CURRENT_VERSION/ppc8086 ppc8086 )





