#!/usr/bin/env bash

. $HOME/bin/fpc-versions.sh

# linux_cpu_list="aarch64 arm i386 m68k mips mipsel powerpc powerpc64be powerpc64le riscv32 riscv64 sparc sparc64 x86_64 xtensa z80"
linux_cpu_list="aarch64 arm i386 m68k mips mipsel powerpc powerpc64be riscv32 riscv64 sparc sparc64 x86_64 xtensa z80"

if [ ${FIXES:-0} -eq 1 ] ; then
  if [ -d "$FIXES_BRANCH" ] ; then
    BRANCH=$FIXES_BRANCH
  else
    BRANCH=fixes
  fi
  TARGET_VERSION=$FIXESVERSION
else
  BRANCH=trunk
  TARGET_VERSION=$TRUNKVERSION
fi

if [ -z "$upload" ] ; then
  upload=0
fi

if [ -z "$verbose" ] ; then
  verbose=0
fi

export PATH=${INSTALLFPCDIRPREFIX}${TARGET_VERSION}/bin:$PATH


function decho ()
{
  echo "`date +%Y-%m-%d-%H-%M`: $*"
}

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

  if [ $verbose -eq 1 ] ; then
    echo "add_dir: testing \"$pattern\""
  fi
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
      if [ $verbose -eq 1 ] ; then
        echo "ls line is \"$ls_line\""
      fi
      link_target=${ls_line/* /}
      if [ $verbose -eq 1 ] ; then
        echo "link target is \"$link_target\""
      fi
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
    if [ "$OS_TARGET" == "aix" ] ; then
      # AIX puts 32 and 64 bit versions into the same library
      use_file=1
    fi
    if [ $verbose -eq 1 ] ; then
      echo "add_dir found file=$file, is_64=$is_64, file_is_64=\"$file_is_64\""
    fi
    if [ $use_file -eq 1 ] ; then
      file_dir=`dirname $file`
      if [ $verbose -eq 1 ] ; then
        echo "Adding $file_dir"
      fi
      if [ "${CROSSOPT/-Fl$file_dir /}" == "$CROSSOPT" ] ; then
        if [ $verbose -eq 1 ] ; then
          echo "Adding $file_dir directory to library path list"
        fi
        CROSSOPT="$CROSSOPT -Fl$file_dir "
        dir_found=1
      fi
    fi
  done
}
 function run_one_testsuite ()
{
FIRST_ARG=$1

decho "Starting run_one_testsuite $FIRST_ARG"

TARGET_FPC=`which $FIRST_ARG 2> /dev/null`
decho "Found \"$TARGET_FPC\""
if [[ ( -n "$TARGET_FPC" ) && ( -x "$TARGET_FPC" ) ]] ; then
  $TARGET_FPC -iVDW 2> /dev/null
  res=$?
  if [ $res -ne 0 ] ; then
    use_cpu=1
  else
    shift
    CPU_TARGET=`$TARGET_FPC -iTP`
    OS_TARGET=`$TARGET_FPC -iTO`
    use_cpu=0
  fi
else
  use_cpu=1
fi

if [ $use_cpu -eq 1 ] ; then
  CPU_TARGET=$1
  shift
  OS_TARGET=$1
  shift
  TARGET_FPC=ppc$CPU_TARGET
  case $CPU_TARGET in
    aarch64|arm64) TARGET_FPC=ppca64 ;;
    arm) TARGET_FPC=ppcarm ;;
    i*86) TARGET_FPC=ppc386 ;;
    m68k) TARGET_FPC=ppc68k ;;
    mipsel*) TARGET_FPC=ppcmipsel ;;
    mips*) TARGET_FPC=ppcmips ;;
    powerpc64le|ppc64le) TARGET_FPC=ppcppc64 ;;
    powerpc|ppc) TARGET_FPC=ppcppc ;;
    powerpc64be|powerpc64|ppc64) TARGET_FPC=ppcppc64 ;;
    riscv32) TARGET_FPC=ppcrv32 ;;
    riscv64) TARGET_FPC=ppcrv64 ;;
    x86_64|amd64) TARGET_FPC=ppcx64 ;;
    xtensa) TARGET_FPC=ppcxtensa ;;
    z80) TARGET_FPC=ppcz80 ;;
  esac
fi

VER_TARGET=`$TARGET_FPC -iV`
decho "Starting run_one_testsuite for version $VER_TARGET"
if [ "$VER_TARGET" != "$TARGET_VERSION" ] ; then
  decho " $FPC_TARGET returns $VER_TARGET version, but  $TARGET_VERSION is wanted"
  exit
fi

if [ -z "$QEMU_CPU" ] ; then
  QEMU_CPU=$CPU_TARGET
  case $CPU_TARGET in
    aarch64|arm64) QEMU_CPU=aarch64 ;;
    arm) QEMU_CPU=arm ;;
    i*86) QEMU_CPU=i386 ;;
    m68k) QEMU_CPU=m68k ;;
    mipsel*) QEMU_CPU=mipsel ;;
    mips*) QEMU_CPU=mips ;;
    powerpc64le|ppc64le) QEMU_CPU=ppc64le ;;
    powerpc|ppc) QEMU_CPU=ppc ;;
    powerpc64be|powerpc64|ppc64) QEMU_CPU=ppc64 ;;
    riscv32) QEMU_CPU=riscv32 ;;
    riscv64) QEMU_CPU=riscv64 ;;
    sparc) QEMU_CPU=sparc32plus ;;
    sparc64) QEMU_CPU=sparc64 ;;
    x86_64|amd64) QEMU_CPU=x86_64 ;;
    xtensa) QEMU_CPU=xtensa ;;
    z80) QEMU_CPU=z80 ;;
  esac
fi

if [ -z "$QEMU_OPT" ] ; then
  QEMU_OPT=
  case $QEMU_CPU in
    arm) QEMU_OPT="-cpu cortex7a" ; TEST_OPT="$TEST_OPT -Cparmv7 -Cfvfpv2 -Caeabihf"; TEST_ABI=eabihf ;;
    m68k) QEMU_OPT="-cpu m68040" ;;
    ppc) QEMU_OPT="-cpu 7450";;
    mips) TEST_OPT="$TEST_OPT -ao-xgot -fPIC" ;;
    mipsel) TEST_OPT="$TEST_OPT -ao-xgot -fPIC" ;;
    ppc64le) TEST_OPT="$TEST_OPT -Cb-" ; TEST_ABI=le ;;
    ppc64) TEST_OPT="$TEST_OPT -Cb" ;;
  esac
fi

source_os=`uname -s | tr [:upper:] [:lower:] `

# Might need some adaptations
OS_SOURCE=$source_os

if [ -z "$OS_TARGET" ] ; then
  OS_TARGET=$OS_SOURCE
fi

if [ "$OS_SOURCE" == "$OS_TARGET" ] ; then
  EMUL=qemu-$QEMU_CPU
else
  EMUL=qemu-system-$QEMU_CPU
fi
EMUL_BIN=`which $EMUL 2> /dev/null`

if [ -z "$EMUL_BIN" ] ; then
  decho "$EMUL not found in $PATH"
  exit
elif [ ! -f "$EMUL_BIN" ] ; then
  decho "$EMUL_BIN does not exist"
  exit
elif [ ! -x "$EMUL_BIN" ] ; then
  decho "$EMUL_BIN is not executable"
  exit
fi
# Keep emul without path,
# to allow use of different emul binaries
# EMUL=$EMUL_BIN

QEMU_FULL_TARGET=$CPU_TARGET-$OS_TARGET

case $CPU_TARGET in
  powerpc64be|powerpc64le) CPU_TARGET=powerpc64 ;;
esac
# Verision for binutils prefix
FULL_TARGET=$CPU_TARGET-$OS_TARGET

is_64=0
case $CPU_TARGET in
  aarch64|powerpc64|riscv64|sparc64|x86_64) is_64=1;;
esac

if [ $is_64 -eq 1 ] ; then
  dir_list="/lib64 /usr/lib64"
else
  dir_list="/lib32 /usr/lib32"
fi

if [ -z "$QEMU_SYSROOT" ] ; then
  QEMU_SYSROOT=$HOME/sys-root/${QEMU_FULL_TARGET}
fi
if [  ! -d "$QEMU_SYSROOT" ] ; then
  QEMU_SYSROOT=$HOME/sys-root/${OS_TARGET}
fi

if [ -d "$QEMU_SYSROOT" ] ; then
  sysroot=$QEMU_SYSROOT
  EMUL="$EMUL -L $QEMU_SYSROOT"
  TEST_OPT="$TEST_OPT -k--sysroot=$QEMU_SYSROOT"
  dir_found=0
  for dir in "/lib" "/usr/lib" $dir_list ; do
    if [ -d "${QEMU_SYSROOT}${dir}" ] ; then
      TEST_OPT="$TEST_OPT -Fl${QEMU_SYSROOT}${dir}"
      dir_found=1
    fi 
  done
  CROSSOPT=
  add_dir "crt1.o"
  add_dir "crti.o"
  add_dir "crtbegin.o"
  add_dir "libc.a"
  add_dir "libc.so"
  add_dir -regex "'.*/libc\.so\..*'"
  add_dir "ld.so"
  add_dir -regex "'.*/ld\.so\.[0-9.]*'"
  if [ "${OS_TARGET}" == "linux" ] ; then
    add_dir -regex "'.*/ld-linux.*\.so\.*[0-9.]*'"
    add_dir "libc.so.6"
    add_dir "libm.a"
    add_dir "libm.so"
    add_dir "libm.so.6"
    add_dir "libpthread.a"
    add_dir "libpthread.so"
  fi
  if [ "${OS_TARGET}" == "beos" ] ; then
    add_dir "libroot.so"
    add_dir "libnetwork.so"
  fi
  if [ "${OS_TARGET}" == "haiku" ] ; then
    add_dir "libroot.so"
    add_dir "libnetwork.so"
  fi
  if [ "${OS_TARGET}" == "aix" ] ; then
    add_dir "libm.a"
    add_dir "libbsd.a"
    if [ $is_64 -eq 1 ] ; then
      add_dir "crt*_64.o"
    fi
  fi
  if [ $dir_found -eq 1 ] ; then
    OPT_LOCAL="-XR$sysroot $CROSSOPT -Xd -k--sysroot=$sysroot"
    # -Xr is not supported for AIX OS
    if [ "${OS_TARGET}" != "aix" ] ; then
      OPT_LOCAL="$OPT_LOCAL -Xr$sysroot"
    fi
    # -Xa is only supported for Linux OS in trunk
    # It allows to use the standard linker script included 
    # inside the cross-linkers even with -Xr option
    if [ "${OS_TARGET}" == "linux" ] ; then
      if [ "$BRANCH" == "trunk" ] ; then
        OPT_LOCAL="$OPT_LOCAL -Xa"
      fi
    fi
    if [ $verbose -eq 1 ] ; then
      decho "OPT_LOCAL set to \"$OPT_LOCAL\""
    fi
    TEST_OPT="$TEST_OPT $OPT_LOCAL"
  fi
fi

cd $HOME/pas

cd $BRANCH

if [ -d fpcsrc ] ; then
  cd fpcsrc
fi

cd tests

TESTS_FULL_DIR=`pwd`

MAKE=`which gmake`

if [ -z "$MAKE" ] ; then
  MAKE=`which make`
  if [ -z "$MAKE" ] ; then
    echo "No MAKE found"
    exit
  fi
fi

LOGDIR=$HOME/logs/$BRANCH/$QEMU_FULL_TARGET

if [ ! -d "$LOGDIR" ] ; then
  mkdir -p "$LOGDIR"
fi

QEMU_SCRIPT=$LOGDIR/qemu-${QEMU_FULL_TARGET}.sh
cat > $QEMU_SCRIPT << HERE
#!/usr/bin/env bash

if [ ! -z "\$DEBUG" ] ; then
  debug_target_exe=1
  GDB_PORT=1234
  GDB=\$HOME/bin/gdb
else
  debug_target_exe=0
fi

if [ -z "\$DEBUG_QEMU" ] ; then
  GDB_QEMU=
else
  GDB_QEMU="gdb --args"
fi
export LD_LIBRARY_PATH=$HOME/gnu/lib64

if [ \$debug_target_exe -eq 0 ] ; then
  \$GDB_QEMU $EMUL "\${@}"
else
  $EMUL -g \$GDB_PORT "\${@}" &
  \$GDB -ex "target extended-remote localhost:\$GDB_PORT" -ex "set sysroot $QEMU_SYSROOT" \$1
fi
HERE

chmod u+x $QEMU_SCRIPT
 
SCRIPT=$LOGDIR/comp-${QEMU_FULL_TARGET}.sh
echo "#!/usr/bin/env bash" > $SCRIPT
echo "sourcename=\"\$1\"" >> $SCRIPT
echo "shift" >> $SCRIPT
echo "binname=\`basename \${sourcename/%.*}\`" >> $SCRIPT
echo "$TARGET_FPC $TEST_OPT -T$OS_TARGET -XP${FULL_TARGET}- -FU. -FE. -o\$binname $TESTS_FULL_DIR/\$sourcename " '"${@}"' >> $SCRIPT

chmod u+x $SCRIPT


LOGFILE=$LOGDIR/test-distclean.log
decho "$MAKE distclean TEST_FPC=$TARGET_FPC TEST_OS_TARGET=\"$OS_TARGET\" TEST_CPU_TARGET=\"$CPU_TARGET\" TEST_BINUTILSPREFIX=${FULL_TARGET}-"
$MAKE distclean TEST_FPC=$TARGET_FPC TEST_OS_TARGET="$OS_TARGET" TEST_CPU_TARGET="$CPU_TARGET" TEST_BINUTILSPREFIX=${FULL_TARGET}- > $LOGFILE 2>&1
$MAKE -C ../rtl clean FPC=$TARGET_FPC OS_TARGET="$OS_TARGET" CPU_TARGET="$CPU_TARGET" BINUTILSPREFIX=${FULL_TARGET}- >> $LOGFILE 2>&1
$MAKE -C ../packages clean FPC=$TARGET_FPC OS_TARGET="$OS_TARGET" CPU_TARGET="$CPU_TARGET" BINUTILSPREFIX=${FULL_TARGET}- >> $LOGFILE 2>&1
LOGFILE=$LOGDIR/test-rtl-packages.log
decho "$MAKE all in rtl and packages TEST_FPC=$TARGET_FPC TEST_OS_TARGET=\"$OS_TARGET\" TEST_CPU_TARGET=\"$CPU_TARGET\" TEST_BINUTILSPREFIX=${FULL_TARGET}-"
$MAKE -C ../rtl all FPC=$TARGET_FPC OS_TARGET="$OS_TARGET" CPU_TARGET="$CPU_TARGET" OPT="-n $TEST_OPT" BINUTILSPREFIX=${FULL_TARGET}- > $LOGFILE 2>&1
$MAKE -C ../packages all FPC=$TARGET_FPC OS_TARGET="$OS_TARGET" CPU_TARGET="$CPU_TARGET" OPT="-n $TEST_OPT" \
  BINUTILSPREFIX=${FULL_TARGET}- BUILDFULLNATIVE= >> $LOGFILE 2>&1
LLOGFILE=$LOGDIR/test-prep.log
decho "$MAKE -j 8 testprep  TEST_FPC=$TARGET_FPC TEST_OS_TARGET=\"$OS_TARGET\" TEST_CPU_TARGET=\"$CPU_TARGET\" \
  TEST_BINUTILSPREFIX=${FULL_TARGET}- EMULATOR=\"$QEMU_SCRIPT\" TEST_OPT=\"$TEST_OPT\" TEST_ABI=\"$TEST_ABI\""
time $MAKE -j 8 testprep TEST_FPC=$TARGET_FPC TEST_OS_TARGET="$OS_TARGET" TEST_CPU_TARGET="$CPU_TARGET" \
  TEST_BINUTILSPREFIX=${FULL_TARGET}- EMULATOR="$QEMU_SCRIPT" TEST_OPT="$TEST_OPT" TEST_ABI="$TEST_ABI" > $LOGFILE 2>&1
res=$?
decho "make testprep finished res=$res"
if [ $res -ne 0 ] ; then
  return
fi

LOGFILE=$LOGDIR/test-full.log
decho "$MAKE -j 8 full  TEST_FPC=$TARGET_FPC TEST_OS_TARGET=\"$OS_TARGET\" TEST_CPU_TARGET=\"$CPU_TARGET\" \
  TEST_BINUTILSPREFIX=${FULL_TARGET}- EMULATOR=\"$QEMU_SCRIPT\" TEST_OPT=\"$TEST_OPT\" TEST_ABI=\"$TEST_ABI\""
time $MAKE -j 8 full  TEST_FPC=$TARGET_FPC TEST_OS_TARGET="$OS_TARGET" TEST_CPU_TARGET="$CPU_TARGET" \
  TEST_BINUTILSPREFIX=${FULL_TARGET}- EMULATOR="$QEMU_SCRIPT" TEST_OPT="$TEST_OPT" TEST_ABI="$TEST_ABI" > $LOGFILE 2>&1
fullres=$?
decho "make full finished res=$fullres"
if [ -d "./output/${FULL_TARGET}" ] ; then
  OUTPUTDIR="./output/${FULL_TARGET}"
elif [ -d "./output/${OS_TARGET}" ] ; then
  OUTPUTDIR="./output/${OS_TARGET}"
else
  OUTPUTDIR="./output/*"
fi

function copy_to_logdir ()
{
  file=$1
  if [ -f $LOGDIR/$file ] ; then
    mv -f $LOGDIR/$file $LOGDIR/${file}.previous
  fi
  cp -fp $OUTPUTDIR/$file $LOGDIR/
}
 
copy_to_logdir faillist
copy_to_logdir longlog
copy_to_logdir log
# Also move all tests
if [ -d $LOGDIR/$OUTPUTDIR ] ; then 
  rm -Rf $LOGDIR/$OUTPUTDIR
fi
decho "Moving $OUTPUTDIR to $LOGDIR"
mv -f $OUTPUTDIR $LOGDIR/

if [ $fullres -eq 0 ] ; then
  DIGESTFILE=$LOGDIR/test-digest.log
  decho "Generating $DIGESTFILE"
  $MAKE digest TEST_FPC=$TARGET_FPC TEST_OS_TARGET="$OS_TARGET" TEST_CPU_TARGET="$CPU_TARGET" \
    TEST_BINUTILSPREFIX=${FULL_TARGET}- EMULATOR="$QEMU_SCRIPT" TEST_OPT="$TEST_OPT" > $DIGESTFILE 2>&1
  if [ $upload -eq 1 ] ; then
    UPLOADFILE=$LOGDIR/test-upload.log
    decho "Uploading $UPLOADFILE"
    $MAKE uploadrun TEST_FPC=$TARGET_FPC TEST_OS_TARGET="$OS_TARGET" TEST_CPU_TARGET="$CPU_TARGET" \
    TEST_BINUTILSPREFIX=${FULL_TARGET}- EMULATOR="$QEMU_SCRIPT" TEST_OPT="$TEST_OPT" DB_SSH_EXTRA="-i ~/.ssh/freepascal" > $UPLOADFILE 2>&1
  fi
fi
decho "run_one_testsuite finished for $FULL_TARGET"
}

if [ "$1" == "all" ] ; then
  shift
  for cpu in $linux_cpu_list ; do
    QEMU_SYSROOT=
    QEMU_CPU=
    QEMU_OPT=
    TEST_OPT=
    TEST_ABI=
    run_one_testsuite $cpu linux "${@}"
  done
else
  if [ "$*" == "" ] ; then
    decho "Usage: $0 CPU"
    decho  " or    $0 all"
    exit 1
  fi
  run_one_testsuite "${@}"
fi

