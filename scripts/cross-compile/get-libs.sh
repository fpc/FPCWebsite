#!/usr/bin/env bash

machine=$1

if [ -z "$machine" ] ; then
  echo "Usage: $0 machine_name"
  exit
fi

cpu=`ssh $machine uname -p | tr [:upper:] [:lower:] `
os=`ssh $machine uname -s | tr [:upper:] [:lower:] `

if [ "$cpu" == "amd64" ] ; then
  cpu=x86_64
fi

echo "$machine reports CPU $cpu"
echo "$machine reports OS $os"

if [ "$cpu" == "amd64" ] ; then
  cpu=x86_64
fi

if [ "$cpu" == "arm64" ] ; then
  cpu=aarch64
fi

if [ "$cpu" == "ppc" ] ; then
  cpu=powerpc
fi

if [ "$cpu" == "ppc64" ] ; then
  cpu=powerpc64
fi

if [ "$cpu" == "ppc64le" ] ; then
  cpu=powerpc64le
fi

if [ ! -d "$cpu-$os" ] ; then
  echo "Creating directory $cpu-$os"
  mkdir -p $cpu-$os
fi
cd $cpu-$os

is_32bit=1;
is_64bit=0;
case $cpu in
  powerpc64|powerpc64le|sparc64|aarch64|x86_64|riscv64) is_64bit=1; is_32bit=0;;
esac

# Upload exactly a full path file
function upload_file ()
{
  f="$1"
  file_type=`ssh $machine file $f`
  echo "File $f type is $file_type"
  dir=`ssh $machine dirname $f`
  if [ ! -d ".$dir" ] ; then
    echo "Adding local directory .$dir"
    mkdir -p .$dir
  fi
  if [ "$file_type" != "${file_type//symbolic link/}" ] ; then
    is_link=1
  else
    is_link=0
  fi

  if [ "$file_type" != "${file_type//text/}" ] ; then
    is_linker_script=1
  else
    is_linker_script=0
  fi

  ls_line=`ssh $machine ls -l $f`

  if [ "${ls_line:0:1}" == "d" ] ; then
    echo "Skipping directory $f"
    return
  fi

  if [ "${ls_line:0:1}" == "l" ] ; then
    is_link=1
  fi

  if [ $is_link -eq 1 ] ; then
    echo "ls line is \"$ls_line\""
    link_target=${ls_line/* /}
    echo "link target is \"$link_target\""
    if [[ "${link_target:0:1}" == / || "${link_target:0:2}" == ~[/a-z] ]] ; then
      is_absolute=1
    else
      is_absolute=0
    fi
    nf=`ssh $machine ls -1 $dir/$link_target 2> /dev/null`
    if [ -z "$nf" ] ; then
      nf=`ssh $machine ls -1 $link_target`
    fi
    if [ -n "$nf" ] ; then
      ( upload_file $nf )
      echo "Adding symbolic link .$f to `pwd`$dir/$link_target"
      if [ $is_absolute -eq 0 ] ; then
        ( cd .$dir ; ln -sf $link_target `basename $f` )
      else
        ( ln -sf  `pwd`$link_target `pwd`$f )
      fi
    else
      echo "Unable to locate $link_target on $machine"
    fi
  else
    echo "Uploading $machine:$f to `pwd`$dir"
    scp $machine:$f .$dir
    if [ $is_linker_script -eq 1 ] ; then
      echo "Trying to isolate library references inside $f"
      file_content="`cat .$f | sed -n "s:GROUP::p" `"
      for ff in $file_content ; do
        echo "Handling $ff"
        if [ "${ff:0:1}" == "/" ] ; then
          echo "Looking for file $ff"
          upload_file $ff
        fi
      done
    fi
  fi
}

# Lookup filename or pattern 
function maybe_upload_files ()
{
  pattern="$1"
  file_list=`ssh $machine find "/usr/lib*" "/lib*" -name "$pattern" 2> /dev/null`
  if [ -n "$file_list" ] ; then
    for file in $file_list ; do
      upload_file $file
    done
  fi
}

# Checking for crt1.o file
crt_o_files=`ssh $machine find "/usr/lib*" "/lib*" -name "crt0.o" 2> /dev/null`

if [ -z "$crt_o_files" ] ; then
  crt_o_files=`ssh $machine find "/usr/lib*" "/lib*" -name "crt1.o" 2> /dev/null`
fi

if [ -z "$crt_o_files" ] ; then
  crt_o_files=`ssh $machine find "/usr/lib*" "/lib*" -name "crti.o" 2> /dev/null`
fi

if [ -z "$crt_o_files" ] ; then
  echo "No *crt*.o file found"
  exit
fi

# Copy all object from that directory
for f in $crt_o_files ; do
  echo "Testing file \"$f\""
  if [ -f ".$f" ] ; then
    echo "\".$f\" already uploaded"
  else
    dir=`ssh $machine dirname $f`
    if [ ! -d ".$dir" ] ; then
      echo "Adding local directory .$dir"
      mkdir -p .$dir
    fi
    scp $machine:"$dir/*.o" .$dir/
  fi
done

crtbegin_o_files=`ssh $machine find "/usr/lib*" "/lib*" -name "crtbegin.o" 2> /dev/null`

# Copy all object from that directory
for f in $crtbegin_o_files ; do
  echo "Testing file \"$f\""
  if [ -f ".$f" ] ; then
    echo "\".$f\" already uploaded"
  else
    dir=`ssh $machine dirname $f`
    if [ ! -d ".$dir" ] ; then
      echo "Adding local directory .$dir"
      mkdir -p .$dir
    fi
    scp $machine:"$dir/*.o" .$dir/
  fi
done

# libc.a
maybe_upload_files "libc.a"

# libc.so
maybe_upload_files "libc.so"

#libdl.so
maybe_upload_files "libdl.so"

#ld*.so*
maybe_upload_files "ld*.so*"

#libpthread.so
maybe_upload_files "libpthread.so"

#libiconv.a
maybe_upload_files "libiconv.a"

#libiconv.so
maybe_upload_files "libiconv.so"

#libgcc.a
maybe_upload_files "libgcc.a"

cd ..


