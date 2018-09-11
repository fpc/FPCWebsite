#!/bin/bash
export FPCBIN=ppcppc64
if [ -z "$FPCSVNDIR" ] ; then
  FPCSVNDIR=$HOME/pas/fixes
fi

~/bin/linux-fpcup.sh

