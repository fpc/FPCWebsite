#!/usr/bin/env bash
export FPC_RELEASE_VERSION=3.2.0
export FPC_RELEASE_VERSION_LAST_RC=3.2.0-rc1
export FPC_RELEASE_VERSION_IN_TAR=3.2.0
export FPC_START_VERSION=3.0.4
export FPC_RELEASE_SVN_DIR=release_3_2_0

export BUILDFULLNATIVE_OS_LIST="win32 win64"

start_tty=`tty`

if [ -z "$UPLOAD" ] ; then
  UPLOAD=1
fi

if [ -z "$KEEP_ALL" ] ; then
  KEEP_ALL=0
fi

if [ -z "$BASE_PAS_DIR" ] ; then
  BASE_PAS_DIR=$HOME/pas/release-build
fi
export FPC_TMP_INSTALL=$BASE_PAS_DIR/fpc-tmp-$FPC_RELEASE_VERSION

if [ "X${FPC_RELEASE_SVN_DIR/_rc/}" != "X${FPC_RELEASE_SVN_DIR}" ] ; then
  is_beta=1
  ftpdir=ftp/beta
  tags=tags
  FPC_RELEASE_SUBDIR=${FPC_RELEASE_VERSION/_rc*/}
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
echo "Using $MAKE, version: `$MAKE --version`"

if [ -z "$global_sysroot" ] ; then
  global_sysroot=$HOME/sys-root
fi

logdir=$HOME/logs/$FPC_RELEASE_VERSION

if [ ! -d "$logdir" ] ; then
  mkdir -p "$logdir"
fi

set -u

if [ -z "${STARTFPC:-}" ] ; then
  STARTFPC=`which fpc`
fi

if [ -z "${STARTFPC:-}" ] ; then
  export PATH=$HOME/pas/fpc-${FPC_START_VERSION}/bin:$PATH
  STARTFPC=`which fpc`
fi

if [ -z "${STARTFPC:-}" ] ; then
  echo "Unable to find start fpc binary"
  exit
else
  echo "Start FPC is $STARTFPC"
  echo "$STARTFPC -iVDWSOSPTOTP: `$STARTFPC -iVDWSOSPTOTP`"
fi

START_FPC_VERSION=`$STARTFPC -iV`
if [ "$FPC_START_VERSION" != "$START_FPC_VERSION" ] ; then
  echo "Found fpc ($STARTFPC) is not version $FPC_START_VERSION, but $START_FPC_VERSION"
  exit
fi

if [ -z "${FPC_NATIVE_BIN:-}" ] ; then
  FPC_NATIVE_BIN=` $STARTFPC -PB `
  FPC_NATIVE_BIN=` basename $FPC_NATIVE_BIN `
fi

echo "Native binary is $FPC_NATIVE_BIN"

# Use a fake install directory to avoid troubles
if [ ! -z "${XDG_RUNTIME_DIR:-}" ] ; then
  export TMP_PREFIX=$XDG_RUNTIME_DIR/$USER
elif [ ! -z "${TMP:-}" ] ; then
  export TMP_PREFIX=$TMP/$USER
elif [ ! -z "${TEMP:-}" ] ; then
  export TMP_PREFIX=$TEMP/$USER
else
  export TMP_PREFIX=${HOME}/tmp/$USER
fi

if [ ! -d $BASE_PAS_DIR ] ; then
  mkdir -p $BASE_PAS_DIR
fi

cd $BASE_PAS_DIR

