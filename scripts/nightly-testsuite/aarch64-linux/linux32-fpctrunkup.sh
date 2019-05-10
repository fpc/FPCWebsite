#!/bin/bash
export FPCBIN=ppcarm
export LOGSUF=-32
if [ -z "$REQUIRED_ARM_OPT" ] ; then
  export ARM_ABI=gnueabihf
  export REQUIRED_ARM_OPT=" -dFPC_ARMHF -Cparmv7a -Fl/usr/arm-linux-$ARM_ABI/lib"
fi
$HOME/bin/linux-fpctrunkup.sh

