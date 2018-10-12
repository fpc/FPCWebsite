#!/usr/bin/env bash

CROSSPP=ppcarm

CPU_TARGET=arm
OS_TARGET=linux
QEMU_OPTS="-cpu cortex-a7"
. $HOME/bin/emul-cpu.sh
