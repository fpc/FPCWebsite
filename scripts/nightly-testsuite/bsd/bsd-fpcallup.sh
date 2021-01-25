#!/usr/bin/env bash

# Always generate debug information
export NEEDED_OPT=-g

OS=`uname -s | tr '[:upper:]' '[:lower:]' `
CPU=`uname -m | tr '[:upper:]' '[:lower:]' `
if [ "$CPU" == "amd64" ] ; then
  CPU=x86_64
fi
if [ "$CPU" == "arm64" ] ; then
  CPU=aarch64
fi


run_32=1
run_64=1

if [ "$OS" == "openbsd" ] ; then
  if [ "$CPU" == "i386" ] ; then
    run_64=0
  fi
  if [ "$CPU" == "x86_64" ] ; then
    run_32=0
  fi
fi

export FIXES=0
if [ $run_64 -eq 1 ] ; then
  export FPCBIN=ppcx64
  $HOME/bin/bsd-fpccommonup.sh
fi

if [ $run_32 -eq 1 ] ; then
  export FPCBIN=ppc386
  $HOME/bin/bsd-fpccommonup.sh
fi
$HOME/bin/makesnapshottrunk.sh

export FIXES=1
if [ $run_64 -eq 1 ] ; then
  export FPCBIN=ppcx64
  $HOME/bin/bsd-fpccommonup.sh
fi
if [ $run_32 -eq 1 ] ; then
  export FPCBIN=ppc386
  $HOME/bin/bsd-fpccommonup.sh
fi

$HOME/bin/makesnapshotfixes.sh

# Check if script directory exists
SVNLOGFILE=$HOME/logs/svn-scripts.log
SVN=`which svn 2> /dev/null`
if [ -f "$SVN" ] ; then
  if [ -n "$SCRIPTDIR" ] ; then
    cd $SCRIPTDIR
    $SVN cleanup > $SVNLOGFILE 2>&1
    $SVN up --non-interactive --accept theirs-conflict >> $SVNLOGFILE 2>&1 
    cd $HOME
  else
    if [ ! -d $HOME/pas/scripts ] ; then
      cd $HOME/pas
      $SVN checkout https://svn.freepascal.org/svn/html/scripts > $SVNLOGFILE 2>&1
    else
      cd $HOME/pas/scripts
      $SVN cleanup > $SVNLOGFILE 2>&1
    fi
    $SVN up --non-interactive --accept theirs-conflict >> $SVNLOGFILE 2>&1 
    cd $HOME
  fi
fi

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


