#!/bin/bash

. $HOME/bin/fpc-versions.sh

cd $TRUNKDIR
if [ -d fpcsrc ] ; then
  cd fpcsrc
fi
MERGE_FROM_DIR=`pwd`

cd $FIXESDIR

if [ -d fpcsrc ] ; then
  cd fpcsrc
fi

COMMITFILE=`pwd`/commit.txt

if [ -z "$*" ] ; then
  echo "$0 [-clear] rev_nb1 [rev_nb2 ...]"
  exit
fi

if [ "$1" == "-clear" ] ; then
  shift
  echo "Merge of revisions $* from trunk to fixes_3_2" > $COMMITFILE
fi

merge_list="$*"

echo "Merging $merge_list"

for rev in $merge_list ; do
  echo "Merging revision $rev"
  svn log -c $rev  $MERGE_FROM_DIR >> $COMMITFILE
  svn merge -c $rev $MERGE_FROM_DIR
done

