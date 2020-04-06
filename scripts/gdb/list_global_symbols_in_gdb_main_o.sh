#!/usr/bin/env bash

logfile=main_global_symbols.log

if [ -z "$GDB_BASE_DIR" ] ; then
  GDB_BASE_DIR=$HOME/gnu/gdb
fi

if [ -z "$PAS_BASE" ] ; then
  PAS_BASE=$HOME/pas
fi

if [ -z "$LIBGDB_BASE_DIR" ] ; then
  LIBGDB_BASE_DIR=$PAS_BASE/libgdb
fi

acceptable_source_list="X main.c main.h gdb.c tui-main.c"

prev_version=

function check_libgdb ()
{
  libgdb=$1
  dir=`dirname $1`
  top_dir=`basename $dir`
  gdb_ver=${top_dir/gdb-/}
  ver_log=`pwd`/check_main_${gdb_ver}.log
  global_list_log=`pwd`/libgdb_${gdb_ver}_global_symbols.log

  (
  ar x $libgdb main.o
  mv -f main.o main_${gdb_ver}.o

  # This line assumes that the symbol name is the last element
  objdump -t main_${gdb_ver}.o | grep " g " | gawk '{print $NF}' | sort > $global_list_log

  global_list=`cat $global_list_log`
  echo "Global symbol list for main.o in $gdb_ver is: "
  echo -n "$gdb_ver" >> $logfile
  for symbol in $global_list ; do
    echo -n " $symbol "
    echo -en "\t$symbol" >> $logfile
  done
  echo ""
  echo "" >> $logfile
  ls -1tr $PAS_BASE/trunk/fpcsrc/packages/ide/units-$gdb_ver/*/gdbint.o 2> /dev/null
  gdbint_o=`ls -1tr $PAS_BASE/trunk/fpcsrc/packages/ide/units-$gdb_ver/*/gdbint.o 2> /dev/null | head -1 `
  echo "gdbint_o=$gdbint_o"
  if [ -z "$gdbint_o" ] ; then
    echo "No gdbint.o file found for $gdb_ver"
    rm -f main_${gdb_ver}.o
    return
  fi
  if [ -f $gdbint_o ] ; then
    objdump_log=${gdbint_o/gdbint/gdbint-objdump}.log
    objdump -t $gdbint_o > $objdump_log
    for symbol in $global_list ; do
      found=`grep -w $symbol $objdump_log`
      if [ -z "$found" ] ; then
        echo "Note: Symbol $symbol not found in gdbint for $gdb_ver"
        if [ -d $GDB_BASE_DIR/gdb-$gdb_ver ] ; then
          symbol_log=$dir/list-${symbol}.log
          find $GDB_BASE_DIR/gdb-$gdb_ver/gdb -name "*.c" -or -name "*.h" -or -name "*.sh" -or -name "*.y" | xargs grep -lw $symbol  > $symbol_log
          list_in_gdb_src=`cat $symbol_log `
          echo "Symbol is found in $list_in_gdb_src"
          for file in $list_in_gdb_src ; do
            fn=`basename $file`
            if [ "${acceptable_source_list/ $fn/}" == "$acceptable_source_list" ] ; then
              echo "Warning: $fn is not an acceptable source file"
              grep -wn $symbol $file
            fi
          done
        fi
      fi
    done
  fi
  rm -f main_${gdb_ver}.o
  ) > $ver_log
}

echo "Global listing in main.o" > $logfile
for dir1 in $LIBGDB_BASE_DIR/* ; do
  if [ -d "$dir1" ] ; then
    #echo "Testing directory $dir1" >> $logfile
    if [ -f "$dir1/libgdb.a" ] ; then
      check_libgdb "$dir1/libgdb.a"
    else
      for dir2 in "$dir1"/* ; do
        if [ -d "$dir2" ] ; then
          if [ -f "$dir2/libgdb.a" ] ; then
            ckeck_libgdb "$dir2/libgdb.a"
          else
            for dir3 in "$dir2"/* ; do
              if [ -d "$dir3" ] ; then
                if [ -f "$dir3/libgdb.a" ] ; then
                  ckeck_libgdb "$dir3/libgdb.a"
                fi
              fi
            done
          fi
        fi
      done 
    fi
  fi
done

