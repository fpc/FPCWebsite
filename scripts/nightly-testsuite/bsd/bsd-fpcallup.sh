#!/usr/bin/env bash

# Always generate debug information
export NEEDED_OPT=-g

OS=`uname -s | tr '[:upper:]' '[:lower:]' `
CPU=`uname -m | tr '[:upper:]' '[:lower:]' `
if [ "$CPU" == "amd64" ] ; then
  CPU=x86_64
fi
if [ "$CPU" == "arm64" ] ; then
  CPU=aarch64
fi


run_32=1
run_64=1

if [ "$OS" == "openbsd" ] ; then
  if [ "$CPU" == "i386" ] ; then
    run_64=0
  fi
  if [ "$CPU" == "x86_64" ] ; then
    run_32=0
  fi
fi

export FIXES=0
if [ $run_64 -eq 1 ] ; then
  export FPCBIN=ppcx64
  $HOME/bin/bsd-fpccommonup.sh
fi

if [ $run_32 -eq 1 ] ; then
  export FPCBIN=ppc386
  $HOME/bin/bsd-fpccommonup.sh
fi

export FIXES=1
if [ $run_64 -eq 1 ] ; then
  export FPCBIN=ppcx64
  $HOME/bin/bsd-fpccommonup.sh
fi
if [ $run_32 -eq 1 ] ; then
  export FPCBIN=ppc386
  $HOME/bin/bsd-fpccommonup.sh
fi

$HOME/bin/makesnapshottrunk.sh
$HOME/bin/makesnapshotfixes.sh
