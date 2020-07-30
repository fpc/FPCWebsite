#!/usr/bin/env bash

# Limit resources (64mb data, 8mb stack, 40 minutes)

. $HOME/bin/fpc-versions.sh

ulimit -d 65536 -s 8192 -t 2400

if [ "`uname -s`" == "FreeBSD" ] ; then
  export MAKE=gmake
else
  export MAKE=make
fi
if [ "${HOSTNAME}" == "vadmin" ]; then
  HOST_PC=PC_AFM
  USER=vadmin
else
  HOST_PC=${HOSTNAME%%\.*}
fi

if [ "$FIXES" != "1" ] ; then
  export CURVER=$TRUNKVERSION
  export CURDIRNAME=$TRUNKDIRNAME
  export CURDIR=$TRUNKDIR
  export FTP_CURDIRNAME=trunk
else
  export CURVER=$FIXESVERSION
  export CURDIRNAME=$FIXESDIRNAME
  export CURDIR=$FIXESDIR
  export FTP_CURDIRNAME=fixes
fi
  
export OVERRIDEVERSIONCHECK=1
export FPCRELEASEVERSION=$RELEASEVERSION
if [ -z "$CPU" ] ; then
  CPU=x86_64
fi

if [ "$CPU" == "x86_64" ] ; then
  export FPCBIN=ppcx64
  export INSTALL_SUFFIX=
  export BINUTILSPREFIX=
  export EXTRA=
  export ALL_OPT="-n -Fl/usr/local/lib"
  export SUFFIX=-64
elif [ "$CPU" == "i386" ] ; then
  export FPCBIN=ppc386
  export INSTALL_SUFFIX=-32
  export BINUTILSPREFIX=i386-freebsd-
  export ALL_OPT="-n -Xd"
  export SUFFIX=-32
  if [ -d /lib32 ] ; then
    export ALL_OPT="$ALL_OPT -Fl/lib32"
  fi
  if [ -d /usr/local/lib32 ] ; then
    export ALL_OPT="$ALL_OPT -Fl/usr/local/lib32"
  fi
  if [ -d  /usr/lib32 ] ; then
    export ALL_OPT="$ALL_OPT -Fl/usr/lib32"
  fi
  if [ -d "$HOME/lib32" ] ; then
    export ALL_OPT="$ALL_OPT -Fl$HOME/lib32"
  fi
  export EXTRA=FPCMAKEOPT="$ALL_OPT"
else
  export FPCBIN=unknown
fi

FPCRELEASEBINDIR=/home/${USER}/pas/fpc-${FPCRELEASEVERSION}/bin

export PATH=/home/${USER}/pas/fpc-${CURVER}${INSTALL_SUFFIX}/bin:/home/${USER}/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/${USER}/pas/fpc-${FPCRELEASEVERSION}/bin


SVN=`which svn 2> /dev/null`
RSYNC=`which rsync 2> /dev/null`

if [ -n "$RSYNC" ] ; then
  USE_RSYNC=1
  RSYNC_SERVER=gcc121
  RSYNC_SERVER_BASE_DIR=pas/rsync
fi

function update_rsync_dir ()
{
  local_dir=$1
  local_dirname=`basename $local_dir`
  check_dir_exists=`ssh $RSYNC_SERVER "ls -ld $RSYNC_SERVER_BASE_DIR/$local_dirname" 2> /dev/null`
  echo "update_rsync_dir called, check_dir_exists=\"$check_dir_exists\""
  if [ -n "$check_dir_exists" ] ; then
    $RSYNC -avus $local_dir $RSYNC_SERVER:pas/rsync
    ssh $RSYNC_SERVER "cd $RSYNC_SERVER_BASE_DIR/$local_dirname ; svn cleanup ; svn up  --non-interactive --accept theirs-conflict"
    $RSYNC -avus --exclude=.svn $RSYNC_SERVER:$RSYNC_SERVER_BASE_DIR/$local_dirname .
  else
    echo "dir not found on server"
  fi
}   

if [ "x$LANG" == "x" ] ; then
  LANG=en_US.UTF-8
