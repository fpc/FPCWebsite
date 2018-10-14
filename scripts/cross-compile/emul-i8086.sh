#!/usr/bin/env bash

CROSSPP=ppc8086

CPU_TARGET=i8086
# No i8086 support in qemu QEMU_CPU=i8086
if [ -f $HOME/bin/dosbox.sh ] ; then
  . $HOME/bin/dosbox.sh $*
else
  echo "No dosbox.sh script"
fi

