#!/bin/bash

export PATH=/usr/bin:/bin:/usr/local/bin

HANDLEBIN=$HOME/bin/handle.exe

if [ "$1" == "debug" ]; then
  debug=1
  shift
else
  debug=0
fi

if [ "$1" == "dry" ]; then
  dry=1
else
  dry=0
fi

cd $TRUNKDIR
if [ -d fpcsrc ] ; then
  cd fpcsrc
fi
cd tests
handle_output=`${HANDLEBIN} "tests\output"`
pids="`echo \"$handle_output\" | sed -n 's|.*pid: \([0-9]*\).*|\1|p' `"
if [ "X$pids" == "X" ] ; then
  if [ $debug -eq 1 ] ; then
    echo "No open handle found"
  fi
  exit
else
  if [ $debug -eq 1 ] ; then
   echo "pids=\"$pids\""
   echo "Handle.exe output is\"$handle_output\""
  fi
fi

for pid in $pids ; do
  prog=`ps -W | grep -w $pid `
  progdate=`echo $prog | gawk '{print $7}' `
  proghour=${progdate//:*/}
  if [ $debug -eq 1 ] ; then
    echo "Found pid is \"$pid\""
    echo "prog is \"$prog\""
    echo "prog date is $progdate"
    echo "prog hour is $proghour"
  fi

  if [ "X$proghour" == "X$progdate" ] ; then
    if [ $debug -eq 1 ] ; then
      echo "this prog is too old, trying to kill it $pid"
    fi
  if [ $dry -eq 0 ] ; then
    /bin/kill -f -SIGKILL $pid
  fi
  progafter=`ps -W | grep -w $pid `
  if [ $debug -eq 1 ] ; then
    echo "prog after kill is \"$progafter\""
  fi
  fi
done

if [ $dry -eq 0 ] ; then
  handle_output_after="`${HANDLEBIN} 'tests\output'`"
  pid_after="`echo $handle_output_after | sed 's|.*pid: \([0-9]*\).*|\1|p' `"
  if [ $debug -eq 1 ] ; then
    echo "Handles after is \"$pid_after\""
    echo "prog after kill is \"$progafter\""
  fi
fi

