#!/bin/bash
# arm32 libs not present ...
# ~/bin/linux32-fpcfixesup
echo "Starting $0 at `date`" > $HOME/.lastfpcfixesup
export LOG=~/logs/last-fpcfixesup
$HOME/bin/linux64-fpcfixesup.sh 1> ${LOG} 2>&1
echo "res=$?" >> $HOME/.lastfpcfixesup
echo "Finished linux64-fpcfixesup at `date`" >> $HOME/.lastfpcfixesup

export LOG=~/logs/last-makesnapshot-fixes
echo "Starting makesnapshot-fixes at `date`" >> $HOME/.lastfpcfixesup
$HOME/bin/makesnapshot-fixes.sh 1> ${LOG} 2>&1
echo "Finished makesnapshot-fixes at `date`" >> $HOME/.lastfpcfixesup

