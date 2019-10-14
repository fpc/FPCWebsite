#!/bin/bash

startdir=`pwd`

if [ -z "$PASCALMAINDIR" ] ; then
  PASCALMAINDIR=$HOME/pas
fi

function compile_ide_with_libgdb ()
{
  release=$1
  log=test-fp-${release}.log

  if [ ! -d ~/pas/libgdb/gdb-$release ] ; then
    echo "No libgdb directory for release $release"
    return
  fi

  export GDBLIBDIR=~/pas/libgdb/gdb-$release

  if [ ! -d ./units-$release ] ; then
    mkdir ./units-$release
  fi

  make -C ../../packages distclean OPT="-n -gl" > $log 2>&1
  make -C ../../rtl distclean all OPT="-n -gl" >> $log 2>&1
  res=$?
  if [ $res -ne 0 ] ; then
    echo "Error: Creation of rtl units failed, res=$res"
    return
  else
    echo "Creation of rtl units for fp-$release OK"
  fi

  make -C ../../packages all DEBUG=1 >> $log 2>&1
  rm -Rf ../../packages/gdbint/units
  make -C ../../packages/gdbint distclean all DEBUG=1 OPT="-n -gl -vwnihc" FPMAKEOPT=-v >> $log 2>&1
  res=$?
  if [ $res -ne 0 ] ; then
    echo "Error: Compilation of gdbint for fp-$release failed, res=$res"
    return
  else
    echo "Compilation of gdbint of fp-$release OK"
  fi

  make distclean all NOGDBMI=1 DEBUG=1 OPT="-n -gl -v0wnih -k-Map -kfp-$release.map -k--exclude-libs -kreadline,history,bfd -dUSE_FPBASENAME" \
    FPBASENAME=fp-$release FPMAKEOPT=-v >> $log 2>&1
  res=$?
  if [ $res -ne 0 ] ; then
    echo "Error: Make call for fp-$release failed, res=$res"
    return
  else
    echo "Make call for fp-$release OK"
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
  for arg in $* ; do
    compile_ide_with_libgdb $arg
  done
  exit
fi

(
compile_ide_with_libgdb 4.18
compile_ide_with_libgdb 5.0
compile_ide_with_libgdb 5.1.0.1
compile_ide_with_libgdb 5.1.1
compile_ide_with_libgdb 5.1
compile_ide_with_libgdb 5.2.1
compile_ide_with_libgdb 5.2
compile_ide_with_libgdb 5.3
compile_ide_with_libgdb 6.0
compile_ide_with_libgdb 6.1
compile_ide_with_libgdb 6.1.1
compile_ide_with_libgdb 6.2
compile_ide_with_libgdb 6.2.1
compile_ide_with_libgdb 6.3
compile_ide_with_libgdb 6.4
compile_ide_with_libgdb 6.5
compile_ide_with_libgdb 6.6
compile_ide_with_libgdb 6.7
compile_ide_with_libgdb 6.7.1
compile_ide_with_libgdb 6.8
compile_ide_with_libgdb 7.0
compile_ide_with_libgdb 7.0.1
compile_ide_with_libgdb 7.1
compile_ide_with_libgdb 7.2
compile_ide_with_libgdb 7.2
compile_ide_with_libgdb 7.3
compile_ide_with_libgdb 7.3.1
compile_ide_with_libgdb 7.4
compile_ide_with_libgdb 7.4.1
compile_ide_with_libgdb 7.5
compile_ide_with_libgdb 7.5.1
compile_ide_with_libgdb 7.6
compile_ide_with_libgdb 7.6.1
compile_ide_with_libgdb 7.6.2

compile_ide_with_libgdb 7.7
compile_ide_with_libgdb 7.7.1
compile_ide_with_libgdb 7.8
compile_ide_with_libgdb 7.8.1
compile_ide_with_libgdb 7.8.2
compile_ide_with_libgdb 7.9
compile_ide_with_libgdb 7.9.1
compile_ide_with_libgdb 7.10
compile_ide_with_libgdb 7.10.1
compile_ide_with_libgdb 7.11
compile_ide_with_libgdb 7.11.1
compile_ide_with_libgdb 7.12
compile_ide_with_libgdb 7.12.1
) | tee  all.log 2>&1

if [ ! -z "$MAILTO" ] ; then
  # pierre@freepascal.org
  mutt -x -s "Test FP IDE libgdb versions" -i all.log -- $MAILTO  < /dev/null
fi
