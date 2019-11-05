#!/bin/bash

. $HOME/bin/fpc-versions.sh

export SVN=`which svn`

cd $HOME/pas/trunk/fpcsrc/tests
log=`pwd`/test-all-bat.log

cmd /c test-all.bat  1> ${log} 2>&1

scripts_found=0
if [ -d $HOME/scripts ] ; then
  cd $HOME/scripts
  scripts_found=1
elif [ -d $HOME/pas/scripts ] ; then
  cd $HOME/pas/scripts
  scripts_found=1
fi


if [ $scripts_found -eq 1 ]; then
  ${SVN} cleanup --non-interactive >> ${log} 2>&1
  ${SVN} up --accept theirs-full --force >> ${log} 2>&1
else
  echo "scripts directory not found" >> ${log}
fi
