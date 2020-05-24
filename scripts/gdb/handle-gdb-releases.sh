#!/usr/bin/env bash

if [ -z "$GDBMAINDIR" ] ; then
  GDBMAINDIR=$HOME/gnu/gdb
fi

if [ -z "$PASCALMAINDIR" ] ; then
  PASCALMAINDIR=$HOME/pas
fi

if [ "X$1" == "X--help" ] ; then
  echo "$0 is a script that will try to compile different versions of the GNU debugger GDB"
  echo "It will try to download from default GNU GDB ftp sites versions from 4.16 up to latest"
  echo "For each version, it will unpack sources, try to apply some changes, in order to cope"
  echo "for newer changes in GNU GCC compiler, create a build directory"
  echo "run ../gdb-X.Y.Z/configure with some options"
  echo "if configure suceeds, it will launch \"make all-gdb\""
  echo "if a new gdb executable is produced, it will be stored as $HOME/bin/gdb-X.Y.Z"
  echo "After, it will try to use the script from pas/trunk/fpcsrc/packages/gdbint directory"
  echo "Called gen-gdblib-inc.sh and stored the new libgdb produced into directory"
  echo "$PASCALMAINDIR/libgdb/gdb-X.Y.Z"
  echo "If MAILTO env variable is set, an email will be sent to this address with"
  echo "a short report about script results"
  echo "Individual GDB version change be tested using command line parameter"
  echo "If parameters are provided, the first parameter is assumed to be"
  echo "the archive file containing a specific GDB version,"
  echo "the optional second parameter is passed as it to configure script"
  echo "Special --all option adds \"--enable-targets=all --enable-64-bit-bfd\""
  echo "to configure call"
  exit
fi

if [ "X$1" == "X--all" ] ; then
  default_config_options="--enable-targets=all --enable-64-bit-bfd"
  build_variant=-all
  shift
else
  default_config_options=
  build_variant=
fi

