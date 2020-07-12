#!/usr/bin/env bash

FIXES=0
if [ -z "$HOMEBIN" ] ; then
  HOMEBIN=$HOME/bin
fi

. $HOMEBIN/makesnapshot.sh
