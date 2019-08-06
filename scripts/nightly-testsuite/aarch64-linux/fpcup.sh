#!/bin/bash

. $HOME/bin/fpc-versions.sh

TZ='Europe/Paris'; export TZ
if [ -z "$HOSTNAME" ] ; then
  HOSTNAME=`uname -n `
fi

if [ "$HOSTNAME" == "gcc115" ] ; then
  export generate_snapshots=1
  export generate_arm_snapshots=0
  export ARM_ABI=gnueabihf
  export REQUIRED_ARM_OPT=" -dFPC_ARMHF -Cparmv7a -Fl/usr/arm-linux-$ARM_ABI/lib"
elif [ "$HOSTNAME" == "gcc113" ] ; then
  export generate_snapshots=0
  export generate_arm_snapshots=1
  export ARM_ABI=gnueabihf
  export REQUIRED_ARM_OPT=" -dFPC_ARMHF -Cparmv7a -Fl/usr/arm-linux-$ARM_ABI/lib"
else
  export generate_snapshots=0
fi
$HOME/bin/fpctrunkup.sh
$HOME/bin/fpcfixesup.sh
