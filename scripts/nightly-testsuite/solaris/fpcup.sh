#!/bin/bash

#export WITHCSW=1
~/bin/fpcfixesup.sh
~/bin/fpctrunkup.sh
~/bin/makesnapshots.sh

log=~/logs/svn-scripts.log
cd ~/pas/scripts
svn cleanup 1> $log 2>&1
svn up --accept theirs-conflict 1>> $log 2>&1
