#!/usr/bin/env bash
export FPC_RELEASE_VERSION=3.2.0-rc1
export FPC_RELEASE_VERSION_IN_TAR=3.2.0
export FPC_START_VERSION=3.0.4
export FPC_RELEASE_SVN_DIR=release_3_2_0_rc1

if [ -z "$UPLOAD" ] ; then
  UPLOAD=0
fi

if [ -z "$KEEP_ALL" ] ; then
  KEEP_ALL=0
fi

if [ -z "$BASE_PAS_DIR" ] ; then
  BASE_PAS_DIR=$HOME/pas/release-build
fi
export FPC_TMP_INSTALL=$BASE_PAS_DIR/fpc-tmp-$FPC_RELEASE_VERSION

if [ "X${FPC_RELEASE_SVN_DIR/-rc/}" != "X${FPC_RELEASE_SVN_DIR}" ] ; then
  is_beta=1
  ftpdir=ftp/beta
  tags=tags
  FPC_RELEASE_SUBDIR=${FPC_RELEASE_VERSION/-rc*/}
else
  is_beta=0
  ftpdir=ftp/dist
  tags=tags
  FPC_RELEASE_SUBDIR=${FPC_RELEASE_VERSION}
fi

MAKE=`which gmake`
if [ "X$MAKE" == "X" ] ; then
  MAKE=make
fi

if [ -z "$global_sysroot" ] ; then
  global_sysroot=$HOME/sys-root
fi

logdir=$HOME/logs/$FPC_RELEASE_VERSION
if [ ! -d "$logdir" ] ; then
  mkdir "$logdir"
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

if [ -z "$FPC_NATIVE_BIN" ] ; then
  FPC_NATIVE_BIN=` $STARTFPC -PB `
  FPC_NATIVE_BIN=` basename $FPC_NATIVE_BIN `
fi

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

if [ ! -d $BASE_PAS_DIR ] ; then
  mkdir -p $BASE_PAS_DIR
fi

cd  $BASE_PAS_DIR

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

svn checkout https://svn.freepascal.org/svn/fpcbuild/$tags/$FPC_RELEASE_SVN_DIR
res=$?
if [ $res -ne 0 ] ; then
  echo "svn checkout failed, res=$res"
  exit
fi


cd $FPC_RELEASE_SVN_DIR/fpcsrc/compiler
$MAKE distclean cycle OPT="-n $REQUIRED_OPT" FPC=$STARTFPC
res=$?
if [ $res -ne 0 ] ; then
  echo "make distclean cycle failed, res=$res"
  exit
fi
$MAKE installsymlink INSTALL_PREFIX=$FPC_TMP_INSTALL FPC=`pwd`/$FPC_NATIVE_BIN
$MAKE rtlclean rtl fullcycle fullinstallsymlink OPT="-n $REQUIRED_OPT" FPC=$FPC_TMP_INSTALL/bin/$FPC_NATIVE_BIN INSTALL_PREFIX=$FPC_TMP_INSTALL
res=$?
if [ $res -ne 0 ] ; then
  echo "make fullcycle fullinstall failed, res=$res"
  exit
fi
cd ../../..


# Adds -Fl/dir to CROSSOPT variable

