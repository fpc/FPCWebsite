#!/usr/bin/env bash

CROSSPP=ppcjvm

CPU_TARGET=jvm
# no jvm qemu QEMU_CPU=ppc
java_bin=`which java`
if [ -f "$java_bin" ] ; then
  $java_bin $*
else
  echo "No java found"
fi
