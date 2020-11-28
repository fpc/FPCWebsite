#!/bin/bash

function usage {
  echo "-B DIR        Set base directory for building docs"
  echo "-D DIR        Set directory for daily docs"
  echo "-d file       Specify dailydoc executable location"
  echo "-f file       Specify fpdoc executable location"
  echo "-h or --help  this help text";
  echo "-i            Show info info"
  echo "-l file       Specify delp executable location"
  echo "-n            Only echo commands"
  echo "-nu           Do not update sources from SVN"
  echo "-p file       Set compiler executable location"
  echo "-s file       Specify svn executable location"
  echo "-S URL        Specify SVN repository base URL"
  echo "-sd           Skip generating documentation"
  echo "-sp           Skip generating package documentation"
  echo "-v            be verbose"  
  

}

BASEDIR=$(pwd)
BUILDDIR=${BASEDIR}/build
DAILYDIR=${BASEDIR}/daily
INFO=NO
DOECHO=
FPC=$(which fpc)
FPDOC=$(which fpdoc)
DAILYDOC=$(which dailydocs)
SVN=$(which svn)
DELP=$(which delp)
NOUPDATE=NO
SKIPDOCS=
SKIPPACKAGES=
SVNBASE=svn+ssh://svn.freepascal.org/FPC/svn/

function showinfo {
  SD=no
  SP=no;
  if [ ! -z "$SKIPDOCS" ]; then
    SD=yes
  fi
  if [ ! -z "$SKIPPACKAGES" ]; then
    SP=yes
  fi
  echo "Base directory  : $BASEDIR"
  echo "Build directory : $BUILDDIR"
  echo "Daily directory : $DAILYDIR"
  echo "Be verbose      : $INFO"
  echo "Compiler        : $FPC"
  echo "fpdoc           : $FPDOC"
  echo "dailydocs       : $DAILYDOC"
  echo "Skip packages   : $SP"
  echo "Skip docs       : $SD"
  echo "SVN docs        : $SVNDOCS";
  echo "SVN sources     : $SVNSRC";
    
}


function doinfo () {
  if [ "$INFO" = "YES" ]; then
    echo "$*"
  fi
}

function checkcmd () {
  if [ "$1" != 0 ]; then
    echo "$2 failed with exit status $1. Quitting"
    return 1
  fi
    doinfo "$2: Command completed OK."
    return 0
}


while test $# != 0 
do  
  f=$1
  case $f in
  -h) usage
      exit;;
  --help) 
      usage
      exit ;;    
  -D) shift
      DAILYDIR="$1";;
  -B) shift
      BUILDDIR="$1";;
  -L) shift
      LOGFILE=$1;; 
  -S) shift
      SVNBASE=$1;;      
  -v) INFO=YES;;   
  -n) DOECHO=echo;;
  -i) DOSHOWINFO=YES;;
  -nu) NOUPDATE=YES;;
  -f) shift
      FPDOC="$1";; 
  -l) shift
      DELP="$1";;
  -d) shift
      DAILYDOC="$1";;
  -p) shift
      FPC="$1";;     
  -s) shift
      SVN="$1";;
  -sd)  SKIPDOCS=YES;;
  -sp)  SKIPPACKAGES=YES;;
  *) echo "Unknown option: $f"
     exit 1;;
  esac      
  shift
done

# correct some things
SVN="$DOECHO $SVN --quiet"
SVNDOCS=${SVNBASE}fpcdocs/trunk/
SVNSRC=${SVNBASE}fpc/trunk/
ADIR=$(dirname "$DAILYDOC")
if [ "$ADIR" = "." ]; then
  echo correcting
  DAILYDOC=$PWD/$(basename $DAILYDOC);
fi  

if [ "$DOSHOWINFO" = "YES" ]; then
  showinfo
  exit 0
fi  
#
# Check out/update
#

if [ ! -d "$BUILDDIR" ]; then
  doinfo "Creating directory $BUILDDIR" 
  $DOECHO mkdir -p "$BUILDDIR" 
  checkcmd $? "Create build dir" || exit 1
fi

if [ ! -d "$DAILYDIR" ]; then
  doinfo "Creating dest directory $DAILYDIR" 
  $DOECHO mkdir -p "$DAILYDIR" 
  checkcmd $? "Create daily docs dir" || exit 1
fi

doinfo "Switching to build directory $BUILDDIR" 
$DOECHO cd $BUILDDIR
checkcmd $? "Switching to build dir" || exit 1

if [ -z "$SKIPDOCS" ]; then
  if [ ! -d "$BUILDDIR/fpcdocs" ]; then
    doinfo "Checking out documentation"
    $SVN --quiet co $SVNDOCS fpcdocs
    checkcmd $? "Checkout documentation" || exit 1
  else  
    if [ "$NOUPDATE" = "YES" ]; then
      doinfo "Skipping update of documentation"
    else  
      doinfo "Cleaning documentation"
      $DOECHO make -C fpcdocs distclean
      checkcmd $? "Clean documentation" || exit 1
      doinfo "Reverting documentation changes"
      $SVN revert -R fpcdocs
      checkcmd $? "Clean documentation" || exit 1
      $SVN  update --accept=theirs-full fpcdocs
      checkcmd $? "Update documentation" || exit 1
    fi  
  fi   
