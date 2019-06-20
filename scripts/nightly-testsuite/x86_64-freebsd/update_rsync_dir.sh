#!/usr/bin/env bash

RSYNC=`which rsync 2> /dev/null`

if [ -n "$RSYNC" ] ; then
  USE_RSYNC=1
  RSYNC_SERVER=gcc220
  RSYNC_SERVER_BASE_DIR=pas/rsync

  local_dir=$1
  local_dirname=`basename $local_dir`
  local_updir=`dirname $local_dir` 
  check_dir_exists=`ssh $RSYNC_SERVER "ls -ld $RSYNC_SERVER_BASE_DIR/$local_dirname" 2> /dev/null`
  echo "update_rsync_dir called, check_dir_exists=\"$check_dir_exists\""
  if [ -n "$check_dir_exists" ] ; then
    $RSYNC -avus $local_dir $RSYNC_SERVER:pas/rsync
    ssh $RSYNC_SERVER "cd $RSYNC_SERVER_BASE_DIR/$local_dirname ; svn cleanup ; svn up  --non-interactive --accept theirs-conflict"
    $RSYNC -avus --exclude=.svn $RSYNC_SERVER:$RSYNC_SERVER_BASE_DIR/$local_dirname $local_updir
  else
    echo "dir not found on server"
  fi
else
  echo "rsync executable not found"
  exit 1
fi

