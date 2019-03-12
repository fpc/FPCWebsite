#!/bin/bash
# arm32 libs not present ...
echo "Starting $0 at `date`" > $HOME/.lastfpctrunkup
export LOG=~/logs/last-32-fpctrunkup
$HOME/bin/linux32-fpctrunkup.sh 1> $LOG 2>&1
export LOG=~/logs/last-fpctrunkup
$HOME/bin/linux64-fpctrunkup.sh 1> ${LOG} 2>&1
echo "res=$?" >> $HOME/.lastfpctrunkup
echo "Finished linux64-fpctrunkup at `date`" >> $HOME/.lastfpctrunkup

if [ -z "$generate_snapshots" ] ; then
  generate_snapshots=0
fi

if [ $generate_snapshots -eq 1 ] ; then
  export LOG=~/logs/last-makesnapshot-trunk
  echo "Starting makesnapshot-trunk at `date`" >> $HOME/.lastfpctrunkup
  $HOME/bin/makesnapshot-trunk.sh 1> ${LOG} 2>&1
  echo "Finished makesnapshot-trunk at `date`" >> $HOME/.lastfpctrunkup
else
  export LOG=~/logs/trunk/check-all-rtl/log
  echo "Starting check-all-rtl.sh at `date`" >> $HOME/.lastfpctrunkup
  $HOME/bin/check-all-rtl.sh 1> ${LOG} 2>&1
  echo "Finished check-all-rtl.sh at `date`" >> $HOME/.lastfpctrunkup
fi
