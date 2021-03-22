#!/usr/bin/env bash

PDW=`pwd`


. $HOME/bin/fpc-versions.sh

check_option_arg=1
verbose=0

while [ $check_option_arg -eq 1 ] ; do
  check_option_arg=0
  if [ "$1" == "--verbose" ] ; then
    verbose=1
    check_option_arg=1
    shift
  fi

  # Evaluate all arguments containing an equal sign
  # as variable definition
  if [ "${1/=/_}" != "$1" ] ; then
    eval export "$1"
    check_option_arg=1
    shift
  fi
done

if [ -z "${PASDIR}" ] ; then
  if [ "$FIXES" == "1" ] ; then
    PASDIR=$TRUNKDIR/fpcsrc
  else
    PASDIR=$FIXESDIR/fpcsrc
  fi
fi

UTILSDIR=${PASDIR}/utils
PACKAGESDIR=${PASDIR}/packages
fpcbuild_makefile_fpc=${PASDIR}/../Makefile.fpc
install_dat=${PASDIR}/installer/install.dat

set -u

sections="go32v2 win32 os.2 emx common source "


for section in $sections ; do
  echo "Checking section $section in $install_dat"
  others="${sections/$section /}"
  others="${others% }"
  others="(${others// /|})"
  section_file=${install_dat}.${section/./_}
cat > gawk.script.$section <<HERE
BEGIN {
doprint=0
}
tolower(\$0) ~ /$section packages/ { doprint=1 }
tolower(\$0) ~ /$others packages/  { doprint=0 }
{ if ( doprint == 1 ) { print \$0 } }
HERE
  gawk -v section=$section -v others="$others" -f gawk.script.$section  $install_dat > $section_file
  nb_lines=`wc -l $section_file `
  echo "File $section_file has $nb_lines lines"
done

list=""
pb_list=""
pb_count=0
discard_subdirs=" bin units "

