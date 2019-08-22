#!/usr/bin/env bash

verbose=0

if [ "$1" = "-v" ] ; then
  verbose=1
fi

set -u

fpmake_list=`ls -1 fpcsrc/packages/*/fpmake.pp fpcsrc/packages/fpmake.pp fpcsrc/utils/*/fpmake.pp fpcsrc/utils/fpmake.pp 2> /dev/null`

dir_names=""
package_names=""
short_names=""
short_names_makefile=""

for f in $fpmake_list ; do
  dir_name=`dirname $f`
  outer_dir_name=`basename $dir_name`
  dir_names="$dir_names $outer_dir_name"
  package_name=`sed -n -e "s:.*AddPackage('\(.*\)').*:\1:ip" $f`
  package_names="$package_names $package_name"

  short_package_name=`sed -n -e "s;.*ShortName *:= *'\(.*\)'.*;\1;ip" $f`
  if [ -z "$short_package_name" ] ; then
    no_short_name=1
    short_package_name=$package_name
  else
    no_short_name=0
  fi
  short_names="$short_names $short_package_name"
  if [ $verbose -eq 1 ] ; then
    echo "$f $outer_dir_name $package_name $short_package_name"
  fi
  if [ "$outer_dir_name" != "$package_name" ] ; then
    if [ "utils-$outer_dir_name" != "$package_name" ] ; then
      if [ $verbose -eq 1 ] ; then
        echo "Package name and directory name are different"
      else
        echo "Package name $package_name and directory name $outer_dir_name are different"
      fi
    fi
  fi
  short_in_makefile=`sed -n "s;.*mv .*PRE.$package_name..ZIP.* \(.*\)..ZIP.*;\1;p" ./Makefile.fpc`
  if [ -n "$short_in_makefile" ] ; then
    short_names_makefile="$short_names_makefile $short_in_makefile"
    if [ $verbose -eq 1 ] ; then
      echo "Short name in Makefile.fpc is $short_in_makefile, $short_package_name in $f"
    fi
    if [ "$short_in_makefile" = "u$short_package_name" ] ; then
      if [ $verbose -eq 1 ] ; then
        echo "Line OK for $f"
      fi
    fi
  else
    echo -n "$package_name not found in Makefile.fpc, "
    line_in_makefile=`grep ".*mv.*$package_name.*" ./Makefile.fpc`
    echo "$line_in_makefile"
  fi
  if [ ${#short_package_name} -gt 4 ] ; then
    echo -n "Short name $short_package_name in $f is too long, "
    if [ -n "$short_in_makefile" ] ; then
      if [ $no_short_name -eq 1 ] ; then
        echo "add \" P.ShortName := '${short_in_makefile/u/}';\""
      else
        echo "change \" P.ShortName := '${short_in_makefile/u/}';\""
      fi
    fi
  fi
done

echo "$dir_names" | tr " " '\n' > dir_list.txt
duplicate_dir=`cat dir_list.txt | sort | uniq -d `
echo "$package_names" | tr " " '\n' > package_list.txt
duplicate_package=`cat package_list.txt | sort | uniq -d `
echo "$short_names" | tr " " '\n' > short_package_list.txt
duplicate_short=`cat short_package_list.txt  | sort | uniq -d `
echo "$short_names_makefile" | tr " " '\n' > short_in_makefile.txt
duplicate_short_in_makefile=`cat short_in_makefile.txt | sort | uniq -d `

package_names_in_makefile=`sed -n "s;.*mv .*PRE.\(.*\)..ZIP.* \(.*\)..ZIP.*;\1;p" ./Makefile.fpc`
for p in $package_names_in_makefile ; do
  found=`grep -w $p package_list.txt 2> /dev/null`
  if [ -z "$found" ] ; then
    dir=`find . -name $p`
    explanation=0
    if [ -z "$dir" ] ; then
      dir=`find . -name ${p/utils-/}`
    fi
    if [ -d "$dir" ] ; then
      fpmake=`find $dir -name "*fpmake*pp*"`
      if [ -n "$fpmake" ] ; then
        echo "Package $p not in package list, but $fpmake file exists"
        explanation=1
      fi
    fi
    if [ $explanation -eq 0 ] ; then
      echo "Package $p is in Makefile.fpc but not in package list"
    fi
  fi
done

if [ -n "$duplicate_dir" ] ; then
  echo "duplicate directories: \"$duplicate_dir\""
fi
if [ -n "$duplicate_package" ] ; then
  echo "duplicate packages: \"$duplicate_package\""
fi
if [ -n "$duplicate_short" ] ; then
  echo "duplicate package short names: \"$duplicate_short\""
fi
if [ -n "$duplicate_short_in_makefile" ] ; then
  echo "duplicate short names in Makefile.fpc: \"$duplicate_short_in_makefile\""
fi


