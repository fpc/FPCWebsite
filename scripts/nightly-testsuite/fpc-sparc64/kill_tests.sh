#!/usr/bin/env bash

PIDFILE=/tmp/muller-test-kill.pid
cyclescript=1

if [ "X$debug" == "X" ] ; then
  debug=0
fi

if [ -f $PIDFILE ] ; then
  # Check if still running
  pid=`cat $PIDFILE`
  psout=`ps xf | grep -w "^[[:space:]]*$pid" 2> /dev/null`
  if [ "X${psout}" != "X" ] ; then
    if [ $debug -eq 1 ] ; then
      echo "Found $pid, $psout"
    fi
    exit
  fi
fi

echo $$ > $PIDFILE

while [ $cyclescript -eq 1 ] ; do
  ls -l /proc/*/exe 2> /dev/null | grep "$HOME/pas/.*/tests/output/"  | sed -n "s:.*/proc/\(.*\)/exe.*:\1:p" | xargs  ps  -o "pid start_time args" -p > ~/.kill.list1 2> /dev/null

  list=`cat ~/.kill.list1 | sed -n "s:^ *\([1-9][0-9]*\) .*:\1:p" `

  if [ "X$1" != "X" ] ; then
    sleep $1
    shift
    cyclescript=0
  else
    sleep 240
  fi

  ls -l /proc/*/exe 2> /dev/null | grep "$HOME/pas/.*/tests/output/"  | sed -n "s:.*/proc/\(.*\)/exe.*:\1:p" | xargs  ps  -o "pid start_time args" -p > ~/.kill.list2 2> /dev/null

  if [ $debug -eq 1 ] ; then
    echo "list2 is \"`cat ~/.kill.list2`\""
  fi

  # Find processes that are present in the two files
  # Exclude header line
  still_running=`cat ~/.kill.list1 ~/.kill.list2 | sort | uniq -d | grep -v "PID START COMMAND" `

  if [ $debug -eq 1 ] ; then
    echo "Still running is \"$still_running\""
  fi

  kill_list=`cat ~/.kill.list1 ~/.kill.list2 | sort | uniq -d | sed -n "s:^ *\([1-9][0-9]*\) .*$:\1:p" `

  if [ "X$kill_list" != "X" ] ; then
    echo "`date +%Y-%m-%d-%H-%M`" >> ~/.kill.listing
    for pid in $kill_list ; do
      ps -o "pid etime stime time args" | grep -w "^[[:space:]]*$pid" >> ~/.kill.listing
    done
    kill -SIGKILL $kill_list
  fi

  sleep 60
done

