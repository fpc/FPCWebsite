#!/bin/bash
# arm32 libs not present ...
echo "Starting $0 at `date`" > $HOME/.lastfpcfixesup

if [ "$skip_arm" != "1" ] ; then
  export LOG=~/logs/last32-fpcfixesup
  $HOME/bin/linux32-fpcfixesup.sh 1> $LOG 2>&1
  generate_arm_snapshots=0
fi

export LOG=~/logs/last-fpcfixesup
$HOME/bin/linux64-fpcfixesup.sh 1> ${LOG} 2>&1
echo "res=$?" >> $HOME/.lastfpcfixesup
echo "Finished linux64-fpcfixesup at `date`" >> $HOME/.lastfpcfixesup

if [ -z "$generate_snapshots" ] ; then
  generate_snapshots=0
fi

if [ -z "$generate_arm_snapshots" ] ; then
  generate_arm_snapshots=0
fi

if [ $generate_snapshots -eq 1 ] ; then
  export LOG=~/logs/last-makesnapshot-fixes
  echo "Starting makesnapshot-fixes at `date`" >> $HOME/.lastfpcfixesup
  $HOME/bin/makesnapshot-fixes.sh 1> ${LOG} 2>&1
  echo "Finished makesnapshot-fixes at `date`" >> $HOME/.lastfpcfixesup
else
  export FIXES=1
  export LOG=~/logs/fixes/check-targets/80x-log
  echo "Starting generate-cross-sfpux80.sh at `date`" >> $HOME/.lastfpcfixesup
  $HOME/bin/generate-cross-sfpux80.sh 1> ${LOG} 2>&1
  echo "Finished generate-cross-sfpux80.sh at `date`" >> $HOME/.lastfpcfixesup
  export LOG=~/logs/fixes/check-targets/log
  echo "Starting check-all-rtl.sh at `date`" >> $HOME/.lastfpcfixesup
  $HOME/bin/check-all-rtl.sh 1> ${LOG} 2>&1
  echo "Finished check-all-rtl.sh at `date`" >> $HOME/.lastfpcfixesup
fi

if [ $generate_arm_snapshots -eq 1 ] ; then
  export LOG=~/logs/last-makesnapshot32-fixes
  echo "Starting makesnapshot32-fixes at `date`" >> $HOME/.lastfpcfixesup
  $HOME/bin/makesnapshot32-fixes.sh 1> ${LOG} 2>&1
  echo "Finished makesnapshot32-fixes at `date`" >> $HOME/.lastfpcfixesup
fi
