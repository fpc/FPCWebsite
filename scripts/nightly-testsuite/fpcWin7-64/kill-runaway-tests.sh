#!/bin/bash

export PATH=/usr/bin:$HOME/bin

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
  echo "$runningtests" > ~/.runningtests
  sleep $waittime
  newtests=`ps -W | grep 'fpcsrc\\\\tests\\\\output' `
  echo "$newtests" >> ~/.runningtests
  lines=`cat ~/.runningtests `
  if [ $debug -eq 1 ] ; then
    echo "lines \"$lines\""
  fi
  pids=`cat ~/.runningtests | sort | uniq -d | gawk '{ print $1}' `
  if [ "x$pids" != "x" ] ; then
    if [ $debug -eq 1 ] ; then
      echo "Killing \"$pids\""
    else
      echo "Killing pid $pids, line=\"$lines\""
    fi
    for pid in $pids ; do
      /bin/kill -f $pid
    done
  fi
fi

# Look for handles containing test\output

runningtests=`handle "fpcsrc\\\\tests\\\\output\\\\" 2> /dev/null | grep 'fpcsrc\\\\tests\\\\output\\\\' | grep -v dotest.exe `
if [ $debug -eq 1 ] ; then
  echo "running test is \"$runningtests\""
fi
if [ ! "x$runningtests" == "x" ] ; then
  echo "$runningtests" > ~/.runningtests
  sleep $waittime
  newtests=`handle "fpcsrc\\\\tests\\\\output\\\\" 2> /dev/null | grep 'fpcsrc\\\\tests\\\\output\\\\' `
  echo "$newtests" >> ~/.runningtests
  lines=`cat ~/.runningtests `
  if [ $debug -eq 1 ] ; then
    echo "lines \"$lines\""
  fi
  pids=`cat ~/.runningtests | sort | uniq -d | gawk '{ print $3}' `
  if [ "x$pids" != "x" ] ; then
    for pid in $pids ; do
      is_test=` ps -W | grep -w $pid | grep output `
      if [ "x$is_test" != "x" ]; then
        if [ $debug -eq 1 ] ; then
          echo "Killing \"$pid\""
        else
          echo "Killing pid $pid, line=\"$lines\""
        fi
        /bin/kill -f $pid
      fi
    done
  fi
fi


