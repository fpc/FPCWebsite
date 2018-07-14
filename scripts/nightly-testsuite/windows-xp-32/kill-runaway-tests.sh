#!/bin/bash

export PATH=/usr/bin

if [ "$1" == "debug" ]; then
  debug=1
  waittime=5s
else
  debug=0
  waittime=300s
fi

runningtests=`ps -W | grep 'fpcsrc\\\\tests\\\\output' `
if [ $debug -eq 1 ] ; then
  echo "running test is \"$runningtests\""
fi
if [ ! "x$runningtests" == "x" ] ; then
  echo $runningtests > ~/.runningtests
  sleep $waittime
  newtests=`ps -W | grep 'fpcsrc\\\\tests\\\\output' `
  echo $newtests >> ~/.runningtests
  lines=`cat ~/.runningtests `
  if [ $debug -eq 1 ] ; then
    echo "lines \"$lines\""
  fi
  pid=`cat ~/.runningtests | sort | uniq -d | gawk '{ print $1}' `
  if [ "x$pid" != "x" ] ; then
    if [ $debug -eq 1 ] ; then
      echo "Killing \"$pid\""
    else
      echo "Killing pid $pid, line=\"$lines\""
    fi
    /bin/kill -f $pid
  fi
fi
