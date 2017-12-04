#!/bin/bash
# arm32 libs not present ...
# ~/bin/linux32-fpctrunkup
echo "Starting $0 at `date`" > $HOME/.lastfpctrunkup
export LOG=~/logs/last-fpctrunkup
$HOME/bin/linux64-fpctrunkup.sh 1> ${LOG} 2>&1
echo "res=$?" >> $HOME/.lastfpctrunkup
echo "Finished linux64-fpctrunkup at `date`" >> $HOME/.lastfpctrunkup

export LOG=~/logs/last-makesnapshot-trunk
echo "Starting makesnapshot-trunk at `date`" >> $HOME/.lastfpctrunkup
$HOME/bin/makesnapshot-trunk.sh 1> ${LOG} 2>&1
echo "Finished makesnapshot-trunk at `date`" >> $HOME/.lastfpctrunkup