function add_dir ()
{
  pattern="$1"
  file_list=

  if [ "${pattern:0:1}" == "-" ] ; then
    find_expr="${pattern}"
    pattern="$2"
  else
    find_expr=
  fi

  echo "add_dir: testing \"$pattern\""
  if [ "${pattern/\//_}" != "$pattern" ] ; then
    if [ -f "$sysroot/$pattern" ] ; then
      file_list=$pattern
    else
      find_expr="-wholename"
    fi
  else
    find_expr="-iname"
  fi

  if [ -z "$file_list" ] ; then
    file_list=` find $sysroot/ $find_expr "$pattern" `
  fi

  for file in $file_list ; do
    use_file=0
    file_type=`file $file`
    if [ "$file_type" != "${file_type//symbolic link/}" ] ; then
      ls_line=`ls -l $file`
      echo "ls line is \"$ls_line\""
      link_target=${ls_line/* /}
      echo "link target is \"$link_target\""
      if [[ "${link_target:0:1}" == / || "${link_target:0:2}" == ~[/a-z] ]] ; then
        is_absolute=1
        add_dir $link_target
      else
        is_absolute=0
        dir=`dirname $file`
        add_dir $dir/$link_target
      fi
      continue
    fi

    file_is_64=`echo $file_type | grep "64-bit" `
    if [[ ( -n "$file_is_64" ) && ( $is_64 -eq 1 ) ]] ; then
      use_file=1
    fi
    if [[ ( -z "$file_is_64" ) && ( $is_64 -eq 0 ) ]] ; then
      use_file=1
    fi
    if [ $use_file -eq 0 ] ; then
      file_is_64=`objdump -f $file | grep "format.*64" `
      if [[ ( -n "$file_is_64" ) && ( $is_64 -eq 1 ) ]] ; then
        use_file=1
      fi
      if [[ ( -z "$file_is_64" ) && ( $is_64 -eq 0 ) ]] ; then
        use_file=1
      fi
    fi
    if [ "$OS_TARG_LOCAL" == "aix" ] ; then
      # AIX puts 32 and 64 bit versions into the same library
      use_file=1
    fi
    echo "file=$file, is_64=$is_64, file_is_64=\"$file_is_64\""
    if [ $use_file -eq 1 ] ; then
      file_dir=`dirname $file`
      echo "Adding $file_dir"
      if [ "${CROSSOPT/-Fl$file_dir /}" == "$CROSSOPT" ] ; then
        echo "Adding $file_dir directory to library path list"
        CROSSOPT="$CROSSOPT -Fl$file_dir "
        dir_found=1
      fi
    fi
  done
}

# Start of make_release function
function make_release () {
START_SOURCE_OS=`$STARTFPC -iSO`
START_SOURCE_CPU=`$STARTFPC -iSP`
START_OS_TARGET=`$STARTFPC -iTO`
START_CPU_TARGET=`$STARTFPC -iTP`

if [ $# -ne 0 ]; then
#  if [ $# -ne 1 ]; then
#    echo "Usage: $0 [<cpu>-<os>]"
#    exit 1
#  fi
  TARGETCPU=`echo $1 | sed 's+\([^-]*\)-.*+\1+'`
  TARGETOS=`echo $1 | sed 's+[^-]*-\(.*\)+\1+'`
  suffix=$2
else
  TARGETCPU=$START_CPU_TARGET
  TARGETOS=$START_OS_TARGET
fi

is_64=0
case $TARGETCPU in
  aarch64|powerpc64|riscv64|sparc64|x86_64) is_64=1;;
esac

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
    tar -cvzf $BASE_PAS_DIR/$FPC_RELEASE_SVN_DIR/binutils-$TARGETCPU-$TARGETOS-$START_SOURCE_CPU-$START_SOURCE_OS.tar.gz .
    cd ..
    rm -Rf $binutils_dest_dir
    )
  fi
else
  CROSS=0
fi

# ssh  -i ~/.ssh/freepascal fpc@ftpmaster.freepascal.org ls -altr $ftpdir/${FPC_RELEASE_VERSION}/docs
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
  scp -p  -i ~/.ssh/freepascal fpc@ftpmaster.freepascal.org:$ftpdir/${FPC_RELEASE_VERSION}/docs/*  .
  res=$?
fi

cd ..


# We need to install libgdb or add NOGDB=1
# This is only used for internal GDB,
# but default is now GDBMI=1
# which removes the need of internal GDB.
# Only go32v2 still needs internal GDB

cd $BASE_PAS_DIR/$FPC_RELEASE_SVN_DIR

if [ -z "$need_gdb_os_list" ] ; then
  need_gdb_os_list="go32v2"
fi

if [ "${need_gdb_os_list/${OS_TARGET}/}" != "${need_gdb_os_list}" ] ; then

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
      GDBDIR=`ls -1dtr $HOME/pas/libgdb/$TARGETOS-$TARGETCPU-gdb-${GDB_MAIN}* | tail -1`
    fi
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
fi

cd $BASE_PAS_DIR/$FPC_RELEASE_SVN_DIR

# Add a directory to CROSSOPT
# if pattern is found
sysroot=
dir_found=0


CROSSOPT_ORIG="$CROSSOPT"
sysroot=

FULL_TARGET=$1
OS_TARG_LOCAL=$TARGETOS
CPU_TARG_LOCAL=$TARGETCPU

if [ -d "$global_sysroot/${FULL_TARGET}" ] ; then
  sysroot=$global_sysroot/${FULL_TARGET}
else
  # For Android we set special variables if NDK is present
  if [ "${OS_TARG_LOCAL}" == "android" ] ; then
    if [ "${CPU_TARG_LOCAL}" == "aarch64" ] ; then
      if [ -n "$AARCH64_ANDROID_ROOT" ] ; then
        sysroot=$AARCH64_ANDROID_ROOT
      fi
    elif [ "${CPU_TARG_LOCAL}" == "arm" ] ; then
      if [ -n "$ARM_ANDROID_ROOT" ] ; then
        sysroot=$ARM_NDROID_ROOT
      fi
    elif [ "${CPU_TARG_LOCAL}" == "i386" ] ; then
      if [ -n "$I386_ANDROID_ROOT" ] ; then
        sysroot=$I386_ANDROID_ROOT
      fi
    elif [ "${CPU_TARG_LOCAL}" == "mipsel" ] ; then
      if [ -n "$MIPSEL_ANDROID_ROOT" ] ; then
        sysroot=$MIPSEL_ANDROID_ROOT
      fi
    elif [ "${CPU_TARG_LOCAL}" == "x86_64" ] ; then
      if [ -n "$X86_64_ANDROID_ROOT" ] ; then
        sysroot=$X86_64_ANDROID_ROOT
      fi
    fi
  fi 
fi

# Avoid putting --sysroot several time,
# reset sysroot variable if -k--sysroot= is found
if [ "${CROSSOPT/-k--sysroot=/}" != "${CROSSOPT}" ] ; then
  sysroot=
fi

export BUILDFULLNATIVE=0

if [ -n "$sysroot" ] ; then
  echo "Checking for BUILDFULLNATIVE=1, sysroot=\"$sysroot\""
  dir_found=0
  add_dir "crt1.o"
  add_dir "crti.o"
  add_dir "crtbegin.o"
  add_dir "libc.a"
  add_dir -regex "'.*/libc\.so\..*'"
  add_dir "ld.so"
  add_dir -regex "'.*/ld\.so\.[0-9.]*'"
  if [ "${OS_TARG_LOCAL}" == "linux" ] ; then
    add_dir -regex "'.*/ld-linux.*\.so\.*[0-9.]*'"
  fi
  if [ "${OS_TARG_LOCAL}" == "haiku" ] ; then
    add_dir "libroot.so"
    add_dir "libnetwork.so"
  fi
  if [ "${OS_TARG_LOCAL}" == "beos" ] ; then
    add_dir "libroot.so"
    add_dir "libnetwork.so"
  fi
  if [ "$OS_TARG_LOCAL" == "aix" ] ; then
    add_dir "libm.a"
    add_dir "libbsd.a"
    if [ $is_64 -eq 1 ] ; then
      add_dir "crt*_64.o"
    fi
  fi
  if [ $dir_found -eq 1 ] ; then
    export BUILDFULLNATIVE=1
    CROSSOPT="$CROSSOPT -Xd -k--sysroot=$sysroot -XR$sysroot"
    echo "Using BUILDFULLNATIVE=1 with CROSSOPT=\"$CROSSOPT\""
    # -Xr is not supported for AIX OS
    if [ "$OS_TARGET" != "aix" ] ; then
      CROSSOPT="$CROSSOPT -Xr$sysroot"
    fi
    echo "CROSSOPT set to \"$CROSSOPT\""
    export OPTLEVEL3="$CROSSOPT"
  else
    echo "No library found, not using sysroot"
  fi
fi
# make the snapshotecho "Copying docs to here"
cp -fp $BASE_PAS_DIR/docs-$FPC_RELEASE_VERSION/* .

export STARTFPC=$FPC_TMP_INSTALL/bin/$FPC_NATIVE_BIN
if [ $BUILDFULLNATIVE -eq 1  ] ; then
  echo "Starting: bash -v ./install/makepack $1 with BUILDFULLNATIVE=1"
  echo "Using STARTFPC=$STARTFPC"
  bash -v ./install/makepack $1
  build_full_native_res=$?
  echo "Ending: bash -v ./install/makepack $1 with BUILDFULLNATIVE=1, res=$build_full_native_res"
else
  build_full_native_res=1
fi
if [ $build_full_native_res -ne 0 ] ; then
  echo "Starting: bash -v ./install/makepack $1, without BUILDFULLNATIVE=1"
  CROSSOPT="$CROSSOPT_ORIG"
  echo "Using STARTFPC=$STARTFPC"
  bash -v ./install/makepack $1
  res=$?
  echo "Ending: bash -v ./install/makepack $1, without BUILDFULLNATIVE=1, res=$res"
else
  res=0
fi
echo "Ended: bash -v ./install/makepack $1, res=$res"
if [ $res -ne 0 ] ; then
  return
fi

cd $BASE_PAS_DIR/$FPC_RELEASE_SVN_DIR
if [ -n "$suffix" ]; then
  if [ -f "fpc-${FPC_RELEASE_VERSION_IN_TAR}.${TARGETCPU}-${TARGETOS}.tar" ]; then
    mv fpc-${FPC_RELEASE_VERSION_IN_TAR}.${TARGETCPU}-${TARGETOS}.tar fpc-${FPC_RELEASE_VERSION_IN_TAR}.${TARGETCPU}-${TARGETOS}${suffix}.tar
  fi
fi

files=`ls -1 ./fpc-${FPC_RELEASE_VERSION_IN_TAR}.${TARGETCPU}-${TARGETOS}*tar`

if [[ ( "X$files" != "X" ) && ( $UPLOAD -eq 1 ) ]] ; then
  echo "found $files"
  ftp_listing=`ssh -i ~/.ssh/freepascal fpc@ftpmaster.freepascal.org "cd $ftpdir/${FPC_RELEASE_VERSION}/${TARGETCPU}-${TARGETOS}; ls -1tr 2> /dev/null " `
  if [ -z "$ftp_listing" ] ; then
    echo "Creating directory $ftpdir/${FPC_RELEASE_VERSION}/${TARGETCPU}-${TARGETOS} on ftpmaster"
    ssh  -i ~/.ssh/freepascal fpc@ftpmaster.freepascal.org "mkdir -p ${ftpdir}/${FPC_RELEASE_VERSION}/${TARGETCPU}-${TARGETOS}"
    res_ssh=$?
    echo "Transferring $files to that directory"
    scp -p  -i ~/.ssh/freepascal $files fpc@ftpmaster.freepascal.org:${ftpdir}/${FPC_RELEASE_VERSION}/$TARGETCPU-${TARGETOS}
    res_scp=$?
  else
    echo "Directory $ftpdir/${FPC_RELEASE_VERSION}/${TARGETCPU}-${TARGETOS} already contains $ftp_listing, no upload done"
  fi
fi
}
# End of make_release function

if [ $# -ne 0 ]; then
  TARGETCPU=`echo $1 | sed 's+\([^-]*\)-.*+\1+'`
  TARGETOS=`echo $1 | sed 's+[^-]*-\(.*\)+\1+'`
else
  TARGETOS=`$STARTFPC -iTO`
  TARGETCPU=`$STARTFPC -iTP`
fi

echo "STARTFPC is $STARTFPC, default CPU is $TARGETCPU, default OS $TARGETOS"

if [ ! -z "$1" ] ; then
  echo "Target OS: $TARGETOS, Target CPU: $TARGETCPU"
  make_release $1 2>&1 | tee $logdir/make-release-${FPC_RELEASE_VERSION}-${TARGETCPU}-${TARGETOS}.log
fi

# make_release i386-linux 2>&1 | tee $logdir/make-release-${FPC_RELEASE_VERSION}-i386-linux.log

# Start of list_os function
function list_os ()
{
  FPC=$1
  CPU_TARGET=$2
  OPT="$3"
  os_list=` $FPC_TMP_INSTALL/bin/$FPC -h | sed -n "s:.*-T\([a-zA-Z_][a-zA-Z_0-9]*\).*:\1:p" || true `
  listed=1
  for os in ${os_list} ; do
   echo "make_release $CPU_TARGET $os \"$OPT\", ignored..."
   date "+%Y-%m-%d %H:%M:%S"
   make_release $CPU_TARGET-$os  | tee $logdir/make-release-${FPC_RELEASE_VERSION}-${CPU_TARGET}-${os}.log
   date "+%Y-%m-%d %H:%M:%S"
  done
  listed=0
}
# End of list_os function

LOGFILE=$logdir/all-${FPC_RELEASE_SVN_DIR}-releases.log
LISTLOGFILE=$logdir/list-all-releases-${FPC_RELEASE_SVN_DIR}.log

(
echo  "Script $0 started at  `date +%Y-%m-%d-%H-%M `"
echo "Using PATH=$PATH"
echo  "Script $0 started at  `date +%Y-%m-%d-%H-%M `" > $LISTLOGFILE
echo "Using PATH=$PATH" >> $LISTLOGFILE
listed=0
list_os ppca64 aarch64 "-n -g"
# -Tlinux is not listed on `ppca64 -h` output
# make_release aarch64 linux "-n -gl"

export OPTLEVEL2="-dFPC_ARMEL"
export CROSSOPT="-CpARMV6 -CaEABI -CfSOFT"
make_release arm-linux "-armeabi"
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

