#!/usr/bin/env bash

. $HOME/bin/fpc-versions.sh

use_rsync=1

function update_branch ()
{

echo "Starting update_branch $1"

BRANCH_NAME=$1

if [ "$BRANCH_NAME" == "trunk" ] ; then
  CURRENT_VERSION=$TRUNKVERSION
else
  CURRENT_VERSION=$FIXESVERSION
fi

if [ "X$use_rsync" == "X1" ] ; then
  ssh nima "cd pas/rsync/$BRANCH_NAME; svn cleanup ; svn up"
  cd $HOME/pas
  if [ ! -d $BRANCH_NAME ] ; then
    mkdir $BRANCH_NAME
  fi
  cd $BRANCH_NAME
  rsync -avz nima:pas/rsync/$BRANCH_NAME/ .
  res=$?
  if [ $res -ne 0 ] ; then
    echo "rsync failed res=$res"
  fi
else
  rm -f fpcbuild-$BRANCH_NAME.zip

  echo "Starting curl -k -s -S ftp://ftp.freepascal.org/pub/fpc/snapshot/$BRANCH_NAME/source/fpcbuild.zip -o fpcbuild-$BRANCH_NAME.zip"

  curl -k -s -S ftp://ftp.freepascal.org/pub/fpc/snapshot/$BRANCH_NAME/source/fpcbuild.zip -o fpcbuild-$BRANCH_NAME.zip
  res=$?
  if [ $res -ne 0 ] ; then
    echo "curl failed res=$res"
  fi

  if [ -d fpcbuild ] ; then
    rm -Rf fpcbuild
  fi

  unzip fpcbuild-$BRANCH_NAME.zip

  if [ -d $BRANCH_NAME ]  ; then
    rm -Rf $BRANCH_NAME
  fi
  mv fpcbuild $BRANCH_NAME
  cd $BRANCH_NAME
fi

make all OVERRIDEVERSIONCHECK=1 OPT="-n -gl" FPC=$HOME/pas/fpc-$RELEASEVERSION/bin/ppcppc
if [ -f ./fpcsrc/compiler/ppcppc ] ; then
  cp -f ./fpcsrc/compiler/ppcppc $HOME/pas/fpc-$CURRENT_VERSION/lib/fpc/$CURRENT_VERSION/ppcppc
fi
cd ..

## make install OVERRIDEVERSIONCHECK=1 OPT="-n -gl" FPC=$HOME/pas/fpc-$CURRENT_VERSION/bin/ppcppc INSTALL_PREFIX=$HOME/pas/fpc-$CURRENT_VERSION
}

cd $HOME/pas

trunklog=$HOME/logs/trunk/update-trunk.log
update_branch trunk > $trunklog 2>&1

fixeslog=$HOME/logs/fixes/update-fixes.log
update_branch fixes > $fixeslog 2>&1

cd $HOME/pas/scripts
rsync -avz nima:pas/scripts/ .
rsync -avz . nima:pas/scripts/
## /Users/pierre/bin/makesnapshot-new-powerpc.sh

