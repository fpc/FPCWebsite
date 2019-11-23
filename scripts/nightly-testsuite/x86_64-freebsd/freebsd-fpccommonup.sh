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


if [ "x$LANG" == "x" ] ; then
  LANG=en_US.UTF-8
fi
export LANG

if [ "$FIXES" == "1" ] ; then
  export CURVER=$TRUNKVERSION
  export CURDIRNAME=$TRUNKDIRNAME
  export CURDIR=$TRUNKDIR
else
  export CURVER=$FIXESVERSION
  export CURDIRNAME=$FIXESDIRNAME
  export CURDIR=$FIXESDIR
fi
  
export OVERRIDEVERSIONCHECK=1
export FPCRELEASEVERSION=$RELEASEVERSION
if [ "$CPU" == "x86_64" ] ; then
  export FPCBIN=ppcx64
  export INSTALL_SUFFIX=
  export BINUTILSPREFIX=
  export EXTRA=
  export ALL_OPT="-n -Fl/usr/local/lib"
elif [ "$CPU" == "i386" ] ; then
  export FPCBIN=ppc386
  export INSTALL_SUFFIX=-32
  export BINUTILSPREFIX=i386-freebsd-
  export ALL_OPT="-n -Xd"
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

cd $HOME/pas
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

if [ -z "$SVN" ] ; then
  if [ $USE_RSYNC -eq 1 ] ; then
    $MAKE -C $CURDIRNAME distclean FPC=ppc386
    $MAKE -C $CURDIRNAME distclean FPC=ppcx64
    update_rsync_dir `pwd`/$CURDIRNAME
  else
    if [ -f fpcbuild.zip ]; then
      rm -f fpcbuild.zip
    fi
    wget ftp://ftp.freepascal.org/pub/fpc/snapshot/$CURDIRNAME/source/fpcbuild.zip
    res=$?
    if [ $res -eq 0 ] ; then
      if [ -d "fpcbuild" ] ; then
        rm -Rf fpcbuild
      fi
      unzip fpcbuild.zip
      res=$?
      if [ $res -eq 0 ] ; then
        if [ -d "$CURDIRNAME" ] ; then
  	rm -Rf $CURDIRNAME
        fi
        mv -f fpcbuild $CURDIRNAME
      fi
    else
      echo "Error in wget fpcbuild.zip $CURDIRNAME, res=$res"
    fi
    if [ -f fpcbuild.zip ]; then
      mv -f fpcbuild.zip fpcbuild-$CURDIRNAME.zip
    fi
  fi
fi

cd $CURDIR

export report=`pwd`/report${INSTALL_SUFFIX}.txt 
export report2=`pwd`/report2${INSTALL_SUFFIX}.txt 
export makelog=`pwd`/make${INSTALL_SUFFIX}.txt 
export testslog=`pwd`/tests${INSTALL_SUFFIX}.txt 

echo "Starting $0" > $report

Start_version=`${FPCBIN} -iV`
Start_date=`${FPCBIN} -iD`
echo "Start ${FPCBIN} version is ${Start_version} ${Start_date}" >> $report

if [ -n "$SVN" ] ; then
  $SVN cleanup 1>> $report 2>&1
  $SVN up --accept theirs-conflict --force 1>> $report 2>&1
fi

if [ -d fpcsrc ]; then
  cd fpcsrc
  has_fpcsrc=1
else
  has_fpcsrc=0
fi

echo "Starting make distclean all" >> $report

${MAKE} distclean all FPC=${FPCBIN} OPT="${ALL_OPT}" DEBUG=1 1> ${makelog} 2>&1
makeres=$?

echo "Ending make distclean all; result=${makeres}" >> $report
tail -30 ${makelog} >> $report
if [ "${makeres}" != "0" ] ; then
  echo "Starting make distclean all using release version" >> $report
  ${MAKE} distclean all FPC=${FPCRELEASEBINDIR}/${FPCBIN} OPT="${ALL_OPT}" DEBUG=1 1>> ${makelog} 2>&1
  makeres=$?
  echo "Ending make distclean all; result=${makeres}" >> $report
  tail -30 ${makelog} >> $report
fi

Build_version=`./compiler/${FPCBIN} -iV`
Build_date=`./compiler/${FPCBIN} -iD`

echo "New ${FPCBIN} version is ${Build_version} ${Build_date}" >> $report
if [ "$Build_version" == "" ] ; then
  echo "No new compiler, aborting" 
  echo "No new compiler, aborting"  >> $report
  mutt -x -s "Free Pascal compilation failed on ${HOST_PC}"  \
     -i $report -- pierre@freepascal.org < /dev/null >  ${report}.log
  exit
fi