echo "Checking out release $FPC_RELEASE_SVN_DIR"
local_svn_diff=`pwd`/local_svn_diff.txt
if [ -d $FPC_RELEASE_SVN_DIR ] ; then
  cd $FPC_RELEASE_SVN_DIR

  # Check for local modifications
  svnstatus=`svn status | grep -n "^M" `
  res=${PIPESTATUS[0]}
  if [ "X$svnstatus" != "X" ] ; then
    # echo "Erasing $FPC_RELEASE_SVN_DIR to avoid local changes"
    echo "Locally modified files: $svnstatus" > $local_svn_diff
    svn diff . >> $local_svn_diff
    svn diff fpcsrc >> $local_svn_diff
    svn diff fpcdocs >> $local_svn_diff
    mkdir -p $FPC_RELEASE_SVN_DIR
  else
    echo "Pristine svn checkout `svnversion -c .`" > $local_svn_diff 
    echo "Pristine svn fpcsrc checkout `svnversion -c fpcsrc`" >> $local_svn_diff 
    echo "Pristine svn fpcdocs checkout `svnversion -c fpcdocs`" >> $local_svn_diff 
  fi
  cd ..
else
  svn checkout https://svn.freepascal.org/svn/fpcbuild/$tags/$FPC_RELEASE_SVN_DIR
  res=$?
  cd $FPC_RELEASE_SVN_DIR
  echo "Pristine svn checkout `svnversion -c .`" > $local_svn_diff 
  echo "Pristine svn fpcsrc checkout `svnversion -c fpcsrc`" >> $local_svn_diff 
  echo "Pristine svn fpcdocs checkout `svnversion -c fpcdocs`" >> $local_svn_diff 
  cd ..
fi

if [ $res -ne 0 ] ; then
  echo "svn checkout failed, res=$res"
  exit
fi


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
  suffix=${2:-}
  CROSSOPT="${3:-}"
else
  TARGETCPU=$START_CPU_TARGET
  TARGETOS=$START_OS_TARGET
  suffix=""
  CROSSOPT=""
fi
readme=$BASE_PAS_DIR/$FPC_RELEASE_SVN_DIR/readme-$TARGETCPU-$TARGETOS$suffix

if [ -f "$readme" ] ; then
  echo "File $readme found, skipping"
  echo "File $readme found, skipping" > $start_tty
  return
fi
let trial_count++


is_64=0
case $TARGETCPU in
  aarch64|powerpc64|riscv64|sparc64|x86_64) is_64=1;;
esac

FULLTARGET=

echo "Generation of release installer for $TARGETCPU-$TARGETOS"
echo "Generation of release installer for $TARGETCPU-$TARGETOS" >  $start_tty
echo "Generation of release installer for $TARGETCPU-$TARGETOS" > $readme
echo "Generated on `hostname`" >> $readme
echo "'uname -a' output: `uname -a`" >> $readme
echo "`date +%Y-%m-%d`" >> $readme

if [ "$TARGETCPU-$TARGETOS" != "$START_SOURCE_CPU-$START_SOURCE_OS" ] ; then
  echo "Cross configuration detected"
  echo "Cross configuration detected" > $start_tty
  echo "Cross configuration detected" >> $readme
  CROSS=1
  if [ -d $HOME/gnu/binutils/build/$TARGETCPU-$TARGETOS ] ; then
    (
    cd  $HOME/gnu/binutils/build/$TARGETCPU-$TARGETOS
    echo "Generating binutils cross-install for $TARGETCPU-$TARGETOS"
    BINUTILS_LOG=$logdir/binutils-$TARGETCPU-$TARGETOS.log
    echo "Generating binutils cross-install for $TARGETCPU-$TARGETOS" > $start_tty
    echo "Generating binutils cross-install for $TARGETCPU-$TARGETOS" > $BINUTILS_LOG
    echo "Generating binutils cross-install for $TARGETCPU-$TARGETOS" >> $readme
    binutils_dest_dir=$TMP_PREFIX/temp-binutils-$TARGETCPU-$TARGETOS
    $MAKE install-binutils install-gas install-ld prefix=$binutils_dest_dir >> $BINUTILS_LOG 2>&1
    res=$?
    echo "Ending generation binutils cross-install for $TARGETCPU-$TARGETOS, res=$res" > $start_tty
    echo "Ending generation binutils cross-install for $TARGETCPU-$TARGETOS, res=$res" >> $readme
    cd $binutils_dest_dir
    tar -cvzf $BASE_PAS_DIR/$FPC_RELEASE_SVN_DIR/binutils-$TARGETCPU-$TARGETOS-$START_SOURCE_CPU-$START_SOURCE_OS.tar.gz . >> $BINUTILS_LOG 2>&1
    res=$?
    cd ..
    rm -Rf $binutils_dest_dir
    )
  fi
