#!/bin/bash
export FPCBIN=ppca64


if [ -f "/opt/homebrew/bin/brew" ] ;then
  eval $(/opt/homebrew/bin/brew shellenv)
fi

export HOSTNAME=gcc304
export STARTPATH="$PATH"
export FIXES=1

~/bin/darwin-fpccommonup.sh

