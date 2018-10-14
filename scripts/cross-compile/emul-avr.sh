#!/usr/bin/env bash

CROSSPP=ppcavr

CPU_TARGET=avr
# No avr support in qemu QEMU_CPU=avr
# . $HOME/bin/emul-cpu.sh
if [ -f $HOME/bin/run-avr.sh ] ; then
. $HOME/bin/run-avr.sh $*
else
  echo "No run-avr.sh script found"
fi

