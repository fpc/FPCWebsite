#!/usr/bin/env bash

CROSSPP=ppcppc

CPU_TARGET=powerpc
QEMU_CPU=ppc
QEMU_OPTS="$QEMU_OPTS -strace -cpu 7450"
DEBUG_EMUL=1
. $HOME/bin/emul-cpu.sh $*
