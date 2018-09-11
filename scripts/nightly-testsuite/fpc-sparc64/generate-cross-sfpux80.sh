#!/bin/bash
. $HOME/bin/fpc-versions.sh

if [ "X$FIXES" == "X1" ] ; then
  SVNDIR=$FIXESDIR
  CURRENT_VERSION=$FIXESVERSION
else
  SVNDIR=$TRUNKDIR
  CURRENT_VERSION=$TRUNKVERSION
fi

export PATH=/home/${USER}/pas/fpc-${CURRENT_VERSION}/bin:${PATH}

cd 
cd $SVNDIR
if [ -d fpcsrc ] ; then
  cd fpcsrc
fi

cd compiler

make rtlclean rtl OPT="-n -gwl -dFPC_SOFT_FPUX80"
make  -C . clean all OPT="-n -gwl -dFPC_SOFT_FPUX80"  
# ALLOW_WARNINGS=1
cp ./ppcsparc ./ppcsparcx80
make rtlclean rtl OPT="-n -gwl -dFPC_SOFT_FPUX80" FPC=`pwd`/ppcsparcx80
make clean i386 OPT="-n -gwl -dFPC_SOFT_FPUX80" FPC=`pwd`/ppcsparcx80
cp ./ppc386 ~/pas/fpc-$CURRENT_VERSION/bin/ppc386
make clean x86_64 OPT="-n -gwl -dFPC_SOFT_FPUX80" FPC=`pwd`/ppcsparcx80
cp ./ppcx64 ~/pas/fpc-$CURRENT_VERSION/bin/ppcx64
make clean i8086 OPT="-n -gwl -dFPC_SOFT_FPUX80" FPC=`pwd`/ppcsparcx80
cp ./ppc8086 ~/pas/fpc-$CURRENT_VERSION/bin/ppc8086