fi
export LANG

export OVERRIDEVERSIONCHECK=1
if [ -z "$CURVER" ] ; then
  export CURVER=3.3.1
fi
if [ -z "$FPCRELEASEVERSION" ] ; then
  export FPCRELEASEVERSION=3.2.0
fi
if [ -z "$FPCBIN" ] ; then
  export FPCBIN=ppcx64
fi

FPCRELEASEBINDIR=/home/${USER}/pas/fpc-${FPCRELEASEVERSION}/bin

export PATH=/home/${USER}/pas/fpc-${CURVER}/bin:/home/${USER}/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/${USER}/pas/fpc-${FPCRELEASEVERSION}/bin

cd ~/pas/$CURDIRNAME

export report=`pwd`/report$SUFFIX.txt 
export report2=`pwd`/report2$SUFFIX.txt 
export makelog=`pwd`/make$SUFFIX.txt 
export testslog=`pwd`/tests$SUFFIX.txt 

echo "Starting $0 in $CURDIR" > $report

Start_version=`${FPCBIN} -iV`
Start_date=`${FPCBIN} -iD`
echo "Start ${FPCBIN} version is ${Start_version} ${Start_date}" >> $report
SVN=`which svn 2> /dev/null`

if [ -f "$SVN" ] ; then
  "$SVN" cleanup 1>> $report 2>&1
  "$SVN" up --accept theirs-conflict --force 1>> $report 2>&1
fi

if [ -d fpcsrc ]; then
  has_fpcsrc=1
  cd fpcsrc
else
  has_fpcsrc=0
fi

if [ "$CPU" == "i386" ] ; then
  TEST_OPT="-Xd"
  ALL_OPT="-Xd"
  if [ -d "/lib32" ] ; then
    export TEST_OPT="$TEST_OPT -Fl/lib32"
    export ALL_OPT="$ALL_OPT -Fl/lib32"
  fi
  if [ -d "/usr/lib32" ] ; then
    export TEST_OPT="$TEST_OPT -Fl/usr/lib32"
    export ALL_OPT="$ALL_OPT -Fl/usr/lib32"
  fi
  if [ -d "/usr/local/lib32" ] ; then
    export TEST_OPT="$TEST_OPT -Fl/usr/local/lib32"
    export ALL_OPT="$ALL_OPT -Fl/usr/local/lib32"
  fi
  if [ -d "$HOME/lib32" ] ; then
    export TEST_OPT="$TEST_OPT -Fl$HOME/lib32 -k-rpath=$HOME/lib32"
    export ALL_OPT="$ALL_OPT -Fl$HOME/lib32 -k-rpath=$HOME/lib32"
  fi
  if [ -d "$HOME/gnu/32/lib" ] ; then
    export TEST_OPT="$TEST_OPT -Fl$HOME/gnu/32/lib -k-rpath=$HOME/gnu/32/lib"
    export ALL_OPT="$ALL_OPT -Fl$HOME/gnu/32/lib -k-rpath=$HOME/gnu/32/lib"
  fi
else
  # make all now requires libiconv, which is in /usr/local/lib
  ALL_OPT="-n -Fl/usr/local/lib"
  TEST_OPT="-Fl/usr/local/lib"
  if [ -d "$HOME/gnu/64/lib" ] ; then
    export TEST_OPT="$TEST_OPT -Fl$HOME/gnu/64/lib -k-rpath=$HOME/gnu/64/lib"
    export ALL_OPT="$ALL_OPT -Fl$HOME/gnu/64/lib -k-rpath=$HOME/gnu/64/lib"
  fi
fi

echo "Starting make distclean all" >> $report
${MAKE} distclean all FPC=${FPCBIN} OPT="$ALL_OPT" DEBUG=1 1> ${makelog} 2>&1
makeres=$?

echo "Ending make distclean all; result=${makeres}" >> $report
tail -30 ${makelog} >> $report
if [ "${makeres}" != "0" ] ; then
  echo "Starting make distclean all using release version" >> $report
  ${MAKE} distclean all FPC=${FPCRELEASEBINDIR}/${FPCBIN} OPT="$ALL_OPT" DEBUG=1 1>> ${makelog} 2>&1
  makeres=$?
  echo "Ending make distclean all; result=${makeres}" >> $report
  tail -30 ${makelog} >> $report
