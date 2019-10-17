#!/usr/bin/env bash

RSYNC=`which rsync 2> /dev/null`
MAKE=`which gmake 2> /dev/null`
FPC=`which fpc 2> /dev/null`
if [ -z "$MAKE" ] ; then
  MAKE=`which make 2> /dev/null`
fi

if [ -z "$FPC" ] ; then
  . $HOME/bin/fpc-versions.sh
  export PATH=$INSTALLRELEASEDIR/bin:$PATH
  FPC=`which fpc 2> /dev/null`
  if [ -z "$FPC" ] ; then
    echo "Could not find fpc binary"
    exit
  fi
fi

if [ -n "$RSYNC" ] ; then
  USE_RSYNC=1
  RSYNC_SERVER=gcc220
  RSYNC_SERVER_FPC_RELEASE_VERSION=3.0.0
  RSYNC_SERVER_BASE_DIR=pas/rsync

  if [ -z "$1" ] ; then
    local_dir=`pwd`
  else
    local_dir=$1
  fi
  local_dirname=`basename $local_dir`
  local_updir=`dirname $local_dir` 
  check_dir_exists=`ssh $RSYNC_SERVER "ls -ld $RSYNC_SERVER_BASE_DIR/$local_dirname 2> /dev/null"`
  echo "update_rsync_dir called, check_dir_exists=\"$check_dir_exists\""
  if [ -n "$check_dir_exists" ] ; then
    cd $local_dir
    $MAKE distclean FPC=$FPC
    if [ -d fpcsrc ] ; then
      cd fpcsrc
    fi
    $MAKE -C tests distclean FPC=$FPC TEST_FPC=$FPC
    $RSYNC -avus $local_dir $RSYNC_SERVER:pas/rsync
    ssh $RSYNC_SERVER "cd $RSYNC_SERVER_BASE_DIR/$local_dirname ; svn cleanup ; svn up  --non-interactive --accept theirs-conflict"
    ssh $RSYNC_SERVER "cd $RSYNC_SERVER_BASE_DIR/$local_dirname ; gmake distclean FPC=\$HOME/pas/fpc-$RSYNC_SERVER_FPC_RELEASE_VERSION/bin/fpc"
    check_fpcsrc_dir_exists=`ssh $RSYNC_SERVER "ls -ld $RSYNC_SERVER_BASE_DIR/$local_dirname/fpcsrc 2> /dev/null"`
    if [ -n "$check_fpcsrc_dir_exists" ] ; then
      RSYNC_SERVER_FPCSRC=fpcsrc
    else
      RSYNC_SERVER_FPCSRC=.
    fi
    ssh $RSYNC_SERVER "cd $RSYNC_SERVER_BASE_DIR/$local_dirname/$RSYNC_SERVER_FPCSRC/tests ; \
        gmake distclean FPC=\$HOME/pas/fpc-$RSYNC_SERVER_FPC_RELEASE_VERSION/bin/fpc \
        TEST_FPC=\$HOME/pas/fpc-$RSYNC_SERVER_FPC_RELEASE_VERSION/bin/fpc"
    $RSYNC -avus --exclude=.svn $RSYNC_SERVER:$RSYNC_SERVER_BASE_DIR/$local_dirname $local_updir
  else
    echo "dir not found on server"
  fi
else
  echo "rsync executable not found"
  exit 1
fi