else
  CROSS=0
fi

# ssh  -i ~/.ssh/freepascal fpc@ftpmaster.freepascal.org ls -altr $ftpdir/${FPC_RELEASE_VERSION}/docs
if [ ! -d $BASE_PAS_DIR/docs-${FPC_RELEASE_VERSION} ] ; then
  mkdir -p $BASE_PAS_DIR/docs-${FPC_RELEASE_VERSION}
fi
if [ ! -f $BASE_PAS_DIR/docs-${FPC_RELEASE_VERSION}/doc-pdf.tar.gz ] ; then
  echo "Erasing directory docs-$FPC_RELEASE_VERSION"
  rm -Rf $BASE_PAS_DIR/docs-$FPC_RELEASE_VERSION
  mkdir $BASE_PAS_DIR/docs-${FPC_RELEASE_VERSION}

  cd $BASE_PAS_DIR/docs-${FPC_RELEASE_VERSION}
  echo "Copying doc files to docs-$FPC_RELEASE_VERSION"
  scp -p  -i ~/.ssh/freepascal fpc@ftpmaster.freepascal.org:${ftpdir}/${FPC_RELEASE_VERSION}/docs/*  .
  res=$?
  if [[ ( $res -ne 0 ) || ( ! -f doc-pdf.tar.gz ) ]] ; then
    scp -p  -i ~/.ssh/freepascal fpc@ftpmaster.freepascal.org:ftp/beta/${FPC_RELEASE_VERSION_LAST_RC}/docs/*  .
    res=$?
  fi
  if [ $res -ne 0 ] ; then
    # Using previous RC
    scp -p  -i ~/.ssh/freepascal fpc@ftpmaster.freepascal.org:${ftpdir}/${FPC_RELEASE_VERSION}/docs/*  .
    res=$?
    if [ $res -ne 0 ] ; then
      echo "Failed to download docs"
      let failure_count++
      failure_list="$failure_list $TARGETCPU-$TARGETOS"
      return 1
    else
      echo "Docs copied to `pwd`"
    fi
  fi
fi

echo "$BASE_PAS_DIR/docs-${FPC_RELEASE_VERSION}/doc-pdf.tar.gz copied to $BASE_PAS_DIR/$FPC_RELEASE_SVN_DIR"
cp -f $BASE_PAS_DIR/docs-${FPC_RELEASE_VERSION}/doc-pdf.tar.gz $BASE_PAS_DIR/$FPC_RELEASE_SVN_DIR

# We need to install libgdb or add NOGDB=1
# This is only used for internal GDB,
# but default is now GDBMI=1
# which removes the need of internal GDB.
# Only go32v2 still needs internal GDB

cd $BASE_PAS_DIR/$FPC_RELEASE_SVN_DIR

if [ -z "${need_gdb_os_list:-}" ] ; then
  need_gdb_os_list="go32v2"
fi

NOGDB=
GDBDIR=
if [ "${need_gdb_os_list/${TARGETOS}/}" != "${need_gdb_os_list}" ] ; then

  if [ -z "${LAST_SUPPORTED_GDB:-}" ] ; then
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
      if [ -n "${AARCH64_ANDROID_ROOT:-}" ] ; then
        sysroot=$AARCH64_ANDROID_ROOT
      fi
    elif [ "${CPU_TARG_LOCAL}" == "arm" ] ; then
      if [ -n "${ARM_ANDROID_ROOT:-}" ] ; then
        sysroot=$ARM_NDROID_ROOT
      fi
    elif [ "${CPU_TARG_LOCAL}" == "i386" ] ; then
      if [ -n "${I386_ANDROID_ROOT:-}" ] ; then
        sysroot=$I386_ANDROID_ROOT
      fi
    elif [ "${CPU_TARG_LOCAL}" == "mipsel" ] ; then
      if [ -n "${MIPSEL_ANDROID_ROOT:-}" ] ; then
        sysroot=$MIPSEL_ANDROID_ROOT
      fi
    elif [ "${CPU_TARG_LOCAL}" == "x86_64" ] ; then
      if [ -n "${X86_64_ANDROID_ROOT:-}" ] ; then
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
    if [ "$TARGETOS" != "aix" ] ; then 
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
if [ "`dirname $FPC`" = "." ] ; then
  FPC=$FPC_TMP_INSTALL/bin/$FPC
fi
export FPC
if [ ! -x "$FPC" ] ; then
  echo "Compiler $FPC is not executable"
  echo "Compiler $FPC is not executable" > $start_tty
  let failure_count++
  failure_list="$failure_list $1"
  return 2
fi

MAKEPACK_LOG_FULLNATIVE=$logdir/makepack-$CPU_TARG_LOCAL-$OS_TARG_LOCAL-full.log
MAKEPACK_LOG=$logdir/makepack-$CPU_TARG_LOCAL-$OS_TARG_LOCAL.log
FAIL_LOG=

if [ "${BUILDFULLNATIVE_OS_LIST/${TARGETOS}/}" != "$BUILDFULLNATIVE_OS_LIST" ] ; then
  export BUILDFULLNATIVE=1
fi

if [ $BUILDFULLNATIVE -eq 1  ] ; then
  export CROSSOPT
  export EXTRAOPT="$CROSSOPT"
  echo "Starting: bash -v ./install/makepack $1 >> $MAKEPACK_LOG_FULLNATIVE 2>&1, with BUILDFULLNATIVE=1, FPC=$FPC and EXTRAOPT=\"$EXTRAOPT\""
  echo "Starting: bash -v ./install/makepack $1 >> $MAKEPACK_LOG_FULLNATIVE 2>&1, with BUILDFULLNATIVE=1, FPC=$FPC and EXTRAOPT=\"$EXTRAOPT\"" > $start_tty
  echo "Starting: bash -v ./install/makepack $1 with BUILDFULLNATIVE=1, FPC=$FPC and EXTRAOPT=\"$EXTRAOPT\"" > $MAKEPACK_LOG_FULLNATIVE
  echo "Using STARTFPC=$STARTFPC"
  export BUILDFULLNATIVE=1
  bash ./install/makepack $1 >> $MAKEPACK_LOG_FULLNATIVE 2>&1
  build_full_native_res=$?
  echo "Ending: bash -v ./install/makepack $1 >> $MAKEPACK_LOG_FULLNATIVE 2>&1, with BUILDFULLNATIVE=1, res=$build_full_native_res"
  echo "Ending: bash -v ./install/makepack $1 >> $MAKEPACK_LOG_FULLNATIVE 2>&1, with BUILDFULLNATIVE=1, res=$build_full_native_res" > $start_tty
  echo "Ending: bash -v ./install/makepack $1 with BUILDFULLNATIVE=1, res=$build_full_native_res" >> $MAKEPACK_LOG_FULLNATIVE
  if [ $build_full_native_res -ne 0 ] ; then
    FAIL_LOG=$MAKEPACK_LOG_FULLNATIVE
  fi
else
  build_full_native_res=1
fi
if [ $build_full_native_res -ne 0 ] ; then
  export CROSSOPT="$CROSSOPT_ORIG"
  export EXTRAOPT="$CROSSOPT"
  export OPTLEVEL3="$CROSSOPT"
  export BUILDFULLNATIVE=
  echo "Starting: bash -v ./install/makepack $1 >> $MAKEPACK_LOG 2>&1, without BUILDFULLNATIVE=1, FPC=$FPC and EXTRAOPT=\"$EXTRAOPT\""
  echo "Starting: bash -v ./install/makepack $1 >> $MAKEPACK_LOG 2>&1, without BUILDFULLNATIVE=1, FPC=$FPC and EXTRAOPT=\"$EXTRAOPT\"" > $start_tty
  echo "Starting: bash -v ./install/makepack $1, without BUILDFULLNATIVE=1, FPC=$FPC and EXTRAOPT=\"$EXTRAOPT\"" > $MAKEPACK_LOG
  echo "Using STARTFPC=$STARTFPC"
  bash ./install/makepack $1 >> $MAKEPACK_LOG 2>&1
  res=$?
  echo "Ending: bash -v ./install/makepack $1 >> $MAKEPACK_LOG 2>&1, without BUILDFULLNATIVE=1, res=$res"
  echo "Ending: bash -v ./install/makepack $1 >> $MAKEPACK_LOG 2>&1, without BUILDFULLNATIVE=1, res=$res" > $start_tty
  echo "Ending: bash -v ./install/makepack $1, without BUILDFULLNATIVE=1, res=$res" >> $MAKEPACK_LOG
  if [ $res -ne 0 ] ; then
    FAIL_LOG=$MAKEPACK_LOG
  fi
else
  res=0
fi
echo "Ended: bash -v ./install/makepack $1, res=$res"
if [ $res -ne 0 ] ; then
  echo "makepack script failed res=$res, log file is \"$FAIL_LOG\" aborting" > $start_tty
  echo "makepack script failed res=$res, log file is \"$FAIL_LOG\" aborting" >> $readme
  let failure_count++
  failure_list="$failure_list $1"
  return 3
fi

cd $BASE_PAS_DIR/$FPC_RELEASE_SVN_DIR
if [ -n "$suffix" ]; then
  if [ -f "fpc-${FPC_RELEASE_VERSION_IN_TAR}.${TARGETCPU}-${TARGETOS}.tar" ]; then
    mv fpc-${FPC_RELEASE_VERSION_IN_TAR}.${TARGETCPU}-${TARGETOS}.tar fpc-${FPC_RELEASE_VERSION_IN_TAR}.${TARGETCPU}-${TARGETOS}${suffix}.tar
  fi
fi

last_file=`ls -1tr ./fpc-${FPC_RELEASE_VERSION_IN_TAR}-${TARGETCPU}-${TARGETOS}*tar 2> /dev/null | tail -1 `
files=`ls -1tr ./fpc-${FPC_RELEASE_VERSION_IN_TAR}-${TARGETCPU}-${TARGETOS}*tar 2> /dev/null `

if [ -f "$files" ] ; then
  echo "Successfully generated files: `ls -ltr $files`"
  echo "Successfully generated files: `ls -ltr $files`" > $start_tty
  echo "Successfully generated files: `ls -ltr $files`" >> $readme
fi

if [ -f $local_svn_diff ] ; then
  echo "Generated with locally modificated files:" >> $readme
  cat $local_svn_diff >> $readme
fi

if [ "$files" != "$last_file" ] ; then
  echo "Several files found: \"$files\", last is \"$last_file\""
  echo "Several files found: \"$files\", last is \"$last_file\"" > $start_tty
  echo "Several files found: \"$files\", last is \"$last_file\"" >> $readme
fi

if [ -z "$files" ] ; then
  echo "No tar file found with 'ls -1 ./fpc-${FPC_RELEASE_VERSION_IN_TAR}-${TARGETCPU}-${TARGETOS}*tar'"
  echo "No tar file found with 'ls -1 ./fpc-${FPC_RELEASE_VERSION_IN_TAR}-${TARGETCPU}-${TARGETOS}*tar'" > $start_tty
  echo "No tar file found with 'ls -1 ./fpc-${FPC_RELEASE_VERSION_IN_TAR}-${TARGETCPU}-${TARGETOS}*tar'" >> $readme
  echo "Full tar listing: `ls -ltr *.tar `" >> $readme
  let failure_count++
  failure_list="$failure_list $1"
else
  let success_count++
  success_list="$success_list $1"
  if [ $UPLOAD -eq 1 ] ; then
    files="$files $readme"
    echo "found $files"
    ftp_listing=`ssh -i ~/.ssh/freepascal fpc@ftpmaster.freepascal.org "( cd $ftpdir/${FPC_RELEASE_VERSION}/${TARGETCPU}-${TARGETOS} && ls -1tr ) 2> /dev/null " `
    if [ -z "$ftp_listing" ] ; then
      upload_list="$upload_list $1"
      let upload_count++
      echo "Creating directory $ftpdir/${FPC_RELEASE_VERSION}/${TARGETCPU}-${TARGETOS} on ftpmaster"
      ssh  -i ~/.ssh/freepascal fpc@ftpmaster.freepascal.org "mkdir -p ${ftpdir}/${FPC_RELEASE_VERSION}/${TARGETCPU}-${TARGETOS}"
      res_ssh=$?
      echo "Transferring $files to that directory"
      scp -p  -i ~/.ssh/freepascal $files fpc@ftpmaster.freepascal.org:${ftpdir}/${FPC_RELEASE_VERSION}/$TARGETCPU-${TARGETOS}
      res_scp=$?
      if [ $res_scp -eq 0 ] ; then
        echo "Successfully uploaded $files to fpc@ftpmaster.freepascal.org:${ftpdir}/${FPC_RELEASE_VERSION}/$TARGETCPU-${TARGETOS}"
        echo "Successfully uploaded $files to fpc@ftpmaster.freepascal.org:${ftpdir}/${FPC_RELEASE_VERSION}/$TARGETCPU-${TARGETOS}" > $start_tty
      else
        echo "scp failed to upload $files to fpc@ftpmaster.freepascal.org:${ftpdir}/${FPC_RELEASE_VERSION}/$TARGETCPU-${TARGETOS}, res_scp=$res_scp"
        echo "scp failed to upload $files to fpc@ftpmaster.freepascal.org:${ftpdir}/${FPC_RELEASE_VERSION}/$TARGETCPU-${TARGETOS}, res_scp=$res_scp" > $start_tty
      fi
    else
      echo "Directory $ftpdir/${FPC_RELEASE_VERSION}/${TARGETCPU}-${TARGETOS} already contains $ftp_listing, no upload done"
      echo "Directory $ftpdir/${FPC_RELEASE_VERSION}/${TARGETCPU}-${TARGETOS} already contains $ftp_listing, no upload done" > $start_tty
      echo "Directory $ftpdir/${FPC_RELEASE_VERSION}/${TARGETCPU}-${TARGETOS} already contains $ftp_listing, no upload done" >> $readme
    fi
  fi
fi
}
# End of make_release function

# Start of list_os function
function list_os ()
{
  echo "Starting list_os $*" > $start_tty
  local FPC_NAME=$1
  local CPU_TARGET=$2
  local LOCAL_OPT="$3"
  local os
  local os_list=` $FPC_TMP_INSTALL/bin/$FPC_NAME -h | sed -n "s:.*-T\([a-zA-Z_][a-zA-Z_0-9]*\).*:\1:p" || true `
  listed=1
  for os in ${os_list} ; do
    local logf=$logdir/make-release-${FPC_RELEASE_VERSION}-${CPU_TARGET}-${os}.log
    export FPC=$FPC_NAME
    echo "Starting make_release $CPU_TARGET $os \"$LOCAL_OPT\" at `date \"+%Y-%m-%d %H:%M:%S\"`, log=$logf"
    echo "Starting make_release $CPU_TARGET $os \"$LOCAL_OPT\" at `date \"+%Y-%m-%d %H:%M:%S\"`, log=$logf" > $start_tty
    make_release $CPU_TARGET-$os "" "$LOCAL_OPT" > $logf 2>&1
    res=$?
    echo "Ending make_release $CPU_TARGET $os \"$LOCAL_OPT\", res=$res, at `date \"+%Y-%m-%d %H:%M:%S\"`, log=$logf"
    echo "Ending make_release $CPU_TARGET $os \"$LOCAL_OPT\", res=$res, at `date \"+%Y-%m-%d %H:%M:%S\"`, log=$logf" > $start_tty
  done
  listed=0
}
# End of list_os function

LOGFILE=$logdir/all-${FPC_RELEASE_SVN_DIR}-releases.log
LISTLOGFILE=$logdir/list-all-releases-${FPC_RELEASE_SVN_DIR}.log

(
# make_release i386-linux 2>&1 | tee $logdir/make-release-${FPC_RELEASE_VERSION}-i386-linux.log
echo  "Script $0 started at  `date +%Y-%m-%d-%H-%M `"
echo "Using PATH=$PATH"
echo  "Script $0 started at  `date +%Y-%m-%d-%H-%M `" > $LISTLOGFILE
echo "Using PATH=$PATH" >> $LISTLOGFILE

cd $FPC_RELEASE_SVN_DIR/fpcsrc/compiler
LOGFILE2=$logdir/release-cycle.log
echo "Running $MAKE distclean cycle OPT=\"-n ${REQUIRED_OPT:-}\" FPC=$STARTFPC > $LOGFILE2 2>&1"
echo "Running $MAKE distclean cycle OPT=\"-n ${REQUIRED_OPT:-}\" FPC=$STARTFPC > $LOGFILE2 2>&1" > $start_tty
$MAKE distclean cycle OPT="-n ${REQUIRED_OPT:-}" FPC=$STARTFPC > $LOGFILE2 2>&1
res=$?
if [ $res -ne 0 ] ; then
  echo "$MAKE distclean cycle failed, res=$res"
  exit
else
  echo "$MAKE distclean cycle finished OK"
fi
echo "Running $MAKE installsymlink INSTALL_PREFIX=$FPC_TMP_INSTALL FPC=`pwd`/$FPC_NATIVE_BIN >> $LOGFILE2 2>&1"
echo "Running $MAKE installsymlink INSTALL_PREFIX=$FPC_TMP_INSTALL FPC=`pwd`/$FPC_NATIVE_BIN >> $LOGFILE2 2>&1" > $start_tty
$MAKE installsymlink INSTALL_PREFIX=$FPC_TMP_INSTALL FPC=`pwd`/$FPC_NATIVE_BIN >> $LOGFILE2 2>&1
res=$?
if [ $res -ne 0 ] ; then
  echo "$MAKE installsymlink failed, res=$res"
  exit
else
  echo "$MAKE installsymlink finished OK"
fi
LOGFILE2=$logdir/release-fullcycle.log
echo "$MAKE rtlclean rtl fullcycle fullinstallsymlink OPT=\"-n ${REQUIRED_OPT:-}\" FPC=$FPC_TMP_INSTALL/bin/$FPC_NATIVE_BIN INSTALL_PREFIX=$FPC_TMP_INSTALL > $LOGFILE2 2>&1"
echo "$MAKE rtlclean rtl fullcycle fullinstallsymlink OPT=\"-n ${REQUIRED_OPT:-}\" FPC=$FPC_TMP_INSTALL/bin/$FPC_NATIVE_BIN INSTALL_PREFIX=$FPC_TMP_INSTALL > $LOGFILE2 2>&1" > $start_tty
$MAKE rtlclean rtl fullcycle fullinstallsymlink OPT="-n ${REQUIRED_OPT:-}" FPC=$FPC_TMP_INSTALL/bin/$FPC_NATIVE_BIN INSTALL_PREFIX=$FPC_TMP_INSTALL > $LOGFILE2 2>&1
res=$?
if [ $res -ne 0 ] ; then
  echo "$MAKE fullcycle fullinstallsymlink failed, res=$res"
  exit
else
  echo "$MAKE fullcycle fullinstallsymlink finished OK"
fi
cd $BASE_PAS_DIR

if [ $# -ne 0 ]; then
  TARGETCPU=`echo $1 | sed 's+\([^-]*\)-.*+\1+'`
  TARGETOS=`echo $1 | sed 's+[^-]*-\(.*\)+\1+'`
else
  TARGETOS=`$STARTFPC -iTO`
  TARGETCPU=`$STARTFPC -iTP`
fi

echo "STARTFPC is $STARTFPC, default CPU is $TARGETCPU, default OS $TARGETOS"
echo "STARTFPC is $STARTFPC, default CPU is $TARGETCPU, default OS $TARGETOS" > $start_tty

if [ ! -z "${1:-}" ] ; then
  echo "Handling specific target OS: $TARGETOS, CPU: $TARGETCPU"
  echo "Handling specific target OS: $TARGETOS, CPU: $TARGETCPU" > $start_tty
  make_release $1 2>&1 | tee $logdir/make-release-${FPC_RELEASE_VERSION}-${TARGETCPU}-${TARGETOS}.log
  exit
fi

listed=0
success_list=""
failure_list=""
upload_list=""
success_count=0
failure_count=0
upload_count=0
trial_count=0

echo "rm -Rf $BASE_PAS_DIR/$FPC_RELEASE_SVN_DIR/readme-*"
echo "rm -Rf $BASE_PAS_DIR/$FPC_RELEASE_SVN_DIR/readme-*" >> $LISTLOGFILE
rm -Rf $BASE_PAS_DIR/$FPC_RELEASE_SVN_DIR/readme-*

list_os ppca64 aarch64 "-n -g"
# -Tlinux is not listed on `ppca64 -h` output
# make_release aarch64 linux "-n -gl"

export OPTLEVEL2="-dFPC_ARMEL"
export FPC=ppcarm
make_release arm-linux "-armeabi" "-CpARMV6 -CaEABI -CfSOFT"
export OPTLEVEL2=

export FPC=ppcavr
export SUBARCH=avr25
make_release avr-embedded "" "-n"
export SUBARCH=

list_os ppcarm arm "-n -gl"
#list_os ppcavr avr "-n -gl"
list_os ppc386 i386 "-n -gl"
list_os ppc8086 i8086 "-n -Wmhuge -CX -XX"
list_os ppcjvm jvm "-n"
# obsolote  -Oonopeephole option removed
# Amiga has no lineinfo support
make_release m68k-amiga "" "-n -g" 
make_release powerpc-amiga "" "-n -g" 
# Other m68k targets
list_os ppc68k m68k "-n -gl"
list_os ppcmips mips "-n -gl"
list_os ppcmipsel mipsel "-n -gl"
list_os ppcppc powerpc "-n -gl"
list_os ppcppc64 powerpc64 "-n -gl"
list_os ppcsparc sparc "-n -gl"
list_os ppcsparc64 sparc64 "-n -gl"
list_os ppcx64 x86_64 "-n -gwl"
listed=0
index_cpu_os_list=`sed -n "s:^[[:space:]]*system_\([a-zA-Z0-9_]*\)_\([a-zA-Z0-9]*\) *[,]* *{ *\([0-9]*\).*:\3;\1,\2:p" fpcsrc/compiler/systems.inc`

# Split into index, cpu and os
for index_cpu_os in $index_cpu_os_list ; do
   index=${index_cpu_os//;*/}
   os=${index_cpu_os//*,/}
   os=${os,,}
   cpu=${index_cpu_os/*;/}
   cpu=${cpu//,*/}
   cpu=${cpu,,}
   echo "Found item $index, cpu=$cpu, os=$os"
   make_release $cpu-$os "" "-n -gl"
done

#make_release x86_64 dragonfly "-n -gl"
#make_release m68k netbsd "-n -gl"
echo "Successes $success_count/Uploads $upload_count/Failures $failure_count/Total $trial_count"
echo "Success list is \"$success_list\""
echo "Failure list is \"$failure_list\""
echo "Upload list is \"$upload_list\""
echo "Script $0 ended at  `date +%Y-%m-%d-%H-%M `"
echo "Successes $success_count/Uploads $upload_count/Failures $failure_count/Total $trial_count" > $start_tty
echo "Success list is \"$success_list\"" > $start_tty
echo "Failure list is \"$failure_list\"" > $start_tty
echo "Upload list is \"$upload_list\"" > $start_tty
echo "Script $0 ended at  `date +%Y-%m-%d-%H-%M `" > $start_tty
) > $LOGFILE 2>&1

echo "$0 script ended, log file is $LOGFILE"