fi

Build_version=`./compiler/${FPCBIN} -iV`
Build_date=`./compiler/${FPCBIN} -iD`

echo "New ${FPCBIN} version is ${Build_version} ${Build_date}" >> $report

if [ "${makeres}" == "0" ] ; then
  echo "Starting make install" >> $report
  ${MAKE} DEBUG=1 install INSTALL_PREFIX=~/pas/fpc-${Build_version} FPC=${FPCBIN} OPT="$ALL_OPT" 1>> ${makelog} 2>&1
makeres=$?
else
  cd compiler
  ${MAKE} DEBUG=1 install INSTALL_PREFIX=~/pas/fpc-${Build_version} FPC=${FPCBIN} OPT="$ALL_OPT" 1>> ${makelog} 2>&1
  cd ../rtl
  ${MAKE} DEBUG=1 install INSTALL_PREFIX=~/pas/fpc-${Build_version} FPC=${FPCBIN} OPT="$ALL_OPT" 1>> ${makelog} 2>&1
  cd ../utils
  ${MAKE} DEBUG=1 install INSTALL_PREFIX=~/pas/fpc-${Build_version} FPC=${FPCBIN} OPT="$ALL_OPT" 1>> ${makelog} 2>&1
  cd ../packages
  ${MAKE} DEBUG=1 install INSTALL_PREFIX=~/pas/fpc-${Build_version} FPC=${FPCBIN} OPT="$ALL_OPT" 1>> ${makelog} 2>&1
  cd ..

fi

if [ $has_fpcsrc -eq 1 ]; then
  cd ..
fi


FPC_OS=`${FPCBIN} -iTO`
FPC_CPU=`${FPCBIN} -iTP`
FPC_DATE=`${FPCBIN} -iD`
FPC_VERSION=`${FPCBIN} -iV`
FPC_TARGET=$FPC_CPU-$FPC_OS
readme=$FPC_TARGET-readme

echo "Snapshot generated `date +%Y-%m-%d` " > $readme
echo "Compiler ${FPCBIN}, version ${FPC_VERSION}" >> $readme
echo "dated ${FPC_DATE}" >> $readme
echo "On `uname -r` system, using commandline:" >> $readme
echo "${MAKE} singlezipinstall SNAPSHOT=1 NOGDB=1 OPT=\"$ALL_OPT\" FPC=${FPCBIN}"  >> ${readme}

${MAKE} singlezipinstall SNAPSHOT=1 NOGDB=1 OPT="$ALL_OPT" FPC=${FPCBIN} 1>> ${makelog} 2>&1
if [ $? -eq 0 ]; then
  echo "make singlezipinstall success" >> $report
  targzfiles=`ls -1 *${FPC_TARGET}*tar.gz`
  if [ -n "$targzfiles" ] ; then
    scp -i ~/.ssh/freepascal $targzfiles fpc@ftpmaster.freepascal.org:ftp/snapshot/$FTP_CURDIRNAME/$FPC_TARGET/ 1>> $report 2>&1
    scp -i ~/.ssh/freepascal ${readme} fpc@ftpmaster.freepascal.org:ftp/snapshot/$FTP_CURDIRNAME/$FPC_TARGET/ 1>> $report 2>&1
  else
    echo "No tar.gz file generated" >> $report
  fi
else
  echo "make singlezipinstall failed" >> $report
fi

if [ $has_fpcsrc -eq 1 ]; then
  cd fpcsrc
fi


mutt -x -s "Free Pascal snapshot on ${HOST_PC}, ${Build_version} ${Build_date}" \
     -i $report -- pierre@freepascal.org < /dev/null >  ${report}.log


# Cleanup

if [ "${testsres}" == "0" ]; then
  cd ~/pas/$CURDIRNAME
  ${MAKE} distclean 1> ${makelog}-cleanup 2>&1
fi


