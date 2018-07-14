#!/bin/bash

export PATH=/usr/bin

locks=`ls -1 $HOME/pas/*/lock $HOME/pas/lock 2> /dev/null`

if [ "$1" == "debug" ]; then
  debug=1
fi

if [ "$locks" != "" ]; then
  if [ "$debug" == "1" ]; then
    echo "Found locks \"$locks\""
  fi
  runningmakes=`ps -W | grep -i make`
  sleep 60s
  runningmakes+=`ps -W | grep -i make`
  sleep 60s
  runningmakes+=`ps -W | grep -i make`
  sleep 60s
  runningmakes+=`ps -W | grep -i make`
  newlocks=`ls -1 $HOME/pas/*/lock $HOME/pas/lock 2> /dev/null`
  test -n "$runningmakes"
  hasrunningmakes=$?
  test -n "$newlocks"
  hasnewlocks=$?
  if [ "$debug" == "1" ]; then
    echo "Found newlocks \"$newlocks\""
    echo "Found runningmakes \"$runningmakes\""
  fi

  if [[ "$hasrunningmakes" -eq "1"  && "$hasnewlocks" -eq "0" ]]; then
    echo "Locks file found $newlocks, but no running make"
    rm -Rvf  $HOME/pas/*/lock $HOME/pas/lock
    locks=`ls $HOME/pas/*/lock $HOME/pas/lock 2> /dev/null`
    echo "After rm-Rf locks=$locks"
  fi
fi
