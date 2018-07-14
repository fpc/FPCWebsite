#!/bin/bash
. $HOME/bin/fpc-versions.sh

export TEST_HOSTNAME=windows-xp-32
export STARTVERSION=$RELEASEVERSION
export SVNDIR=$TRUNKDIR

logdir=~/pas/logs
currentlog=${logdir}/current.log
lastlog=${logdir}/last.log
logdiffs=${logdir}/diffs
LOCSTARTPATH=$PATH
CYGDIFF=/usr/bin/diff
CYGCP=/usr/bin/cp
CYGCAT=/usr/bin/cat
USER=admin

(
source $HOME/bin/win32-fpccommonup.sh
if [ "$lockfile" != "" ]; then
  if [ -f $lockfile ]; then
    echo "Deleting $lockfile"
    rm -f $lockfile
  fi
fi
) 1> ${currentlog} 2>&1

# Restore start path 
export PATH=$LOCSTARTPATH

${CYGDIFF} ${lastlog} ${currentlog} > ${logdiffs}
res=$?

if [ "$res" != "0" ] ; then
  echo "Output changed" 
  ${CYGCAT} ${currentlog}
  ${CYGCP} ${currentlog} ${lastlog}
else
  echo "Same output, generate no new output so no email is sent" > /dev/null 
fi

export SVNDIR=$FIXESDIR

logdir=$HOME/pas/logs
currentlog=${logdir}/fixes.log
lastlog=${logdir}/last-fixes.log
logdiffs=${logdir}/diffs-fixes
(
source $HOME/bin/win32-fpccommonup.sh
if [ "$lockfile" != "" ]; then
  if [ -f $lockfile ]; then
    echo "Deleting $lockfile"
    rm -f $lockfile
  fi
fi
) 1> ${currentlog} 2>&1

LOG_TESTS=$logdir/all-tests.log
export TEST_HOSTNAME=windows-xp-32
export STARTVERSION=$RELEASEVERSION
export SVNDIR=$TRUNKDIR
# Restore path 
export PATH=$HOME/pas/fpc-$TRUNKVERSION/bin/i386-win32:$HOME/pas/fpc-$RELEASEVERSION/bin/i386-win32:$LOCSTARTPATH

/cygdrive/c/windows/system32/cmd.exe /C E:\pas\trunk\fpcsrc\tests\test-all.bat > $LOG_TESTS 2>&1
