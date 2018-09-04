#!/usr/bin/env bash
export FPC_RELEASE_VERSION=3.0.4
export FPC_RELEASE_VERSION_IN_TAR=3.0.4
export FPC_START_VERSION=3.0.2
export FPC_RELEASE_SVN_DIR=release_3_0_4
export FPC_TMP_INSTALL=$HOME/pas/fpc-tmp-$FPC_RELEASE_VERSION

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
else
  echo "Start FPC is $STARTFPC"
fi

START_FPC_VERSION=`$STARTFPC -iV`
if [ "X$FPC_START_VERSION" != "X$START_FPC_VERSION" ] ; then
  echo "Found fpc ($STARTFPC) is not version $FPC_START_VERSION, but $START_FPC_VERSION"
  exit
fi

FPC_NATIVE_BIN=` $STARTFPC -PB `
FPC_NATIVE_BIN=` basename $FPC_NATIVE_BIN `

echo "Native binary is $FPC_NATIVE_BIN"

# Use a fake install directory to avoid troubles
if [ ! -z "$XDG_RUNTIME_DIR" ] ; then
  export TMP_PREFIX=$XDG_RUNTIME_DIR/$USER
elif [ ! -z "$TMP" ] ; then
  export TMP_PREFIX=$TMP/$USER
elif [ ! -z "$TEMP" ] ; then
  export TMP_PREFIX=$TEMP/$USER
else
  export TMP_PREFIX=${HOME}/tmp/$USER
fi
 
cd  $HOME/pas
echo "Checking out release $FPC_RELEASE_SVN_DIR"
if [ -d $FPC_RELEASE_SVN_DIR ] ; then
  cd $FPC_RELEASE_SVN_DIR
  svnstatus=`svn status | grep -n "^\?" `
  cd ..
  if [ "X$svnstatus" != "X" ] ; then
    # echo "Erasing $FPC_RELEASE_SVN_DIR to avoid local changes"
    mkdir -p $FPC_RELEASE_SVN_DIR
  fi
fi

svn checkout https://svn.freepascal.org/svn/fpcbuild/tags/$FPC_RELEASE_SVN_DIR
res=$?
if [ $res -ne 0 ] ; then
  echo "svn checkout failed, res=$res"
  exit
fi


cd $FPC_RELEASE_SVN_DIR/fpcsrc/compiler
$MAKE distclean cycle OPT=-n
$MAKE installsymlink INSTALL_PREFIX=$FPC_TMP_INSTALL FPC=`pwd`/$FPC_NATIVE_BIN
$MAKE fullcycle fullinstall OPT=-n FPC=$FPC_TMP_INSTALL/bin/$FPC_NATIVE_BIN INSTALL_PREFIX=$FPC_TMP_INSTALL
res=$?
if [ $res -ne 0 ] ; then
  echo "make fullcycle fullinstall failed, res=$res"
fi
cd ../../..

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
  echo "Cross configuration detected"
  CROSS=1
  if [ -d $HOME/gnu/binutils/build/$TARGETCPU-$TARGETOS ] ; then
    (
    cd  $HOME/gnu/binutils/build/$TARGETCPU-$TARGETOS
    echo "Generating binutils cross-install for $TARGETCPU-$TARGETOS"
    binutils_dest_dir=$TMP_PREFIX/temp-binutils-$TARGETCPU-$TARGETOS
    make install prefix=$binutils_dest_dir
    cd $binutils_dest_dir
    tar -cvzf $HOME/pas/$FPC_RELEASE_SVN_DIR/binutils-$TARGETCPU-$TARGETOS-$START_SOURCE_CPU-$START_SOURCE_OS.tar.gz .
    cd ..
    rm -Rf $binutils_dest_dir
    )
  fi
else
  CROSS=0
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

if [ -z "$LAST_SUPPORTED_GDB" ] ; then
  LAST_SUPPORTED_GDB=`sed -n "s:.*ifdef *GDB_V\([0-9]*\).*:\1:p" fpcsrc/packages/gdbint/src/gdbint.pp | head -1 `
fi

