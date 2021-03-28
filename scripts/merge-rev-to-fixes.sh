#!/usr/bin/env bash

. $HOME/bin/fpc-versions.sh

notests=1
clear_tests=0
no_fpcsrc=0

# Evaluate all arguments containing an equal sign
# as variable definition, stop as soon as
# one argument does not contain an equal sign
while [ "$1" != "" ] ; do
  if [ "$1" == "--withtests" ] ; then
    notests=0
    shift
    continue
  fi
  if [ "$1" == "--clear" ] ; then
    clear_tests=1
    shift
    continue
  fi
  if [ "$1" == "--no-fpcsrc" ] ; then
    no_fpcsrc=1
    shift
    continue
  fi
  if [ "${1/=/_}" != "$1" ] ; then
    eval export "$1"
    shift
  else
    break
  fi
done


if [ -z "$MAKE" ] ; then
  MAKE=`which gmake 2> /dev/null`
  if [ -z "$MAKE" ] ; then
    MAKE=make
  fi
fi

set -u

cd $TRUNKDIR
if [ $no_fpcsrc -eq 0 ] ; then
  if [ -d fpcsrc ] ; then
    cd fpcsrc
  fi
fi
MERGE_FROM_DIR=`pwd`

cd $FIXESDIR

if [ $no_fpcsrc -eq 0 ] ; then
  if [ -d fpcsrc ] ; then
    cd fpcsrc
  fi
fi

if [ $clear_tests -eq 1 ] ; then
  clear=1
  shift
  rm tests/pristine-* 2> /dev/null
  rm tests/modified-* 2> /dev/null
else
  clear=0
fi

FPCBASEDIR=`pwd`

COMMITFILE=$FPCBASEDIR/commit.txt
PRISTINELOG=$FPCBASEDIR/pristine.log
MODIFIEDLOG=$FPCBASEDIR/modified.log

MAKE_OPT="-j 8"

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

all_args=""

if [ $has_local_mods -eq 0 ] ; then
  all_args="$*"
  if [ -z "$all_args" ] ; then
    if [ -s "./commit-list" ] ; then
      echo "Using list from file ./commit-list"
      merge_list=`cat ./commit-list`
    else
      echo "$0 [--clear] [--notests] [--no-fpcsrc] rev_nb1 [rev_nb2 ...]"
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

if [ $notests -eq 0 ] ; then
  if [ ! -s ./tests/pristine-log ] ; then
    echo "Generating pristine testsuite results"
    (
    $MAKE distclean
    cd compiler
    export INSTALL_PREFIX=$HOME/pas/fpc-$FIXESERSION

    $MAKE cycle installsymlink rtlinstall OPT="-n -gl"
    cd ..
    $MAKE distclean install OPT="-n -gl"
    cd tests
    $MAKE distclean TEST_OPT="-n -gl" TEST_FPC=$HOME/pas/fpc-$FIXESVERSION/bin/ppcx64
    $MAKE $MAKE_OPT full TEST_OPT="-n -gl" TEST_FPC=$HOME/pas/fpc-$FIXESVERSION/bin/ppcx64
    cp output/x86_64-linux/log pristine-log
    cp output/x86_64-linux/longlog pristine-longlog
    cp output/x86_64-linux/faillist pristine-faillist
    cd ..
    ) > $PRISTINELOG 2>&1
  fi
fi

echo "Merging $merge_list"

export EDITOR=vim

for rev in $merge_list ; do
  echo "Merging revision $rev"
  svn log -c $rev $MERGE_FROM_DIR >> $COMMITFILE
  svn merge -c $rev $MERGE_FROM_DIR | tee -a $COMMITFILE
done


if [ $notests -eq 0 ] ; then
  # Build new compiler
  echo "Generating modified testsuite results"
  (
  cd $FPCBASEDIR
  $MAKE distclean
  cd compiler
  $MAKE cycle OPT="-n -gl"
  cd ../tests
  $MAKE distclean TEST_OPT="-n -gl" TEST_FPC=$FPCBASEDIR/compiler/ppcx64
  $MAKE $MAKE_OPT full TEST_OPT="-n -gl" TEST_FPC=$FPCBASEDIR/compiler/ppcx64
  cp output/x86_64-linux/log modified-log
  cp output/x86_64-linux/longlog modified-longlog
  cp output/x86_64-linux/faillist modified-faillist
  cd ..
  ) > $MODIFIEDLOG 2>&1
fi

if [ $notests -eq 0 ] ; then
  diff -c tests/pristine-faillist tests/modified-faillist
  res=$?
  if [ $res -eq 0 ] ; then
    echo "No change detected in native testsuite"
    ready=1
  else
    ready=0
  fi
else
  ready=1
fi

if [ $ready -eq 1 ] ; then
  echo "Ready to commit change:"
  cat commit.txt
  echo "Run 'svn commit -F commit.txt'"
else
  echo "Set of merges generate changes to native testsuite..."
fi
