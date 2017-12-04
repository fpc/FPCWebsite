#!/bin/bash

. $HOME/bin/fpc-versions.sh

cd $HOME/pas/trunk/fpcsrc/tests
log=`pwd`/test-all-bat.log

cmd /c test-all.bat  1> ${log} 2>&1