# Function handling a single source tarball
function handle_release ()
{
  cd $GDBMAINDIR

  zipname=$1

  # Extract version number
  release=`echo $zipname | sed -n "s:.*gdb-\([0-9.]*\)a*\..*:\1:p" `
  # Extract compression type
  compression=${zipname//*.}

  config_options="$2 $default_config_options --disable-werror -with-python=no"

  if [ ! -f $zipname ] ; then
    echo "Trying to download $zipname from ftp://ftp.gnu.org/gnu/gdb/"
    wget -t 5 ftp://ftp.gnu.org/gnu/gdb/$zipname
  fi
  if [ ! -f $zipname ] ; then
    echo "Trying to download $zipname from ftp://sourceware.org/pub/gdb/old-releases/"
    wget -t 5 ftp://sourceware.org/pub/gdb/old-releases/$zipname
  fi
  if [ ! -f $zipname ] ; then
    echo "Failed to download $zipname"
    file=` echo $file_list | grep $release`
    return
  fi

  if [ "X$compression" == "Xbz2" ] ; then
    taropt=-xvjf
  elif [ "X$compression" == "Xxz" ] ; then
    taropt=-xvJf
  elif [ "X$compression" == "Xgz" ] ; then
    taropt=-xvzf
  elif [ "X$compression" == "Xtgz" ] ; then
    taropt=-xvzf
  else
    echo "Error: unable to handle compression $compression"
    return
  fi
  dirname=gdb-${release}
  builddir=build-gdb-${release}${build_variant}

  if [[ ( ! -f sha512.sum ) || ( $zipname -nt sha512.sum ) ]] ; then
    wget -t 5 ftp://sourceware.org/pub/gdb/releases/sha512.sum
  fi

  if [ -f sha512.sum ] ; then
    sha_line=`grep -w $zipname sha512.sum`
    if [ -n "$sha_line" ] ; then
      sha_out=`echo $sha_line | sha512sum -c`
      sha_res=$?
      if [ $sha_res -ne 0 ] ; then
        echo "Warning sha512sum failed: $sha_out, res=$sha_res"
      fi
    else
      echo "Warning: file $zipname not found in sha512.sum"
    fi
  fi

  if [ -d $dirname ] ; then
    echo "Deleting dir $dirname"
    rm -Rf $dirname
  fi

  if [ -d $builddir ] ; then
    echo "Deleting dir $builddir"
    rm -Rf $builddir
  fi

  echo "Creating dir $builddir"
  mkdir $builddir

  echo "Running tar $taropt $zipname > $builddir/tar.log 2>&1"
  tar $taropt $zipname > $builddir/tar.log 2>&1
  res=$?

  if [ $res -ne 0 ] ; then
    echo "Error: tar expansion of $zipname failed, res=$res"
    return
  fi
  if [ ! -d $dirname ] ; then
    echo "Error: tar did not expand into $dirname"
  else
    cd $dirname
    if [ "$release" == "6.8" ] ; then
      exec_c_includes_arch_utils_c=`grep '#include "arch-utils.c"' gdb/exec.c`
      if [ -n "$exec_c_includes_arch_utils_c" ] ; then
	echo "Fixing error in gdb/exec.c include"
        sed -i "s:arch-utils\.c:arch-utils.h:" gdb/exec.c
      fi
    fi
    if [ -f gdb/linux-nat.h ] ; then
      has_siginfo=`grep "struct *siginfo " gdb/linux-nat.h`
      if [ "X$has_siginfo" != "X" ]; then
        echo "Applying \"struct siginfo\" to \"siginfo_t\" patch"
        file_list=`grep "struct *siginfo" -rl gdb/*linux* gdb/*/*linux* `
        for file in $file_list ; do
          # This first replacement is for gdbserver/linux-low.h only
          sed -e "s:^struct *siginfo;$:#include <signal.h>:" -i $file
          sed -e "s:struct *siginfo:siginfo_t:g" -i $file
          res=$?
          if [ $res -ne 0 ] ; then
	    echo "Warning, sed substitution faile for file $file"
	  fi
        done
      fi
    fi
    if [ -f include/obstack.h ] ; then  
      has_obstack_problem=`grep '\*[(][(]void \*\*[)]__o->next_free.*\+\+ = [(][(]void \*[)]datum[)];.*\$' include/obstack.h`
      if [ "X$has_obstack_problem" != "X" ]; then
        echo "Applying obstack patch"
	cp include/obstack.h include/obstack.h.ori
	sed 's:.*\*[(]\(.*__o->next_free\)[)]+\+\+ = [(]\(.*\)[)]\(;.*\)$:\1 = \2; \1 += sizeof (\2)\3:' -i include/obstack.h
	diff -s include/obstack.h include/obstack.h.ori
        res=$?
	if [ $res -ne 1 ] ; then
	  echo "diff return=$res, sed script might have failed"
	fi
      fi
    fi
    cd ..
  fi

  cd $builddir
  export CFLAGS="-gdwarf-2 -O0"
  echo "Running ../$dirname/configure $config_options > configure.log 2>&1"
  ../$dirname/configure $config_options > configure.log 2>&1
  res=$?
  if [ $res -ne 0 ] ; then
    echo "Error: configure failed, res=$res"
    return
  else
    echo "configure OK"
  fi

  echo "Running make all-gdb > make.log 2>&1"
  make all-gdb > make.log 2>&1

  res=$?

  if [ $res -ne 0 ] ; then
    echo "Error: make all-gdb failed, res=$res"
    if [ -f ./gdb/gdb ]; then
      echo "./gdb/gdb exists nontheless, copied to gdb-${release}"
      cp ./gdb/gdb ~/bin/gdb-${release}
    fi
    return
  else
    echo "make all-gdb OK, copied to gdb-$release"
    cp ./gdb/gdb ~/bin/gdb-${release}
  fi

  cd gdb
  if [ -d $PASCALMAINDIR/trunk/fpcsrc ] ; then
    cp $PASCALMAINDIR/trunk/fpcsrc/packages/gdbint/gen-gdblib-inc.sh .
  else
    cp $PASCALMAINDIR/trunk/packages/gdbint/gen-gdblib-inc.sh .
  fi
  echo "Running ./gen-gdblib-inc.sh > gen-gdblib-inc.log 2>&1"
  ./gen-gdblib-inc.sh "removedir=/lib /usr/lib"  AWK=gawk > gen-gdblib-inc.log 2>&1
  res=$?

  if [ $res -ne 0 ] ; then
    echo "Error: gen-libgdb-inc.sh failed, res=$res"
    return
  fi

  echo "Running ./copy-libs.sh ~/pas/libgdb/gdb-$release > copy-libs.log 2>&1"
  ./copy-libs.sh $PASCALMAINDIR/libgdb/gdb-${release} > copy-libs.log 2>&1
  res=$?
  if [ $res -ne 0 ] ; then
    echo "Error: copy-libs.sh failed, res=$res"
    return
  else
    echo "copy-libs.sh to pas/libgdb/gdb-${release} OK"
  fi
}



# Get listing of GNU GDB files
wget -t 5 ftp://sourceware.org/pub/gdb/old-releases/  -O ftp-old-gdb-index.html
wget -t 5 ftp://ftp.gnu.org/gnu/gdb/ -O ftp-gdb-index.html
gdb_ftp_list=`sed -n "s:.*/gdb-\([0-9.]*\)a*\.tar.*\".*:handle_release gdb-\1.tar.gz:p" ftp-*gdb-index.html `

# When specifying a given release file, only handle that version
if [ "X$1" != "X" ] ; then
  handle_release $1 $2
  exit
fi
(
handle_release gdb-4.16.tar.bz2 i386-unknown-linux
handle_release gdb-4.17.tar.bz2 i386-unknown-linux
handle_release gdb-4.18.tar.bz2 i386-unknown-linux
handle_release gdb-5.0.tar.bz2 i386-unknown-linux
handle_release gdb-5.1.tar.bz2
handle_release gdb-5.1.0.1.tar.bz2
handle_release gdb-5.1.1.tar.bz2
handle_release gdb-5.2.tar.bz2
handle_release gdb-5.2.1.tar.bz2
handle_release gdb-5.3.tar.bz2
handle_release gdb-6.0a.tar.gz
handle_release gdb-6.1a.tar.gz
handle_release gdb-6.1.1a.tar.gz
handle_release gdb-6.2a.tar.gz
handle_release gdb-6.2.1a.tar.gz
handle_release gdb-6.3a.tar.gz
handle_release gdb-6.4a.tar.gz
handle_release gdb-6.5a.tar.gz
handle_release gdb-6.6a.tar.gz
handle_release gdb-6.7a.tar.gz
handle_release gdb-6.7.1a.tar.gz
handle_release gdb-6.8a.tar.gz
handle_release gdb-7.0a.tar.gz
handle_release gdb-7.0.1a.tar.gz
handle_release gdb-7.1a.tar.gz
handle_release gdb-7.2a.tar.gz
handle_release gdb-7.2.tar.gz
handle_release gdb-7.3a.tar.gz
handle_release gdb-7.3.1.tar.gz
handle_release gdb-7.4.tar.gz
handle_release gdb-7.4.1.tar.gz
handle_release gdb-7.5.tar.gz
handle_release gdb-7.5.1.tar.gz
handle_release gdb-7.6.tar.gz
handle_release gdb-7.6.1.tar.gz
handle_release gdb-7.6.2.tar.gz
handle_release gdb-7.7.tar.gz
handle_release gdb-7.7.1.tar.gz
handle_release gdb-7.8.tar.gz
handle_release gdb-7.8.1.tar.gz
handle_release gdb-7.8.2.tar.gz
handle_release gdb-7.9.tar.gz
handle_release gdb-7.9.1.tar.gz
handle_release gdb-7.10.tar.gz
handle_release gdb-7.10.1.tar.gz
handle_release gdb-7.11.tar.gz
handle_release gdb-7.11.1.tar.gz
# GDB 7.12 is compiled using g++ by default
# but should be compilable as a C executable with option
# --disable-build-with-cxx
handle_release gdb-7.12.tar.gz --disable-build-with-cxx
handle_release gdb-7.12.1.tar.gz --disable-build-with-cxx
# GDB 8.0 and after are C++ executables
handle_release gdb-8.0.tar.gz
handle_release gdb-8.0.1.tar.gz
handle_release gdb-8.1.tar.gz
handle_release gdb-8.1.1.tar.gz
handle_release gdb-8.2.tar.gz
handle_release gdb-8.2.1.tar.gz
handle_release gdb-8.3.tar.gz
handle_release gdb-8.3.1.tar.gz
handle_release gdb-9.1.tar.gz
handle_release gdb-9.2.tar.gz
) | tee  all.log 2>&1

if [ ! -z "$MAILTO" ] ; then
  mutt -x -s "compile all gdb results" -i all.log -- $MAILTO < /dev/null
fi
