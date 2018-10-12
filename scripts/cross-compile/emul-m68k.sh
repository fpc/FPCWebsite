#!/usr/bin/env bash

CROSSPP=ppc68k

CPU_TARGET=m68k
OS_TARGET=linux
QEMU_OPTS="-cpu m68040"
. $HOME/bin/emul-cpu.sh
