#!/bin/bash
export FIXES=1
 $HOME/bin/linux-fpccommonup.sh
 $HOME/bin/makesnapshotfixes.sh
 $HOME/bin/test-optimizations.sh --full
export FIXES=0
 $HOME/bin/linux-fpccommonup.sh
 $HOME/bin/makesnapshottrunk.sh
 $HOME/bin/test-optimizations.sh --full

if [ -d $HOME/scripts ] ; then
  SCRIPTDIR=$HOME/scripts
elif [ -d $HOME/pas/scripts ] ; then
  SCRIPTDIR=$HOME/pas/scripts
else
  SCRIPTDIR=
fi
# Check if script directory exists
SVNLOGFILE=$HOME/logs/svn-scripts.log
if [ -n "$SCRIPTDIR" ] ; then
  cd $SCRIPTDIR
  svn cleanup > $SVNLOGFILE 2>&1
  svn up --non-interactive --accept theirs-conflict >> $SVNLOGFILE 2>&1
  cd $HOME
else
  if [ ! -d $HOME/pas/scripts ] ; then
    cd $HOME/pas
    svn checkout https://svn.freepascal.org/svn/html/scripts > $SVNLOGFILE 2>&1
  else
    cd $HOME/pas/scripts
    svn cleanup > $SVNLOGFILE 2>&1
  fi
  svn up --non-interactive --accept theirs-conflict >> $SVNLOGFILE 2>&1
  cd $HOME
fi

export SVNDIR=fixes
$HOME/bin/test-go32v2.sh
# $HOME/bin/test-msdos.sh

export SVNDIR=trunk
$HOME/bin/test-go32v2.sh
# $HOME/bin/test-msdos.sh


