#!/usr/bin/env bash

GEN_CPU="$1"

if [ -z "$FPC" ] ; then
  FPC=fpc
fi

if [ -z "$CPU" ] ;then
  GEN_CPU=`$FPC -iTP`
fi

FPCBASE=`basename $FPC`

if [ -z "$TARGET" ] ; then
  if [ "${FPCBASE/fpc/}" == "$FPCBASE" ] ; then
    TARGET="$FPCBASE"
  else
    FPCBIN=`$FPC -PB`
    TARGET=`basename $FPCBIN`
  fi
fi

if [ -z "$TEST_OPT" ] ; then
  TEST_OPT="-n -vwnihx -O2"
fi

if [ -z "$TEST_MAKE_EXTRA" ] ; then
  TEST_MAKE_EXTRA="RELEASE=1"
fi

if [ -z "$GEN_MAKE_EXTRA" ] ; then
  GEN_MAKE_EXTRA="RELEASE=1"
fi

i=0

if [ -z "$COMMON_OPT" ] ; then
  COMMON_OPT=" -n -gl"
fi

set -u

function gen_variant ()
{
  local_opt="$1"
  let i++
  target_name=${TARGET}-llvm-v$i
  echo "Generating variant $i for $TARGET, using OPT=\"$COMMON_OPT $local_opt\", FPC=$FPCBIN and LLVM=1"
  llvmlog=`pwd`/llvm-v$i.log
  if [ -f "$target_name" ] ; then
    rm -Rf $target_name
  fi
  make distclean rtlclean rtl all PPC_TARGET=$GEN_CPU FPC=$FPCBIN $GEN_MAKE_EXTRA OPT="$COMMON_OPT $local_opt" LLVM=1 > $llvmlog 2>&1
  makeres=$?
  if [ $makeres -eq 0 ] ; then
    echo "Copying $TARGET as $target_name"
    cp -fp $TARGET $target_name
  else
    echo "Generating variant $i failed, see $llvmlog"
  fi
}

function test_variant ()
{
  index="$1"
  used_opt="${global_opts[$index]}"
  llvmbin=`pwd`/${TARGET}-llvm-v$index
  cleanlog=`pwd`/clean-llvm-$index.log
  alllog=`pwd`/all-llvm-$index.log
  if [ -f "$llvmbin" ] ; then
    let total++
    echo "Testing $llvmbin, compiled with OPT=\"$used_opt\", OPT=\"$TEST_OPT\", make option $TEST_MAKE_EXTRA"
    echo "Testing $llvmbin, compiled with OPT=\"$used_opt\", OPT=\"$TEST_OPT\", make option $TEST_MAKE_EXTRA" > $alllog
    echo "Running distclean in rtl with $llvmbin"
    make -C ../rtl distclean FPC=$llvmbin > $cleanlog 2>&1
    echo "Running all in rtl with $llvmbin"
    make -C ../rtl all FPC=$llvmbin $TEST_MAKE_EXTRA OVERRIDEVERSIONCHECK=1 OPT="$TEST_OPT" >> $alllog 2>&1
    makeres=$?
    if [ $makeres -ne 0 ] ; then
      echo "make all failed for $llvmbin"
      echo "Error: make all failed for $llvmbin" >> $alllog
      let failures++
      FAILURE_LIST+=" ${TARGET}-llvm-v$index"
    else
      let oks++
    fi
  else
    echo "$llvmbin not found"
  fi
}

# arrOpts=("-O-" "-O1" "-O2" "-O3" "-O4")
declare -a newOpts
declare -a allOpts
declare -a arrOpts

ind=0

function add_Oo()
{
  add_opt="$1"
  newOpts=()
  for prevopts in "${arrOpts[@]}" ; do
    let ind++
    newOpts+=("$prevopts -Oo$add_opt")
  done
  arrOpts=("${newOpts[@]}")
}

function add_Oono()
{
  add_opt="$1"
  newOpts=()
  for prevopts in "${arrOpts[@]}" ; do
    let ind++
    newOpts+=("$prevopts -Oono$add_opt")
  done
  arrOpts=("${newOpts[@]}")
}

function add_Oo_and_Oono()
{
  add_opt="$1"
  newOpts=()
  for prevopts in "${arrOpts[@]}" ; do
    let ind++
    newOpts+=("$prevopts -Oo$add_opt")
    newOpts+=("$prevopts -Oono$add_opt")
  done
  arrOpts=("${newOpts[@]}")
}

all_opts=`$FPC -io`
echo "All variants are \"$all_opts\""
arrOpts=("-O-")
for add_opt in $all_opts ; do
  add_Oono "$add_opt"
done
allOpts=("${arrOpts[@]}")

arrOpts=("-O-")
for add_opt in $all_opts ; do
  add_Oo "$add_opt"
done
allOpts+=("${arrOpts[@]}")

arrOpts=("-O2")
for add_opt in $all_opts ; do
  add_Oono "$add_opt"
done
allOpts+=("${arrOpts[@]}")


arrOpts=("${allOpts[@]}")
add_Oo_and_Oono "level2"


# Iterate the loop to read and print each array element
for value in "${arrOpts[@]}" ; do
  echo "value=\"$value\""
done
 
global_opts=("")

PWD=`pwd`
CURRENT_DIR=`basename $PWD`

if [ "$CURRENT_DIR" != "compiler" ] ; then
  echo "This script can only be used in compier directory"
  exit
fi

# Generate all variants of the compiler
for opt in "${arrOpts[@]}" ; do
  gen_variant "$opt"
  global_opts[$i]="$opt"
done
lasti=$i

i=0
oks=0
failures=0
total=0

FAILURE_LIST=""

while [ $i -lt $lasti ] ; do
  let i++
  test_variant $i
done

if [ $failures -eq 0 ] ; then
  echo "No failure detected in $total checks"
else
  echo "$failures failure(s) detected in $total checks"
  echo "Failing compiers: $FAILURE_LIST"
fi