function parse_dir ()
{
  MAINDIR="$1"
  maindir_name=`basename $MAINDIR`
  list=""
  if [ ! -d "${MAINDIR}" ] ; then
    echo "Directory ${MAINDIR} does not exist, aborting"
    exit
  else
    if [ -f "$MAINDIR/fpmake.pp" ] ; then
      package_name=`sed -n "s:.*AddPackage('\([^']*\)').*:\1:p" "$MAINDIR/fpmake.pp" `
      package_shortname=`sed -n "s;.*ShortName *:= *'\([^']*\)'.*;\1;p" "$MAINDIR/fpmake.pp" `
      if [ -z "$package_shortname" ] ; then
        package_shortname="$package_name"
      fi
      list+=" $MAINDIR:$package_name|$package_shortname"
    fi
    for dir in ${MAINDIR}/* ; do
      if [ -d "$dir" ] ; then
        dirname=`basename $dir`
        if [ "${discard_subdirs/ $dirname /}" != "$discard_subdirs" ] ; then
          echo "Discarding $dir"
          continue
        fi
        if [ -f "$dir/fpmake.pp" ] ; then
          package_name=`sed -n "s:.*AddPackage('\([^']*\)').*:\1:p" $dir/fpmake.pp `
          package_shortname=`sed -n "s;.*ShortName *:= *'\([^']*\)'.*;\1;p" $dir/fpmake.pp `
          if [ -z "$package_shortname" ] ; then
            package_shortname="$package_name"
          fi
          list+=" $dir:$package_name|$package_shortname"
        else
          if [[ ( -f "$dir/fpmake_disabled.pp" ) || ( -f "$dir/fpmake.pp_disabled" ) ]] ; then
            echo "$dir disabled"
          else
            echo "No fpmake.pp found in $dir"
            let pb_count++
            pb_list+=" $dir"
            ls "$dir"
          fi
        fi
      fi
    done
  fi
}

parse_dir "$PACKAGESDIR"
packages_list="$list"
parse_dir "$UTILSDIR"
utils_list="$list"

function analyze ()
{
  path="$1"
  name="$2"
  shortname="$3"
  updir=`dirname "$path" `
  dirname=`basename "$path" `
  group=`basename "$updir" `
  if [ "$group" == "packages" ] ; then
    shortprefix="u"
  else
    shortprefix=""
  fi
  echo "Analyzing $group $path $name $shortname"
  before=')'
  after='\$'
  count=`grep -c "MOVE.*)$name[$].* $shortprefix$shortname[$].*zip" $fpcbuild_makefile_fpc`
  line=` grep -n "MOVE.*)$name[$].* $shortprefix$shortname[$].*zip" $fpcbuild_makefile_fpc`
  if [ $count -eq 1 ] ; then
    echo "Found in $fpcbuild_makefile_fpc: $line"
  elif [ $count -eq 0 ] ; then
    echo "$shortname not found in $fpcbuild_makefile_fpc"
    let pb_count++
    pb_list+=" $name"
  else
    echo "$shortname found $count times in $fpcbuild_makefile_fpc"
    echo "$line"
    let pb_count++
    pb_list+=" $name"
  fi
}

i=0
for package in $packages_list ; do
  let i++
  echo "Package $i: $package"
  path=${package/:*/}
  rest=${package/*:/}
  name=${rest/|*/}
  short=${rest/*|/}
  analyze $path $name $short
done
for package in $utils_list ; do
  let i++
  echo "Utils package $i: $package"
  path=${package/:*/}
  rest=${package/*:/}
  name=${rest/|*/}
  short=${rest/*|/}
  analyze $path $name $short
done

echo "list of problems: $pb_list"

cd $PASDIR/..
echo "pwd=`pwd`"

long_dos_list=`ls -1 *go32v2*.zip 2> /dev/null `
short_dos_list=`ls -1 *dos.zip 2> /dev/null `

long_os2_list=`ls -1 *os2*.zip 2> /dev/null `
short_os2_list=`ls -1 *os2.zip 2> /dev/null `

long_emx_list=`ls -1 *emx*.zip 2> /dev/null `
short_emx_list=`ls -1 *emx.zip 2> /dev/null `

long_w32_list=`ls -1 *i386-win32*.zip 2> /dev/null `
short_w32_list=`ls -1 *w32.zip 2> /dev/null `

long_src_list=`ls -1 *source.zip 2> /dev/null `
short_src_list=`ls -1 *src.zip 2> /dev/null `

for target in src dos os2 emx w32 ; do
  if [ "$target" == "src" ] ; then
    targetsuffix=source
  elif [ "$target" == "dos" ] ; then
    targetsuffix=go32v2
  elif [ "$target" == "emx" ] ; then
    targetsuffix=emx
  elif [ "$target" == "os2" ] ; then
    targetsuffix=os_2
  elif [ "$target" == "w32" ] ; then
    targetsuffix=win32
  fi
  fpm_count=`find fpcsrc -name "*-$targetsuffix.fpm" | wc -l | gawk '{print $1}'`
  fpm_list=`find fpcsrc -name "*-$targetsuffix.fpm" `
  long_list_name=long_${target}_list
  short_list_name=short_${target}_list
  long_list="${!long_list_name}"
  short_list="${!short_list_name}"
  zip_count=0
  zip_ok_count=0
  zip_pb_count=0
  if [ -z "$short_list" ] ; then
    if [ -z "$long_list" ] ; then
      echo "No short nor long zip file for $target"
    else
      for zip in $long_list ; do
        let zip_count++
        in_install=`grep "=$zip(\[|,)" $install_dat.${targetsuffix} `
        if [ -z "$in_install" ] ; then
          echo "File $zip not found in $install_dat.${targetsuffix}"
          let zip_pb_count++
        else
          echo "File $zip found: $in_install"
          let zip_ok_count++
        fi
      done
    fi
  else
    for zip in $short_list ; do
      let zip_count++
      in_install=`grep "\[$zip\]" $install_dat.${targetsuffix} `
      if [ -z "$in_install" ] ; then
        echo "File $zip not found in $install_dat.${targetsuffix}"
        let zip_pb_count++
      else
        echo "File $zip found: $in_install"
        let zip_ok_count++
      fi
    done
    zip_count_2=0
    zip_ok_count_2=0
    zip_pb_count_2=0
    short_in_install=`sed -n "s;^package=.*[[]\(.*\)[]].*;\1;p" $install_dat.${targetsuffix} `
    for zip in $short_in_install ; do
      let zip_count_2++
      if [ -f "./$zip" ] ; then
        let zip_ok_count_2++
        # Check the source counterpart
        if [ "$target" != "src" ] ; then
          srczip=${zip/${target}/src}
          if [ ! -f "$srczip" ] ; then
            echo "Missing source for $zip: $srczip not found"
          fi
        fi
      else
        let zip_pb_count_2++
        echo "zip file $zip is in install.dat but was not generated"
      fi
    done
  fi
  echo "For $target: ok: $zip_ok_count, pb: $zip_pb_count, total: $zip_count"
  echo "In $install_dat $target: ok: $zip_ok_count_2, pb: $zip_pb_count_2, total: $zip_count_2"
done


