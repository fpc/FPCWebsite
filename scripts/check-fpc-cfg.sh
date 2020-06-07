#!/usr/bin/env bash

echo "This script checks for unexisting directories in Free Pascal configuration files"

fpc_versions_script=`find ${PATH//:/ } -name "fpc-versions.sh" 2> /dev/null | head -1 `

if [ -f "$fpc_versions_script" ] ; then
  echo "Loading environment variables from $fpc_versions_script"
  . $fpc_versions_script
else
  echo "No fpc-versions.sh script found in PATH" 
fi

if [ -z "$FPC" ] ; then
  FPC=fpc
fi

FPC=`which $FPC`

if [ -z "$FPC" ] ; then
  fpcversion=$TRUNKVERSION
  if [ -f "$PASDIR/fpc-$fpcversion/bin/fpc" ] ; then
    FPC=$PASDIR/fpc-$fpcversion/bin/fpc
  fi
fi


if [ -x "$FPC" ] ; then
  target_fpc_os=`$FPC -iTO`
  target_fpc_cpu=`$FPC -iTP`
  target_fpc_version=`$FPC -iV`
  target_fpc_full=$target_fpc_cpu-$target_fpc_os
else
  echo "Unable to find a working fpc"
  exit  
fi

cfg_files=`ls $HOME/.fpc.cfg /etc/fpc.cfg 2> /dev/null`

if [ -z "$cfg_files" ] ; then
  echo "No config file found"
  exit
fi

for cfgfile in $cfg_files ; do
  #dir_list=`sed -n "s:^[[:space:]]*-F[ilu]\(.*\):\"\1\":p" $cfgfile 2> /dev/null `
  dir_list=`sed -n "s:^[[:space:]]*-F[ilu]\(.*\):\1:p" $cfgfile 2> /dev/null `

  if [ -z "$dir_list" ] ; then
    echo "No directories found for config file $cfgfile"
    continue
  fi

  for dir in $dir_list ; do
    echo "Check directory \"$dir\""
    dir=${dir//\$fpctarget/${target_fpc_full}}
    dir=${dir//\$FPCTARGET/${target_fpc_full}}
    dir=${dir//\$fpcversion/$target_fpc_version}
    dir=${dir//\$FPCVERSION/$target_fpc_version}
    if [ ! -d "$dir" ] ; then
      echo "$dir appears in $cfgfile, but does not exist"
    fi
  done
done