if [ "$TARGETCPU-$TARGETOS" == "x86_64-linux" ] ; then
  # 7.9.1 does not seem to work correctly for x86_64-linux
  LAST_SUPPORTED_GDB=7.8.2
fi

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

echo "Starting: bash -v ./install/makepack $1"
bash -v ./install/makepack $1
res=$?
echo "Ended: bash -v ./install/makepack $1, res=$res"


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

if [ $# -ne 0 ]; then
  TARGETCPU=`echo $1 | sed 's+\([^-]*\)-.*+\1+'`
  TARGETOS=`echo $1 | sed 's+[^-]*-\(.*\)+\1+'`
else
  TARGETOS=`$STARTFPC -iTO`
  TARGETCPU=`$STARTFPC -iTP`
fi


if [ ! -z "$1" ] ; then
  echo "Target OS: $TARGETOS, Target CPU: $TARGETCPU"
  make_release $1 2>&1 | tee $HOME/logs/make-release-${FPC_RELEASE_VERSION}-${TARGETCPU}-${TARGETOS}.log
fi

# make_release i386-linux 2>&1 | tee $HOME/logs/make-release-${FPC_RELEASE_VERSION}-i386-linux.log
function list_os ()
{
  FPC=$1
  CPU_TARGET=$2
  OPT="$3"
  os_list=` $FPC_TMP_INSTALL/lib/fpc/$FPC_RELEASE_VERSION/$FPC -h | sed -n "s:.*-T\([a-zA-Z_][a-zA-Z_0-9]*\).*:\1:p" || true `
  listed=1
  for os in ${os_list} ; do
   echo "make_release $CPU_TARGET $os \"$OPT\", ignored..."
   date "+%Y-%m-%d %H:%M:%S"
   make_release $CPU_TARGET-$os  | tee $HOME/logs/make-release-${FPC_RELEASE_VERSION}-${CPU_TARGET}-${os}.log
   date "+%Y-%m-%d %H:%M:%S"
  done
  listed=0
}

LOGFILE=$HOME/logs/all-${FPC_RELEASE_SVN_DIR}-releases.log
LISTLOGFILE=$HOME/logs/list-all-releases-${FPC_RELEASE_SVN_DIR}.log

(
echo  "Script $0 started at  `date +%Y-%m-%d-%H-%M `"
echo "Using PATH=$PATH"
echo  "Script $0 started at  `date +%Y-%m-%d-%H-%M `" > $LISTLOGFILE
echo "Using PATH=$PATH" >> $LISTLOGFILE
listed=0
list_os ppca64 aarch64 "-n -g"
# -Tlinux is not listed on `ppca64 -h` output
# make_release aarch64 linux "-n -gl"

export CROSSOPT="-CpARMV6 -CaEABI -CfSOFT"
#make_release arm linux "-n -gl" "CROSSOPT=$CROSSOPT" "-armeabi"
export CROSSOPT=

export ASTARGETLEVEL3="-march=armv5 -mfpu=softvfp "
#make_release arm linux "-n -gl" "-arm_softvfp"
export ASTARGETLEVEL3=

list_os ppcarm arm "-n -gl"
list_os ppcavr avr "-n -gl"
list_os ppc386 i386 "-n -gl"
list_os ppc8086 i8086 "-n -Wmhuge -CX -XX"
list_os ppcjvm jvm "-n"
# obsolote  -Oonopeephole option removed
# Amiga has no lineinfo support
#make_release m68k amiga "-n -g" 
# Other m68k targets
list_os ppc68k m68k "-n -gl"
list_os ppcmips mips "-n -gl"
list_os ppcmipsel mipsel "-n -gl"
list_os ppcppc powerpc "-n -gl"
list_os ppcppc64 powerpc64 "-n -gl"
list_os ppcsparc sparc "-n -gl"
list_os ppcsparc64 sparc64 "-n -gl"
list_os ppcx64 x86_64 "-n -gl"
listed=0
#make_release x86_64 dragonfly "-n -gl"
#make_release m68k netbsd "-n -gl"
echo  "Script $0 ended at  `date +%Y-%m-%d-%H-%M `"
) > $LOGFILE 2>&1

