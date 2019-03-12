#!/bin/bash
export FPCBIN=ppcarm
export LOGSUF=-32
if [ -z "$REQUIRED_ARM_OPT" ] ; then
  export REQUIRED_ARM_OPT=" -dFPC_ARMHF -Cparmv7a -Fl$HOME/sys-root/arm-linux-gnueabihf/lib"
fi
$HOME/bin/linux-fpctrunkup.sh

