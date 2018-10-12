env > $HOME/.env.txt
date >> $HOME/.env.txt
$HOME/bin/fpcfixesup.sh
$HOME/bin/fpctrunkup.sh

FIXES=0
FPC_BIN=ppcppc
. $HOME/bin/makesnapshot-aix.sh
FPC_BIN=ppcppc64
. $HOME/bin/makesnapshot-aix.sh

FIXES=1
FPC_BIN=ppcppc
. $HOME/bin/makesnapshot-aix.sh
FPC_BIN=ppcppc64
. $HOME/bin/makesnapshot-aix.sh
