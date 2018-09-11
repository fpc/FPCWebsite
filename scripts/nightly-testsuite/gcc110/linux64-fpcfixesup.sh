#!/bin/bash
export FPCBIN=ppcppc64
if [ -z "$SVNDIR" ] ; then
  SVNDIR=$HOME/pas/fixes
fi

~/bin/linux-fpcup.sh

