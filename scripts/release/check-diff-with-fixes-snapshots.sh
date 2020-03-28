#!/usr/bin/env bash

snapshot_ok_list=`cat fixes-ok-list.txt `

rc1_ok_list=""
failure_list=""
rc1_ok_count=0
count=0

prefix=fpc-3.2.0rc1-

for target in $snapshot_ok_list ; do
  echo -n "Checking target $target: "
  let count++
  tar=`ls -1tr $prefix$target*tar 2> /dev/null`
  if [ -n "$tar" ] ; then
    if [ -f "$tar" ] ; then
      echo "tar file $tar, OK"
      let rc1_ok_count++
      rc1_ok_list+=" $target"
    else
      all_ok=1
      for t in $tar ; do
        if [ ! -f $t ] ; then
          echo "$t is not a file"
	  all_ok=0
	fi
      done
      if [ $all_ok -eq 1 ] ; then
        echo "all $tar are OK"
	let rc1_ok_count++
      else
        echo "multiple files $tar"
        failure_list+=" $target"
      fi
    fi
  else
    echo "No tar file found"
    failure_list+=" $target"
  fi
done
echo "targets ok: $rc1_ok_count / $count"
echo "failure list: $failure_list"