fi

if [ -z "$SKIPPACKAGES" ]; then
  if [ ! -d "$BUILDDIR/fpcsrc" ]; then
    doinfo "Checking out sources"
    $SVN co $SVNSRC fpcsrc
    checkcmd $? "Check out source" || exit 1
  else
    if [ "$NOUPDATE" = "YES" ]; then
      doinfo "Skipping update of sources"
    else  
      doinfo "Updating sources - removing old binary data"
      $DELP -r fpcsrc
      checkcmd $? "Removing old data" || exit 1

      doinfo "Updating sources - removing old binary data"
      $SVN revert -R fpcsrc
      checkcmd $? "Clean documentation" || exit 1
      
      doinfo "Getting changed files"
      $SVN update --accept=theirs-full fpcsrc
      checkcmd $? "Update source" || exit 1
    fi  
  fi   
fi
#
# Generate docs/package docs in build location
#
if [ -z "$SKIPDOCS" ]; then
  doinfo "Generating documentation $BUILDDIR" 
  $DOECHO make -C fpcdocs htmltar 
  checkcmd $? "Switching to build dir" || exit 1
fi

if [ -z "$SKIPPACKAGES" ]; then
  #
  # Generate fpdoc project file
  #
  doinfo "Going to packages dir $BUILDDIR" 
  $DOECHO cd fpcsrc/packages
  checkcmd $? "Switching to build dir" || exit 1

  doinfo "Building fpmake"
  $DOECHO $FPC -dNO_THREADING fpmake.pp -Fufpmkunit/src
  checkcmd $? "Building fpmake" || exit 1

  doinfo "Generating documentation file"
  $DOECHO ./fpmake fpdocproject -sd -df .
  checkcmd $? "Generating fpdocproject" || exit 1


  #
  # Build
  #
  PACKAGESDIR="$DAILYDIR/packages"
  NEWPACKAGESDIR="$DAILYDIR/packages-new"

  if [ -d "$NEWPACKAGESDIR" ]; then
    doinfo "Clearing new documentation dir "
    $DOECHO rm -rf $NEWPACKAGESDIR/*
  fi

  doinfo "Generating documentation in $NEWPACKAGESDIR"
  $DOECHO $DAILYDOC -f "$FPDOC" -i fpmake-docs.xml -o "$NEWPACKAGESDIR" -t
  checkcmd $? "Generating fpdocproject" || exit 1
fi

#
# Move everything into place
#
doinfo "Going to destination directory $DAILYDIR"
$DOECHO cd $DAILYDIR
checkcmd $? "Going to destination directory $DAILYDIR" || exit 1


if [ -z "$SKIPDOCS" ]; then
  #
  # Unpack documentation
  # 
  if [ -d doc_prev ]; then
    echo "Removing previous documentation directory"  
    $DOECHO rm -rf doc_prev
    checkcmd $? "Removing previous documentation directory" || exit 1
  fi

  if [ -d doc ]; then
    doinfo "Back up docs"  
    $DOECHO mv doc doc_prev
    checkcmd $? "Back up docs" || exit 1
  fi

  HTMLDOCS="$BUILDDIR/fpcdocs/doc-html.tar.gz"

  if [ -f "$HTMLDOCS" ]; then
    doinfo "Unpacking docs $HTMLDOCS"  
    $DOECHO tar xf $HTMLDOCS
    checkcmd $? "Unpacking html docs" || exit 1
  fi
fi

if [ -z "$SKIPPACKAGES" ]; then
  #
  # Move documentation to new location
  #
  if [ -d packages ]; then
    if [ -d packages-prev ]; then
      doinfo "Removing old packages documentation"
      $DOECHO rm -rf packages-prev 
      checkcmd $? "Removing old packages documentation" || exit 1
    fi
    doinfo "Back up current packages documentation"
    $DOECHO mv packages packages-prev
    checkcmd $? "Back up current packages documentation" || exit 1
  fi
  #
  # Copy CSS file
  #
  $DOECHO CSSFILE=$(find packages-new -name 'fpdoc.css' | head -1) 
  if [ -z "$CSSFILE" ]; then
    echo "Could not find fpdoc.css, styling will be incomplete"
  else
    doinfo "Copying $CSSFILE to toplevel dir"
    $DOECHO cp "$CSSFILE" packages-new
    checkcmd $? "Copying CSS file to packages" || exit 1
  fi  
  
  doinfo "Moving new documentation into place"
  $DOECHO mv packages-new packages
  ES=$?
  if [ "$ES" != 0 ]; then
     echo "Failed to move new documentation into place, attempting restore"
     $DOECHO rm -fr packages
     $DOECHO mv packages-prev packages  
  fi  
fi

doinfo "That's all, Folks!"
