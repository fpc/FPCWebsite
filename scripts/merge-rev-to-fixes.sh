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

FPCBASEDIR=`pwd`

COMMITFILE=$FPCBASEDIR/commit.txt
PRISTINELOG=$FPCBASEDIR/pristine.log
MODIFIEDLOG=$FPCBASEDIR/modified.log

export PATH=$HOME/pas/fpc-$FIXESVERSION/bin:$PATH

svn_status=`svn st -q`
if [ -z "$svn_status" ] ; then
  has_local_mods=0
else
  has_local_mods=1
fi

if [ -s ./tests/modified-log ] ; then
  if [ -z "$svn_status" ] ; then
    mv ./tests/modified-log ./tests/pristine-log
    mv ./tests/modified-longlog ./tests/pristine-longlog
    mv ./tests/modified-faillist ./tests/pristine-faillist
  fi
fi

if [ "$1" == "-clear" ] ; then
  clear=1
  shift
  rm tests/pristine-* 2> /dev/null
  rm tests/modified-* 2> /dev/null
else
  clear=0
fi

if [ $has_local_mods -eq 0 ] ; then
  all_args="$*"
  if [ -z "$all_args" ] ; then
    if [ -s "./commit-list" ] ; then
      echo "Using list from file ./commit-list"
      merge_list=`cat ./commit-list`
    else
      echo "$0 [-clear] rev_nb1 [rev_nb2 ...]"
      exit
    fi
  else
    echo "Using command line parameters $all_args"
    merge_list="$all_args"
  fi
fi

if [ $clear -eq 1 ] ; then
  echo "Merge of revisions $merge_list from trunk to fixes_3_2" > $COMMITFILE
fi

if [ ! -s ./tests/pristine-log ] ; then
  echo "Generating pristine testsuite results"
  (
  make distclean
  cd compiler
  export INSTALL_PREFIX=$HOME/pas/fpc-$FIXESERSION

  make cycle installsymlink rtlinstall OPT="-n -gl"
  cd ..
  make distclean install OPT="-n -gl"
  cd tests
  make distclean full TEST_OPT="-n -gl" TEST_FPC=$HOME/pas/fpc-$FIXESVERSION/bin/ppcx64
  cp output/x86_64-linux/log pristine-log
  cp output/x86_64-linux/longlog pristine-longlog
  cp output/x86_64-linux/faillist pristine-faillist
  cd ..
  ) > $PRISTINELOG 2>&1
fi

echo "Merging $merge_list"

export EDITOR=vim

for rev in $merge_list ; do
  echo "Merging revision $rev"
  svn log -c $rev $MERGE_FROM_DIR >> $COMMITFILE
  svn merge -c $rev $MERGE_FROM_DIR | tee -a $COMMITFILE
done


# Build new compiler
echo "Generating modified testsuite results"
  (
  cd $FPCBASEDIR
  make distclean
  cd compiler
  make cycle OPT="-n -gl"
  cd ../tests
  make distclean full TEST_OPT="-n -gl" TEST_FPC=$FPCBASEDIR/compiler/ppcx64
  cp output/x86_64-linux/log modified-log
  cp output/x86_64-linux/longlog modified-longlog
  cp output/x86_64-linux/faillist modified-faillist
  cd ..
  ) > $MODIFIEDLOG 2>&1


diff -c tests/pristine-faillist tests/modified-faillist
