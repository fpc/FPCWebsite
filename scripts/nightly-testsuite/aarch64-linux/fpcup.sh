#!/bin/bash

. $HOME/bin/fpc-versions.sh

export TZ='Europe/Paris'
if [ -z "$HOSTNAME" ] ; then
  HOSTNAME=`uname -n `
fi
HOSTNAME=${HOSTNAME%%\.*}
export run_check_all_rtl=0

if [ "$HOSTNAME" == "gcc115" ] ; then
  export generate_snapshots=1
  export generate_arm_snapshots=1
  export ARM_ABI=gnueabihf
elif [ "$HOSTNAME" == "gcc113" ] ; then
  export generate_snapshots=0
  export run_check_all_rtl=1
  export generate_arm_snapshots=1
  export ARM_ABI=gnueabihf
elif [ "$HOSTNAME" == "gcc118" ] ; then
  export generate_snapshots=0
  export generate_arm_snapshots=0
  export ARM_ABI=gnueabihf
  export skip_arm=1
elif [ "$HOSTNAME" == "gcc185" ] ; then
  export generate_snapshots=1
  export generate_arm_snapshots=0
  export run_check_all_rtl=0
  export ARM_ABI=gnueabihf
  export skip_arm=1
elif [ "$HOSTNAME" == "gcc80" ] ; then
  export generate_arm_snapshots=1
  export run_check_all_rtl=1
  export ARM_ABI=gnueabihf
else
  export generate_snapshots=0
fi
$HOME/bin/fpctrunkup.sh
$HOME/bin/fpcfixesup.sh

# Check if script directory exists
SVNLOGFILE=$HOME/logs/svn-scripts.log

if [ -d $HOME/scripts ] ; then
  SCRIPTDIR=$HOME/scripts
elif [ -d $HOME/pas/scripts ] ; then
  SCRIPTDIR=$HOME/pas/scripts
else
  SCRIPTDIR=
fi

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

