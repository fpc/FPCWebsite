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

if [ -z "${PASVERDIR}" ] ; then
  if [ "$FIXES" == "1" ] ; then
    PASVERDIR=$FIXESDIR/fpcsrc
  else
    PASVERDIR=$TRUNKDIR/fpcsrc
  fi
fi

echo "Using PASVERDIR=$PASVERDIR"

UTILSDIR=${PASVERDIR}/utils
PACKAGESDIR=${PASVERDIR}/packages
fpcbuild_makefile_fpc=${PASVERDIR}/../Makefile.fpc
install_dat=${PASVERDIR}/installer/install.dat

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
            if [ $verbose -eq 1 ] ; then
              ls "$dir"
            fi
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
  if [ $verbose -eq 1 ] ; then
    echo "Analyzing $group $path $name $shortname"
  fi
  before=')'
  after='\$'
  count=`grep -c "MOVE.*)$name[$].* $shortprefix$shortname[$].*zip" $fpcbuild_makefile_fpc`
  line=` grep -n "MOVE.*)$name[$].* $shortprefix$shortname[$].*zip" $fpcbuild_makefile_fpc`
  if [ $count -eq 1 ] ; then
    if [ $verbose -eq 1 ] ; then
      echo "Found in $fpcbuild_makefile_fpc: $line"
    fi
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
  if [ $verbose -eq 1 ] ; then
    echo "Package $i: $package"
  fi
  path=${package/:*/}
  rest=${package/*:/}
  name=${rest/|*/}
  short=${rest/*|/}
  analyze $path $name $short
done
for package in $utils_list ; do
  let i++
  if [ $verbose -eq 1 ] ; then
    echo "Utils package $i: $package"
  fi
  path=${package/:*/}
  rest=${package/*:/}
  name=${rest/|*/}
  short=${rest/*|/}
  analyze $path $name $short
done

echo "list of problems: $pb_list"

cd $PASVERDIR/..
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
  zip_count_2=0
  zip_ok_count_2=0
  zip_pb_count_2=0
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

function analyze_pkglist ()
{
  file="$1"
  dir="$2"
  section_file="$3"
  short_list=`sed -n "s:.*[[]\([^.]*\).*:\1:p" $file`
  long_list=`sed -n "s:.*package=\([^.]*\)[^[]*,.*:\1:p" $file`
  ok_count=0
  pb_count=0
  total_count=0
  pb_list=""
  for base in $short_list $long_list ; do
    let total_count++
    if [ $verbose -eq 1 ] ; then
      echo "checking $base in $section_file"
    fi
    found=`grep -w "$base" $section_file `
    if [ -z "$found" ] ; then
      if [ "$dir" == "packages" ] ; then
        # Also look for u prefix
        found=`grep -w "u$base" $section_file `
        if [ "${base:0:4}" == "fpca" ] ; then
          if [ $verbose -eq 1 ] ; then
            echo "Skipping $base for $dir because it is known to be empty"
          fi
          continue
        fi
      fi
    fi
    if [ -z "$found" ] ; then
      if [ $verbose -eq 1 ] ; then
        echo "$base not found"
      fi
      let pb_count++
      pb_list+=" $base"
    else
      if [ $verbose -eq 1 ] ; then
        echo "$base found: $found"
      fi
      let ok_count++
    fi
  done
  echo "analyze_pkglist $dir $file: pb=$pb_count/$total_count"
  if [ $pb_count -ne 0 ] ; then
    echo "List of problems: $pb_list"
  fi
  # Keep with dir suffix
  mv $file ${file/.lst/-$dir.lst}
}
 

function gen_pkglist ()
{
  os="$1"
  cpu="$2"
  dir="$3"
  section_file="$4"
  if [ ! -d "$dir" ] ; then
    echo "Directory $dir does not exist"
    return 1
  fi
  if [ ! -x "$dir/fpmake" ] ; then
    echo "$dir/fpmake is not executable"
    return 2
  fi
  $dir/fpmake pkglist --os="$os" --cpu="$cpu"
  if [ -f $dir/pkg-$os.lst ] ; then
    analyze_pkglist $dir/pkg-$os.lst $dir $section_file
  elif [ -f $dir/pkg-$cpu-$os.lst ] ; then
    analyze_pkglist $dir/pkg-$cpu-$os.lst $dir $section_file
  elif [ -f pkg-$os.lst ] ; then
    analyze_pkglist pkg-$os.lst $dir $section_file
  elif [ -f pkg-$cpu-$os.lst ] ; then
    analyze_pkglist pkg-$cpu-$os.lst $dir $section_file
  else
    echo " No pkg-list file found for $cpu-$os"
  fi
}

extra_packages="asld base rtl gdb installer"

function check_install_dat ()
{
  install=$1
  pkglist_pattern="$2"
  pkglist_files=`ls -1 ${pkglist_pattern}* `
  short_list=`sed -n "s:package=.*[[]\([^.]*\).*:\1:p" $install `
  long_list=`sed -n "s:.*package=\([^.]*\)[^[]*,.*:\1:p" $install `
  ok_count=0
  pb_count=0
  total_count=0
  pb_list=""
  for base in $short_list $long_list ; do
    let total_count++
    found=`grep -w "$base" $pkglist_files `
    if [ -z "$found" ] ; then
      for extra in $extra_packages ; do
        if [ "base" == "$extra" ] ; then
          if [ $verbose -eq 1 ] ; then
            echo "Skipping known package $extra"
          fi
          continue
        fi
      done
      echo "$base not found in $pkglist_files"
      let pb_count++
      pb_list+=" $base"
    else
      let ok_count++
    fi
  done
  echo "For $install: ok: $ok_count, pb: $pb_count, total: $total_count"
  if [ $pb_count -ne 0 ] ; then
    echo "pb list: $pb_list"
  fi
}

cd $PASVERDIR

gen_pkglist emx i386 utils $install_dat.emx
gen_pkglist emx i386 packages $install_dat.emx
check_install_dat $install_dat.emx "pkg-emx"

gen_pkglist os2 i386 utils $install_dat.os_2
gen_pkglist os2 i386 packages $install_dat.os_2
check_install_dat $install_dat.os_2 "pkg-os2"

gen_pkglist go32v2 i386 utils $install_dat.go32v2
gen_pkglist go32v2 i386 packages $install_dat.go32v2
check_install_dat $install_dat.go32v2 "pkg-go32v2"

gen_pkglist win32 i386 utils $install_dat.win32
gen_pkglist win32 i386 packages $install_dat.win32
check_install_dat $install_dat.win32 "pkg-i386-win32"


