#!/bin/bash
export FPCBIN=ppcppc
if [ -z "$SVNDIR" ] ; then
  SVNDIR=$HOME/pas/fixes
fi

~/bin/linux-fpcup.sh

