#!/usr/bin/env bash
export FPC_RELEASE_VERSION=3.0.4
export FPC_RELEASE_VERSION_IN_TAR=3.0.4
export FPC_START_VERSION=3.0.2
export FPC_RELEASE_SVN_DIR=release_3_0_4

UPLOAD=0

if [ "X${FPC_RELEASE_VERSION//rc/}" != "X${FPC_RELEASE_VERSION}" ] ; then
  is_beta=1
  ftpdir=ftp/beta
else
  is_beta=0
  ftpdir=ftp/dist
fi

MAKE=`which gmake`
if [ "X$MAKE" == "X" ] ; then
  MAKE=make
fi

echo "Using $MAKE, version: `$MAKE --version`"

if [ -z "$STARTFPC" ] ; then
  STARTFPC=`which fpc`
fi

if [ "X$STARTFPC" == "X" ] ; then
  export PATH=$HOME/pas/fpc-${FPC_START_VERSION}/bin:$PATH
  STARTFPC=`which fpc`
fi

if [ "X$STARTFPC" == "X" ] ; then
  echo "Unable to find start fpc binary"
  exit
fi

START_FPC_VERSION=`$STARTFPC -iV`
if [ "X$FPC_START_VERSION" != "X$START_FPC_VERSION" ] ; then
  echo "Found fpc ($STARTFPC) is not version $FPC_START_VERSION, but $START_FPC_VERSION"
  exit
fi


function make_release () {
START_SOURCE_OS=`$STARTFPC -iSO`
START_SOURCE_CPU=`$STARTFPC -iSP`
START_OS_TARGET=`$STARTFPC -iTO`
START_CPU_TARGET=`$STARTFPC -iTP`

if [ $# -ne 0 ]; then
  if [ $# -ne 1 ]; then
    echo "Usage: $0 [<cpu>-<os>]"
    exit 1
  fi
  TARGETCPU=`echo $1 | sed 's+\([^-]*\)-.*+\1+'`
  TARGETOS=`echo $1 | sed 's+[^-]*-\(.*\)+\1+'`
else
  TARGETCPU=$START_CPU_TARGET
  TARGETOS=$START_OS_TARGET
fi

FULLTARGET=

if [ "$TARGETCPU-$TARGETOS" != "$START_SOURCE_CPU-$START_SOURCE_OS" ] ; then
  CROSS=1
else
  CROSS=0
fi

cd  $HOME/pas
echo "Checking out release $FPC_RELEASE_SVN_DIR"
if [ -d $FPC_RELEASE_SVN_DIR ] ; then
  cd $FPC_RELEASE_SVN_DIR
  svnstatus=`svn status | grep -n "^\?" `
  cd ..
  if [ "X$svnstatus" != "X" ] ; then
    echo "Erasing $FPC_RELEASE_SVN_DIR to avoid local changes"
    mkdir -p $FPC_RELEASE_SVN_DIR
  fi
fi

svn checkout https://svn.freepascal.org/svn/fpcbuild/tags/$FPC_RELEASE_SVN_DIR
res=$?
if [ $res -ne 0 ] ; then
  echo "svn checkout failed, res=$res"
  exit
fi

# ssh  -i ~/.ssh/freepascal fpc@ftpmaster.freepascal.org ls -altr ftp/beta/${FPC_RELEASE_VERSION}/docs
if [ -d docs-${FPC_RELEASE_VERSION} ] ; then
  echo "Erasing directory docs-$FPC_RELEASE_VERSION"
  rm -Rf docs-$FPC_RELEASE_VERSION
fi

mkdir docs-${FPC_RELEASE_VERSION}
cd docs-${FPC_RELEASE_VERSION}/
echo "Copying doc files to docs-$FPC_RELEASE_VERSION"

scp -p  -i ~/.ssh/freepascal fpc@ftpmaster.freepascal.org:${ftpdir}/${FPC_RELEASE_VERSION}/docs/*  .
res=$?
if [ $res -ne 0 ] ; then
  # Using previous RC
  scp -p  -i ~/.ssh/freepascal fpc@ftpmaster.freepascal.org:ftp/beta/${FPC_RELEASE_VERSION}-rc1/docs/*  .
  res=$?
fi

cd ..


# We need to install libgdb or add NOGDB=1

cd $HOME/pas/$FPC_RELEASE_SVN_DIR

LAST_SUPPORTED_GDB=`sed -n "s:.*ifdef *GDB_V\([0-9]*\).*:\1:p" fpcsrc/packages/gdbint/src/gdbint.pp | head -1 `
echo "Last supported GDB version is $LAST_SUPPORTED_GDB"
GDB_MAIN=${LAST_SUPPORTED_GDB:0:1}
if [ "X${LAST_SUPPORTED_GDB:1:1}" == "X0" ] ; then
  GDB_SUB=${LAST_SUPPORTED_GDB:2:1}
else
  GDB_SUB=${LAST_SUPPORTED_GDB:1:2}
fi
GDB_VER=${GDB_MAIN}.${GDB_SUB}

if [ $CROSS -eq 1 ] ; then
  export NOGDB=1
else
  GDBDIR=`ls -1dtr $HOME/pas/libgdb/gdb-${GDB_VER}* | tail -1`
  if [ "X$GDBDIR" == "X" ] ; then
    echo "libgdb not found, setting NOGDB=1"
    export NOGDB=1
  else
    mkdir -p fpcsrc/libgdb/$TARGETOS
    cd fpcsrc/libgdb/$TARGETOS
    echo "Adding symbolic link to $GDBDIR as `pwd`/$TARGETCPU"
    if [ -d $TARGETCPU ] ; then
      rm -Rf $TARGETCPU
    fi
    ln -s $GDBDIR $TARGETCPU
  fi
fi

cd $HOME/pas/$FPC_RELEASE_SVN_DIR

echo "Copying docs to here"
cp -fp $HOME/pas/docs-$FPC_RELEASE_VERSION/* .

./install/makepack $1


cd $HOME/pas/$FPC_RELEASE_SVN_DIR
files=`ls -1 ./fpc-${FPC_RELEASE_VERSION_IN_TAR}.${TARGETCPU}-${TARGETOS}*tar`

if [[ ("X$files" != "X") && ($UPLOAD -eq 1) ]] ; then
  echo "found $files"
  echo "Creating directory ftp/beta/${FPC_RELEASE_VERSION}/${TARGETCPU}-${TARGETOS} on ftpmaster"
  ssh  -i ~/.ssh/freepascal fpc@ftpmaster.freepascal.org "mkdir ${ftpdir}/${FPC_RELEASE_VERSION}/${TARGETCPU}-${TARGETOS}"
  echo "Transferring $files to that directory"
  scp -p  -i ~/.ssh/freepascal $files fpc@ftpmaster.freepascal.org:${ftpdir}/${FPC_RELEASE_VERSION}/$TARGETCPU-${TARGETOS}
fi
}

TARGETOS=`$STARTFPC -iTO`
TARGETCPU=`$STARTFPC -iTP`


make_release 2>&1 | tee $HOME/logs/make-release-${FPC_RELEASE_VERSION}-${TARGETCPU}-${TARGETOS}.log

# make_release i386-linux 2>&1 | tee $HOME/logs/make-release-${FPC_RELEASE_VERSION}-i386-linux.log

