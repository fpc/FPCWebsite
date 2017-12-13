#!/usr/bin/env bash

if [ "x$1" == "x" ]; then
  sleeptime=240
else
   sleeptime=$1
   echo "Using sleeptime=$sleeptime"
fi

listing=~/.list-tw.txt
sorted1=~/.list-procid1.txt
sorted2=~/.list-procid2.txt
oldprocs=~/.list-oldprocs.txt

ps x -o "pid args" | grep "^ *[0-9]* \./t" > $listing
ps x -o "pid args" | grep "^ *[0-9]* \[t" >> $listing
cat $listing | sort > $sorted1
# Wait for 4 minutes
sleep $sleeptime
ps x -o "pid args" | grep "^ *[0-9]* \./t" > $listing
ps x -o "pid args" | grep "^ *[0-9]* \[t" >> $listing
cat $listing | sort > $sorted2
comm -1 -2 $sorted1 $sorted2 > $oldprocs
nb=`wc -w $oldprocs| awk '{print $1}'`
if [[ $nb -gt 0 ]] ; then
if [ "x$1" != "x" ] ; then
  echo "Killing `cat $oldprocs`"
fi
  grep ".*"  $oldprocs | awk '{print $1}' | xargs -n 1 /bin/kill -s KILL
else
if [ "x$1" != "x" ] ; then
  echo "nb is \"$nb\", oldprocs is `cat $oldprocs`"
fi
fi

