#!/bin/bash
export FPCBIN=ppcppc
if [ -z "$FPCSVNDIR" ] ; then
  FPCSVNDIR=$HOME/pas/fixes
fi

~/bin/linux-fpcup.sh

