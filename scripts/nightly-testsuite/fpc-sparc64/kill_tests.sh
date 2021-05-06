#!/usr/bin/env bash

PIDFILE=/tmp/muller-test-kill.pid
cyclescript=1

if [ "X$debug" == "X" ] ; then
  debug=0
fi

if [ -f $PIDFILE ] ; then
  # Check if still running
  pid=`cat $PIDFILE`
  psout=`ps x | grep -w "^[[:space:]]*$pid" 2> /dev/null`
  if [ "X${psout}" != "X" ] ; then
    if [ $debug -eq 1 ] ; then
      echo "Found $pid, $psout"
    fi
    exit
  fi
fi

echo $$ > $PIDFILE

function get_pid_list ()
{
pid_list=`ps x -U $USER -o pid`
test_list=""
for pid in $pid_list ; do
  ps_cwd=`ls -l /proc/$pid/cwd`
  ps_ps=`ps -fp $pid`
  is_test=`echo "$ps_cwd $ps_ps" | grep "$HOME/pas/.*/tests/ou"  | grep -v "utils/dotest" | grep -vw grep`
  if [ -n "$is_test" ] ; then
    test_list="$test_list $pid"
    echo "$pid"
  fi
done
}

if [ "X$1" != "X" ] ; then
  sleep_time=$1
  shift
#   cyclescript=0
else
  sleep_time=240
fi

while [ $cyclescript -eq 1 ] ; do
  get_pid_list > ~/.kill.list1 2> /dev/null

  if [ $debug -eq 1 ] ; then
    echo "pid list is \"`cat ~/.kill.list1`\""
  fi
  list=`cat ~/.kill.list1 | sed -n "s:^ *\([1-9][0-9]*\) .*:\1:p" `

  sleep $sleep_time

  get_pid_list > ~/.kill.list2 2> /dev/null

  if [ $debug -eq 1 ] ; then
    echo "list2 is \"`cat ~/.kill.list2`\""
  fi

  # Find processes that are present in the two files
  # Exclude header line
  still_running=`cat ~/.kill.list1 ~/.kill.list2 | sort | uniq -d | grep -v "PID START COMMAND" `

  if [ $debug -eq 1 ] ; then
    echo "Still running is \"$still_running\""
  fi

  kill_list=`cat ~/.kill.list1 ~/.kill.list2 | sort | uniq -d | sed -n "s:^ *\([1-9][0-9]*\)[^0-9]*.*$:\1:p" `

  if [ "X$kill_list" != "X" ] ; then
    echo "`date +%Y-%m-%d-%H-%M`" >> ~/.kill.listing
    if [ $debug -eq 1 ] ; then
      echo "Going to kill \"$kill_list\""
    fi
    for pid in $kill_list ; do
      ps  | grep -w "^[[:space:]]*$pid[[:space:]]" >> ~/.kill.listing
    done
    kill -KILL $kill_list
  fi

  sleep $sleep_time
done