if [ "${makeres}" == "0" ] ; then
  echo "Starting make install" >> $report
  ${MAKE} DEBUG=1 install INSTALL_PREFIX=~/pas/fpc-${Build_version}${INSTALL_SUFFIX} FPC=${FPCBIN} \
    OPT="${ALL_OPT}" 1>> ${makelog} 2>&1
  makeres=$?
else
  cd compiler
  ${MAKE} DEBUG=1 OPT="${ALL_OPT}" install INSTALL_PREFIX=~/pas/fpc-${Build_version}${INSTALL_SUFFIX} FPC=${FPCBIN}  1>> ${makelog} 2>&1
  cd ../rtl
  ${MAKE} DEBUG=1 OPT="${ALL_OPT}" install INSTALL_PREFIX=~/pas/fpc-${Build_version}${INSTALL_SUFFIX} FPC=${FPCBIN}  1>> ${makelog} 2>&1
  cd ../utils
  ${MAKE} DEBUG=1 OPT="${ALL_OPT}" install INSTALL_PREFIX=~/pas/fpc-${Build_version}${INSTALL_SUFFIX} FPC=${FPCBIN}  1>> ${makelog} 2>&1
  cd ../packages
  ${MAKE} DEBUG=1 OPT="${ALL_OPT}" install INSTALL_PREFIX=~/pas/fpc-${Build_version}${INSTALL_SUFFIX} FPC=${FPCBIN}  1>> ${makelog} 2>&1
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
  scp -i ~/.ssh/freepascal *${FPC_TARGET}*tar.gz fpc@ftpmaster.freepascal.org:ftp/snapshot/$CURDIRNAME/$FPC_TARGET/ 1>> $report 2>&1
  scp -i ~/.ssh/freepascal ${readme} fpc@ftpmaster.freepascal.org:ftp/snapshot/$CURDIRNAME/$FPC_TARGET/ 1>> $report 2>&1
else
  echo "make singlezipinstall failed" >> $report
fi

if [ $has_fpcsrc -eq 1 ]; then
  cd fpcsrc
fi

cd tests
# Limit resources (64mb data, 8mb stack, 4 minutes)

ulimit -d 65536 -s 8192 -t 240
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
    export TEST_OPT="$TEST_OPT -Fl/usr/local/lib32 -k-rpath=/usr/local/lib32"
    export ALL_OPT="$ALL_OPT -Fl/usr/local/lib32 -k-rpath=/usr/local/lib32"
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
  TEST_OPT="-Fl/usr/local/lib"
  ALL_OPT="-Fl/usr/local/lib"
  if [ -d "$HOME/gnu/64/lib" ] ; then
    export TEST_OPT="$TEST_OPT -Fl$HOME/gnu/64/lib -k-rpath=$HOME/gnu/64/lib"
    export ALL_OPT="$ALL_OPT -Fl$HOME/gnu/64/lib -k-rpath=$HOME/gnu/64/lib"
  fi
fi

export TEST_DELTEMP=1
export TEST_DELBEFORE=1

echo "Starting make distclean fulldb" >> $report
${MAKE} distclean fulldb TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} TEST_FPC=`which ${FPCBIN}` \
  FPC=`which ${FPCBIN}` TEST_OPT="${TEST_OPT}" OPT="${ALL_OPT}" \
  DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1> $testslog 2>&1
testsres=$?
echo "Ending make distclean fulldb; result=${testsres}" >> $report

tail -30 $testslog >> $report

mutt -x -s "Free Pascal results on ${HOST_PC}, with option ${TEST_OPT}, ${Build_version} ${Build_date}" \
     -i $report -- pierre@freepascal.org < /dev/null >  ${report}.log


TEST_OPT="${ALL_OPT} -Cg"
echo "Starting make clean fulldb with TEST_OPT=${TEST_OPT}" > ${report2}
${MAKE} distclean fulldb TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} TEST_OPT="${TEST_OPT}" \
  OPT="${ALL_OPT}" TEST_FPC=`which ${FPCBIN}` FPC=`which ${FPCBIN}` \
  DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1> $testslog 2>&1
testsres=$?
echo "Ending make distclean fulldb with TEST_OPT=${TEST_OPT}; result=${testsres}" >> $report

tail -30 $testslog >> $report2

mutt -x -s "Free Pascal results on ${HOST_PC}, with option ${TEST_OPT}, ${Build_version} ${Build_date}" \
     -i $report2 -- pierre@freepascal.org < /dev/null >>  ${report}.log


# Cleanup

if [ "${testsres}" == "0" ]; then
  cd $CURDIR
  ${MAKE} distclean 1>> ${makelog} 2>&1
fi

if [ -z "$SVN" ] ; then
  if [ $USE_RSYNC -eq 1 ] ; then
    cd $HOME
    update_rsync_dir `pwd`/scripts
  fi
fi

