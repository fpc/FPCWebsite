#!/bin/bash

. $HOME/bin/fpcversions.sh

if [ -n "$FIXES" ] ;then
  svndir=$FIXESDIR
else
  svndir=$TRUNKDIR
fi

svndirname=`basename $svndir`

cd $svndir

if [ -d fpcsrc ] ; then
  cd fpcsrc
fi

cd tests

make -C ../rtl distclean
make -C ../packages distclean

do_one () {
  TEST_OPT="$1"
  TEST_DIR=$2
  LOGFILE=$HOME/logs/$svndirname/log-$TEST_DIR.log
  if [ -d $TEST_DIR ] ; then
    rm -Rf $TEST_DIR
  fi
  (
    make distclean allexectests TEST_OPT="$TEST_OPT" TEST_FPC=ppcmips
    mv output $TEST_DIR
  ) > $LOGFILE 2>&1 
}

do_one "-Cg -altr -O-" output-Cg-O-
do_one "-Cg -altr -O1" output-Cg-O1
do_one "-Cg -altr -O2" output-Cg-O2
do_one "-Cg -altr -O3" output-Cg-O3
do_one "-Cg -altr -O4" output-Cg-O4

