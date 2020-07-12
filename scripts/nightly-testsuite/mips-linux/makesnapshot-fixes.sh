#!/usr/bin/env bash

FIXES=1

if [ -z "$HOMEBIN" ] ; then
  HOMEBIN=$HOME/bin
fi

. $HOMEBIN/makesnapshot.sh
