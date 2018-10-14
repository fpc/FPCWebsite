#!/usr/bin/env bash

CROSSPP=ppcarm

CPU_TARGET=arm
QEMU_OPTS="-cpu cortex-a7"
. $HOME/bin/emul-cpu.sh $*
