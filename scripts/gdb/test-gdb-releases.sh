#!/bin/bash

startdir=`pwd`

if [ -z "$PASCALMAINDIR" ] ; then
  PASCALMAINDIR=$HOME/pas
fi

if [ -z "$MAKE" ] ; then
  MAKE=`which gmake`
  if [ -z "$MAKE" ] ; then
    MAKE=`which make`
  fi
fi

if [ "$1" == "--skip-prepare" ] ; then
  skip_prepare=1
  shift
else
  skip_prepare=0
fi


function prepare_compilation()
{
  if [ $skip_prepare -eq 1 ] ; then
    echo "Skipping prepare_compilation"
    return 0
  fi
  log=test-fp-with-gdb.log
  echo "Preparing for IDE compilation with internal GDB"
  echo "Calling '$MAKE distclean' in ../../packages and ../../rtl"
  $MAKE -C ../../packages distclean OPT="-n -gl" > $log 2>&1
  $MAKE -C ../../rtl distclean OPT="-n -gl" >> $log 2>&1

  echo "Calling '$MAKE all' in ../../rtl"
  $MAKE -C ../../rtl all OPT="-n -gl" >> $log 2>&1
  res=$?
  if [ $res -ne 0 ] ; then
    echo "Error: Creation of rtl units failed, res=$res"
    return 1
  else
    echo "Creation of rtl units OK"
  fi

  echo "Calling '$MAKE all' in ../../packages"
  $MAKE -C ../../packages all DEBUG=1 >> $log 2>&1
  res=$?
  if [ $res -ne 0 ] ; then
    echo "Error: Creation of packages units failed, res=$res"
    return 1
  else
    echo "Creation of packages units OK"
  fi
}

function compile_ide_with_libgdb ()
{
  release=$1
  log=test-fp-${release}.log
  export GDBLIBDIR=~/pas/libgdb/gdb-$release

  if [ ! -f ~/pas/libgdb/gdb-$release/libgdb.a ] ; then
    echo "No libgdb.a file in $GDBLIBDIR directory for release $release"
    return
  else
    echo "Testing libgdb.a file from $GDBLIBDIR directory for release $release"
  fi

 echo "Testing ${release}" > $log

  if [ ! -d ./units-$release ] ; then
    mkdir ./units-$release
  fi

  rm -Rf ../../packages/gdbint/units
  echo "Calling '$MAKE -C ../../packages/gdbint distclean all DEBUG=1 OPT=\"-n -gl -vwnihc\" FPMAKEOPT=-v'"
  $MAKE -C ../../packages/gdbint distclean all DEBUG=1 OPT="-n -gl -vwnihc" FPMAKEOPT=-v >> $log 2>&1
  res=$?
  if [ $res -ne 0 ] ; then
    echo "Error: Compilation of gdbint for fp-$release failed, res=$res"
    return
  else
    echo "Compilation of gdbint of fp-$release OK"
    cp -rfp ../../packages/gdbint/units/* ./units-$release
  fi

  echo "Calling '$MAKE distclean all NOGDBMI=1 DEBUG=1 OPT=\"-n -gl -v0wnih -k-Map -kfp-$release.map -k--exclude-libs -kreadline,history,bfd -dUSE_FPBASENAME\" \
    FPBASENAME=fp-$release FPMAKEOPT=-v'"

  $MAKE distclean all NOGDBMI=1 DEBUG=1 OPT="-n -gl -v0wnih -k-Map -kfp-$release.map -k--exclude-libs -kreadline,history,bfd -dUSE_FPBASENAME" \
    FPBASENAME=fp-$release FPMAKEOPT=-v >> $log 2>&1
  res=$?
  if [ $res -ne 0 ] ; then
    echo "Error: Make call for fp-$release failed, res=$res"
    return
  else
    echo "Make call for fp-$release OK"
    cp -rfp ./units/* ./units-$release
  fi

  OS_TARGET=`fpc -iTO`
  CPU_TARGET=`fpc -iTP`
  cp ./bin/$CPU_TARGET-$OS_TARGET/fp ./fp-$release
  res=$?
  if [ $res -ne 0 ] ; then
    echo "Error: Creation of fp-$release failed, res=$res"
    return
  else
    echo "Creation of fp-$release OK"
  fi
}

libgdb_dir_list=`ls -1d $PASCALMAINDIR/libgdb/ | sed "s:gdb-::" `

if [ -n "$1" ] ; then
  prepare_compilation
  for arg in $* ; do
    compile_ide_with_libgdb $arg
  done
else
  (
  prepare_compilation
  gdb_release_list="4.18 5.0 5.1.0.1 5.1.1 5.1 5.2.1 5.2 5.3"
  gdb_release_list+=" 6.0 6.1 6.1.1 6.2 6.2.1 6.3 6.4 6.5 6.6 6.7 6.7.1 6.8"
  gdb_release_list+=" 7.0 7.0.1 7.1 7.2 7.2 7.3 7.3.1 7.4 7.4.1 7.5 7.5.1 7.6 7.6.1 7.6.2"
  gdb_release_list+=" 7.7 7.7.1 7.8 7.8.1 7.8.2 7.9 7.9.1 7.10 7.10.1 7.11 7.11.1 7.12 7.12.1"
  for ver in $gdb_release_list ; do
    compile_ide_with_libgdb $ver
  done
  ) | tee  all.log 2>&1

  if [ ! -z "$MAILTO" ] ; then
    # pierre@freepascal.org
    mutt -x -s "Test FP IDE libgdb versions" -i all.log -- $MAILTO  < /dev/null
  fi
fi
