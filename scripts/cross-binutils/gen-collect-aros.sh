#!/usr/bin/env bash

if [ -z "$INSTALLDIR" ] ; then
  INSTALLDIR=$HOME/bin
fi

function do_one_cpu ()
{
# AROS version of CPU name
if [ "X$1" != "X" ] ; then
  TARGET_CPU=$1
else
  TARGET_CPU=arm
fi

# Free Pascal CPU name
if [ "X$2" != "X" ] ; then
  FPC_CPU_TARGET=$2
else
  FPC_CPU_TARGET=$TARGET_CPU
fi

sed -e "s:@aros_toolchain_ld@:$FPC_CPU_TARGET-aros-ld:" \
    -e "s:@AROS_CROSSTOOLSDIR@:$INSTALLDIR:" \
    -e "s:@aros_target_cpu@-:$FPC_CPU_TARGET-:" \
    -e "s:@aros_target_cpu@:$TARGET_CPU:" \
    env.h.in > env.h
echo "Generating new collect-aros for $TARGET_CPU"
make clean all HOST_CFLAGS=-D_CROSS_
echo "copying  ./collect-aros to $INSTALLDIR as$FPC_CPU_TARGET-aros-collect-aros"
cp -f ./collect-aros $INSTALLDIR/$FPC_CPU_TARGET-aros-collect-aros
}

svn_info=`svn info . 2> /dev/null`
svn_info_err=`svn info . 1> /dev/null 2>&1`

sheell_interactive=`[[ $- == *i* ]] && echo 1 || echo 0 `

if [ "X$1" == "X--help" ] ; then
  echo "$0 usage:"
  echo "generates CPU_aros-collect-aros utilities"
  echo "required to cross-compile for AROS target OS"
  echo "generated executables will be copied to"
  echo "directory \$INSTALLDIR env. variable (default value $INSTALLDIR)"
  exit
fi

echo "Password for AROS svn repository 'guest' account is 'guest'"
if [ -z "$svn_info" ] ; then
  if [ $shell_interactive -eq 1 ] ; then
    echo "svn checkout is missing, starting checkout"
    svn checkout https://svn.aros.org/svn/aros/trunk/AROS/tools/collect-aros 
  fi
else
  svn cleanup
  if [ $shell_interactive -eq 1 ] ; then
    echo "Running 'svn update'"
    svn update
  fi
  svn st -q
fi


if [ ! -f "./env.h.in" ] ; then
  echo "Missing file 'env.h.in', cannot continue"
  exit
fi

if [ "X$1" == "X" ] ; then
  do_one_cpu aarch64
  do_one_cpu arm
  do_one_cpu i386
  do_one_cpu m68k
  do_one_cpu ppc powerpc
  do_one_cpu x86_64
else
  do_one_cpu $*
fi

