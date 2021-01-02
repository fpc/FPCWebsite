#!/usr/bin/env bash

force=0
local_links=0

while [ "${1:0:1}" = "-" ] ; do
if [ "$1" == "-f" ] ; then
  force=1
  shift
fi

if [ "$1" == "-l" ] ; then
  local_links=1
  shift
fi

if [ "$1" == "-all" ] ; then
  get_all=1
  shift
else
  get_all=0
fi

if [ "$1" == "-32" ] ; then
  get_32=1
  shift
else
  get_32=0
fi

if [ "$1" == "-64" ] ; then
  get_64=1
  shift
else
  get_64=0
fi
done

machine=$1

if [ $local_links -eq 0 ]; then
  if [ -z "$machine" ] ; then
    echo "Usage: $0 [-f] [-l] [-all] machine_name [dir_name]"
    echo "optional dir_name can be used to force name of installation dir"
    echo "otherwise guessed cpu-os is used"
    echo "-f can be added to allow writing into existing directory"
    echo "-l can be added to generate local links (to facilitate move to another machine)"
    echo "-all can be added to keep both 32 and 64-bit libraries"
    echo "-32 can be added to keep only 32-bit libraries"
    echo "-64 can be added to keep only 64-bit libraries"
    exit
  fi
fi

dir_name=$2

if [ -n "$3" ] ; then
  add_just_one_lib="$3"
else
  add_just_one_lib=""
fi


FIND=` which gfind 2> /dev/null `

if [ -z "$FIND" ] ; then
  FIND=find
fi

if [ -z "$machine" ] ; then
  cpu=unknown
  os=unknown
else
  cpu=`ssh $machine uname -p`
  cpu=`echo $cpu | tr "[A-Z]" "[a-z]" `
  echo "cpu is $cpu"
  if [ "$cpu" == "unknown" ] ; then
    cpu=`ssh $machine uname -m | tr "[A-Z]" "[a-z]" `
  fi

  os=`ssh $machine uname -s | tr "[A-Z]" "[a-z]" `

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

  if [ "$os" == "sunos" ] ; then
    os=solaris
  fi

  if [ -z "$dir_name" ] ; then
    dir_name=$cpu-$os
  fi

  if [ ! -d "$dir_name" ] ; then
    echo "Creating directory $dir_name"
    mkdir -p $dir_name
  else
    echo "Directory $dir_name already exists"
    if [ $force -eq 0 ] ; then
      echo "exiting to avoid merging"
      exit
    fi
  fi

  cd $dir_name
  echo "\"$0 ${@}\" run on `date`" > $0.log
fi

is_32bit=1;
is_64bit=0;
case "$cpu" in
  powerpc64|powerpc64le|sparc64|aarch64|x86_64|riscv64) is_64bit=1; is_32bit=0;;
esac

if [ $get_all -eq 1 ] ; then
  is_32bit=1
  is_64bit=1
fi

if [ $get_32 -eq 1 ] ; then
  is_32bit=1
  is_64bit=0
fi

if [ $get_64 -eq 1 ] ; then
  is_32bit=0
  is_64bit=1
fi

case "X_$os" in
  X_darwin) dynlib_suffix=.dylib;;
  X_win32|X_win64|X_wince) dynlib_suffix=.dll;;
  *) dynlib_suffix=.so;;
esac

upload_list=":"

# Upload exactly a full path file
function upload_file ()
{
  f="$1"
  file_type=`ssh $machine file $f`
  echo "File $f type is $file_type"
  dir=`ssh $machine dirname $f`
  if [ ! -d ".$dir" ] ; then
    echo "Adding local directory .$dir"
    mkdir -p ".$dir"
  else
    echo ".$dir already exists"
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
    if [[ "${link_target:0:1}" == "/" || "${link_target:0:2}" == "~[/a-z]" ]] ; then
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
        ( cd .$dir ;
           ln -sf $link_target `basename $f` 
        )
      else
        ( ln -sf  `pwd`$link_target `pwd`$f
        )
      fi
      uploadlist="${uploadlist}${f}:"
    else
      echo "Unable to locate $link_target on $machine"
    fi
  else
    if [ "${uploadlist/:$f:/}" != "$uploadlist" ] ; then
      echo "File $f already uploaded"
    else
      echo "Uploading $machine:$f to `pwd`$dir"
      scp -p $machine:$f .$dir
      res=$?
      if [ $res -eq 0 ] ; then
        uploadlist="${uploadlist}${f}:"
      else
        echo "scp -p $machine:$f .$dir failed, res=$res"
      fi
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
  fi
}

# Lookup filename or pattern 
function maybe_upload_files ()
{
  pattern="$1"
  echo "Looking for $pattern"
  file_list=`ssh $machine find "/usr/lib*" "/lib*" "/usr/*/lib*" "/usr/local/lib*" "/boot/system" -name "$pattern" 2> /dev/null`
  if [ -n "$file_list" ] ; then
    for file in $file_list ; do
      upload_file $file
    done
  fi
}

if [ -n "$add_just_one_lib" ] ; then
  echo "Only looking for \"$add_just_one_lib\""
  maybe_upload_files "$add_just_one_lib"
elif [ -n "$machine" ] ; then
  # Checking for crt1.o file
  crt_o_files=`ssh $machine find "/usr/lib*" "/lib*" -name "crt0.o" 2> /dev/null`

  if [ -z "$crt_o_files" ] ; then
    crt_o_files=`ssh $machine find "/usr/lib*" "/lib*" -name "crt1.o" 2> /dev/null`
  fi

  if [ -z "$crt_o_files" ] ; then
    crt_o_files=`ssh $machine find "/usr/lib*" "/lib*" -name "crti.o" 2> /dev/null`
  fi

  if [ -z "$crt_o_files" ] ; then
    crt_o_files=`ssh $machine find "/boot/system" -name "start*.o" 2> /dev/null`
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
      scp -p $machine:"$dir/*.o" .$dir/
      res=$?
      if [ $res -ne 0 ] ; then
        echo "scp -p $machine:$dir/*.o .$dir failed, res=$res"
      fi
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
      scp -p $machine:"$dir/*.o" .$dir/
      res=$?
      if [ $res -ne 0 ] ; then
        echo "scp -p $machine:$dir/*.o .$dir failed, res=$res"
      fi
    fi
  done

  # libc.a
  maybe_upload_files "libc.a"

  # libc.so
  maybe_upload_files "libc${dynlib_suffix}"

  #libdl.so
  maybe_upload_files "libdl${dynlib_suffix}"

  #ld*.so*
  maybe_upload_files "ld${dynlib_suffix}*"
  maybe_upload_files "ld-*${dynlib_suffix}*"

  #libpthread.so
  maybe_upload_files "libpthread${dynlib_suffix}"

  #libiconv.a
  maybe_upload_files "libiconv.a"

  #libiconv.so
  maybe_upload_files "libiconv${dynlib_suffix}*"

  #libgcc.a
  maybe_upload_files "libgcc.a"
  #libgcc_s.so*
  maybe_upload_files "libgcc_s${dynlib_suffix}*"

  if [ "$os" == "solaris" ] ; then
    echo "Trying to get Solaris specific files"
    echo "list from `ldd path/to/fpc-install/bin/* | sort |uniq `"
    maybe_upload_files "libmd.so*"
    maybe_upload_files "libaio.so*"
    maybe_upload_files "libdoor.so*"
    maybe_upload_files "libgen.so*"
    maybe_upload_files "libmd.so*"
    maybe_upload_files "libmd5.so*"
    maybe_upload_files "libm.so*"
    maybe_upload_files "libmp.so*"
    maybe_upload_files "libnsl.so*"
    maybe_upload_files "libpthread.so*"
    maybe_upload_files "librt.so*"
    maybe_upload_files "libscf.so*"
    maybe_upload_files "libsocket.so*"
    maybe_upload_files "libuutil.so*"
  fi

  if [ "$os" == "aix" ] ; then
    echo "Trying to get AIX specific files"
    maybe_upload_files "libm.so"
    maybe_upload_files "libbsd.so"
    maybe_upload_files "libm.a"
    maybe_upload_files "libbsd.a"
    maybe_upload_files "libpthread.a"
  fi

  #libroot.a (haiku)
  if [ "$os" == "haiku" ] ; then
    maybe_upload_files "libroot.so"
    maybe_upload_files "libnetwork.so"
    maybe_upload_files "libtextencoding.so"
  fi

  cd ..
fi

absolute_link_list=`$FIND . -not -type d | xargs ls -l | grep "^l.*$HOME/sys-root" `
absolute_link_names=`$FIND . -not -type d | xargs ls -l | grep "^l.*$HOME/sys-root" | gawk '{ print $ 9}' `
absolute_link_targets=`$FIND . -not -type d | xargs ls -l | grep "^l.*$HOME/sys-root" | gawk '{ print $ 11}' `

OIFS=$IFS
IFS=$'\n'
for link_line in $absolute_link_list ; do
  IFS=$OIFS
  # echo "line is \"$link_line\""
  name=`echo $link_line | gawk '{print $9}' `
  rel_name=$name
  target=`echo $link_line | gawk '{print $11}' `
  if [ "${name:0:2}" == "./" ] ; then
    name=${name/./`pwd`}
  fi
  echo "name is \"$name\", target is \"$target\""
  dir=`dirname $name`
  basename=`basename $name`
  rel_dir=""
  rel_dir_p=""
  odir=`pwd`
  cd $dir
  start_dir=$dir
  ls -l $basename
  dir_p=${dir//\//;}
  target_p=${target//\//;}
  while [ "${target_p/${dir_p};/${rel_dir}}" == "${target_p}" ] ; do
    cd ..
    rel_dir="../$rel_dir"
    rel_dir_p="..;$rel_dir_p"
    dirname=`basename $dir`
    dir=`dirname $dir`
    dir_p=${dir//\//;}
    # echo "dir_p is $dir_p"
    if [ "$dir" == "$odir" ] ; then
      continue
    fi
  done
  # echo "dir_p=\"$dir_p\""
  # echo "rel_dir_p=\"$rel_dir_p\""
  new_target_p=${target_p/${dir_p};/${rel_dir_p}}
  new_target=${new_target_p//;/\/}
  # echo "New target_p is \"$new_target_p\""
  echo "Replacing \"$dir/\" by \"$rel_dir\" in \"$target\" by \"$new_target\" as $name"
  cd $start_dir
  if [ -f  "$new_target" ] ; then
    if [ -f "$basename" ] ; then
      rm $basename
      ln -s $new_target $basename
    fi
  else
    echo "$new_target does not exist"
  fi
  cd $odir
done

# echo "absolute link names =\"$absolute_link_names\""
# echo "absolute link targets =\"$absolute_link_targets\""

