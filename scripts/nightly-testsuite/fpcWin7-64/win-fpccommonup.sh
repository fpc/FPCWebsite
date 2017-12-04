#!/bin/bash

if [ "X${MAKE}" == "X" ] ; then
  export MAKE=make
fi
export CYGDATE=`which date`
export CYGMKDIR=`which mkdir`
export CYGCP=`which cp`
export CYGMOVE=`which mv`
export CYGRM=`which rm`
export CYGFIND=`which find`
export CYGXARGS=`which xargs`
export CYGLS=`which ls`
export SVN=`which svn`
export CYGTAIL=`which tail`

if [ "$HOSTNAME" == "" ] ; then
  HOSTNAME=`uname -n`
fi


if [ -d $HOME/bin ] ; then
  if [ "${PATH/$HOME/}" == "${PATH}" ] ; then
   echo "Adding home bin dir"
   export PATH=$HOME/bin:$PATH
  fi
fi

if [ "$HOSTNAME" == "WIN-G8VVDPH2N8D" ]; then
  export HOSTNAME=fpcwin2008
   export PATH=$PATH:/bin
fi

if [ "${STARTVERSION}" == "" ]; then
  STARTVERSION=3.0.0
fi
if [ "${SVNDIR}" == "" ]; then
  SVNDIR=$HOME/pas/trunk
fi

if [ "X$SVNDIRNAME" == "X" ] ; then
  SVNDIRNAME=${SVNDIR##*/}
fi

# Default is 386 binary
if [ "$FPCBIN" == "" ] ; then
  FPCBIN=ppc386
fi


if [ "$FPCBIN" == "ppc386" ] ; then
  FPCFULLTARGET=i386-win32
elif [ "$FPCBIN" == "ppcx64" ] ; then
  FPCFULLTARGET=x86_64-win64
else
  echo "Unknown binary $FPCBIN"
  exit
fi

if [ "${HOSTNAME}" == "E6510-Muller" ]; then
  export HOSTNAME=fpcWin7-64
  export MINGW_CYGWINDIR=e:/cygwin-32
  export CYGWIN_FPCDIR=/cygdrive/e/pas
  export MINGW_FPCDIR=e:/pas
  export FPCPATH=${CYGWIN_FPCDIR}/fpc-${STARTVERSION}/bin/${FPCFULLTARGET}
elif [ "${HOSTNAME}" == "d620-muller" ]; then
  export MINGW_CYGWINDIR=e:/cygwin
  export CYGWIN_FPCDIR=/cygdrive/e/pas
  export MINGW_FPCDIR=e:/pas
  export FPCPATH=${CYGWIN_FPCDIR}/fpc-${STARTVERSION}/bin/${FPCFULLTARGET}
elif [ "${HOSTNAME}" == "fpcwinvista64" ]; then
  export MINGW_CYGWINDIR=c:/cygwin$HOME
  export CYGWIN_FPCDIR=$HOME/pas
  export MINGW_FPCDIR=c:/cygwin$HOME/pas
  export FPCPATH=${CYGWIN_FPCDIR}/fpc-${STARTVERSION}/bin/${FPCFULLTARGET}
  if [ -d "${HOME}/pas/fpc-${STARTVERSION}" ] ; then
    PATH=${HOME}/pas/fpc-${STARTVERSION}/bin/i386-win32:${HOME}/bin:${PATH}
  fi
elif [ "${HOSTNAME}" == "HP" ]; then
  export MINGW_CYGWINDIR=c:/Pierre/cygwin-1.7
  export CYGWIN_FPCDIR=/cygdrive/c/Pierre/pas
  export MINGW_FPCDIR=c:/Pierre/pas
  export FPCPATH=${CYGWIN_FPCDIR}/fpc-${STARTVERSION}/bin/${FPCFULLTARGET}
else
  export MINGW_CYGWINDIR=c:/cygwin
  export CYGWIN_FPCDIR=/cygdrive/c/pas
  export MINGW_FPCDIR=c:/pas
  if [ "X${MAKE}" == "Xmake" ] ; then
    export MAKE="c:\\pas\fpc-${STARTVERSION}\\bin\\i386-win32\\make.exe"
  fi
  export FPCPATH=${CYGWIN_FPCDIR}/fpc-${STARTVERSION}/bin/${FPCFULLTARGET}:${CYGWIN_FPCDIR}/fpc-${STARTVERSION}/bin/i386-win32
fi

if [ "${HOSTNAME}" == "fpcWin764" ] ; then
  export MINGW_FPCDIR=c:/Users/Pierre/Documents/pas
  export CYGWIN_FPCDIR=/cygdrive/c/Users/pierre/Documents/pas
  export FPCPATH=${CYGWIN_FPCDIR}/fpc-${STARTVERSION}/bin/${FPCFULLTARGET}:${CYGWIN_FPCDIR}/fpc-${STARTVERSION}/bin/i386-win32:${CYGWIN_FPCDIR}/svnbin
  if [ "X${MAKE}" == "Xmake" ] ; then
    export MAKE="c:\\Users\\pierre\\Documents\\pas\\fpc-${STARTVERSION}\\bin\\i386-win32\\make.exe"
  fi
  export MAKE_EXTRA="RMPROG=${MINGW_CYGWINDIR}/bin/rm CPPROG=${MINGW_CYGWINDIR}/bin/cp"
  export SVN=/usr/bin/svn
fi 

if [ "${HOSTNAME}" == "fpcWin10-64" ] ; then
  export MINGW_CYGWINDIR=c:/cygwin64
  export MINGW_FPCDIR=c:/pas
  export CYGWIN_FPCDIR=/cygdrive/c/pas
  export FPCPATH=${CYGWIN_FPCDIR}/fpc-${STARTVERSION}/bin/${FPCFULLTARGET}:${CYGWIN_FPCDIR}/fpc-${STARTVERSION}/bin/i386-win32:${CYGWIN_FPCDIR}/svnbin
  if [ "X${MAKE}" == "Xmake" ] ; then
    export MAKE="c:\\pas\\fpc-${STARTVERSION}\\bin\\i386-win32\\make.exe"
  fi
  export MAKE_EXTRA="RMPROG=${MINGW_CYGWINDIR}/bin/rm CPPROG=${MINGW_CYGWINDIR}/bin/cp"
  export SVN=/usr/bin/svn
fi 

cd ${SVNDIR}

export report=`pwd`/report.txt
export svnlog=`pwd`/svn.txt
export makelog=`pwd`/make.txt
export testslog=`pwd`/tests.txt
export uploadlog=`pwd`/tests-upload.txt

rm -f $report

echo "Starting $0" > $report
echo "date is `$CYGDATE`" >> $report
echo "Time `$CYGDATE +%H:%M:%S`" >> $report
echo "FPCPATH is $FPCPATH" >> $report
echo "Starting in directory `pwd`" >> $report

if [ "$1" == "uploadonly" ]; then
  skipsvn=1
  skipmake=1
  skipinstall=1
  skiptests=1
fi


if [ "$1" == "testsonly" ]; then
  skipsvn=1
  skipmake=1
  skipinstall=1
fi

if [ "$1" == "skipsvn" ]; then
  skipsvn=1
fi

if ! [ "${skipsvn}" == "1" ]; then
  echo "Running ${SVN}"
  echo "Running ${SVN}" >> $report
  repeat=1
  tries=0
  while [ $repeat -eq 1 ] ; do
  ${SVN} cleanup --non-interactive > ${svnlog} 2>&1
  if [ -d fpcsrc ]; then
    cd fpcsrc
    ${SVN} cleanup --non-interactive > ${svnlog} 2>&1
    cd ..
  fi
  if [ -d fpcdocs ]; then
    cd fpcdocs
    ${SVN} cleanup --non-interactive > ${svnlog} 2>&1
    cd ..
  fi
  if [ -d logs ]; then
    cd logs
    ${SVN} cleanup --non-interactive > ${svnlog} 2>&1
    cd ..
  fi
  ${SVN} up --accept theirs-full --force >> ${svnlog} 2>&1
  svnres=$?
  tries=`expr $tries + 1 `
  if [ $svnres -eq 0 ] ; then
    repeat=0
  elif [ $tries -gt 15 ] ; then
    echo "svn up tried 15 times, giving up" >> $report
    repeat=0
  else
    # svn failed wait for 2 minutes
    sleep 120
  fi
  done
  if [ ${svnres} != 0 ]; then
    echo svn up failed  >> ${report}
    ${CYGTAIL} ${svnlog} >> ${report}
    attachment="-a ${svnlog}"
    skipmake=1
    skipinstall=1
    skiptests=1
    skipupload=1
  fi
fi

if [ -d fpcsrc ]; then
  echo Changing to fpcsrc dir >> $report
  cd fpcsrc
fi

FPC_SRC_DIR=`pwd`
function list_system_ppu ()
{
  $CYGFIND $FPC_SRC_DIR -iname "system.ppu" | $CYGXARGS $CYGLS -l >> $report
}

FPCSTART=`which ${FPCBIN}`

if [ "$FPCSTART" == "" ] ; then
  echo "${FPCBIN} not found, PATH=\"$PATH\""
  if ! [ "${skipsvn}" == "1" ]; then
    ${SVN} cleanup --non-interactive >> ${svnlog} 2>&1
  fi
  exit
fi

STARTPATH=${PATH}

PATH_NO_CYGWIN=

OIFS=$IFS
IFS=:
for p in ${STARTPATH} ; do
  # echo p is $p
  skip=0
  case "$p" in
    /usr/*) skip=1; # echo "$p should be skipped"
         ;;
    /bin) skip=1;
	 ;;
    *) if [ ! "$skip" == "1" ] ; then
         PATH_NO_CYGWIN=${PATH_NO_CYGWIN}:$p
       fi ;;
  esac
done
export PATH=${FPCPATH}:${PATH_NO_CYGWIN}
IFS=${OIFS}

echo "Time `$CYGDATE +%H:%M:%S`" >> $report
echo "Used PATH is \"${PATH}\"" >> $report


Start_version=`${FPCSTART} -iV`
Start_date=`${FPCSTART} -iD`
echo "Start ${FPCBIN} version is ${Start_version}" >> $report
echo "Start ${FPCBIN} date is ${Start_date}" >> $report
list_system_ppu

if ! [ "${skipmake}" == "1" ]; then
  echo "Running make distclean all"
  echo "Running make distclean all" >> $report
  echo "Time `$CYGDATE +%H:%M:%S`" >> $report
  # Avoid ppc386 linux executable
  rm -f ./compiler/${FPCBIN} 2> /dev/null
  cmd /c "${MAKE}"  distclean all DEBUG=1 FPC=${FPCBIN} ${MAKE_EXTRA} 1> ${makelog} 2>&1
  makeres=$?
  if [ ${makeres} != 0 ]; then
    echo Make failed ${makeres}
    ${CYGTAIL} -30 ${makelog} 
    ${CYGTAIL} -30 ${makelog}  >> ${report}
    attachment="-a ${makelog}"
    skipinstall=1
    skiptests=1
    skipupload=1
  fi
fi
list_system_ppu

# Pitfall here: we need to get rid of the CR
# that is at the end of the version string
FPC_VER_L=`./compiler/${FPCBIN} -iV`
FPC_VER=${FPC_VER_L:0:${#FPC_VER_L}-1}
echo Free pascal version is ${#FPC_VER_L} x${FPC_VER_L}x
echo Free pascal version is ${#FPC_VER} x${FPC_VER}x
Build_version=`./compiler/${FPCBIN} -iV`
Build_date=`./compiler/${FPCBIN} -iD`


echo "New ${FPCBIN} version is ${Build_version}" >> $report
echo "New ${FPCBIN} date is ${Build_date}" >> $report
echo "Time `$CYGDATE +%H:%M:%S`" >> $report

if ! [ "${skipintall}" == "1" ]; then
  echo "Running make install"
  echo "Running make install" >> $report
  echo "Time `$CYGDATE +%H:%M:%S`" >> $report
  echo "Time `$CYGDATE +%H:%M:%S`" >> $makelog
  cmd /c "${MAKE} install INSTALL_PREFIX=${MINGW_FPCDIR}/fpc-${FPC_VER}  ${MAKE_EXTRA} FPC=./compiler/${FPCBIN}"  1>> ${makelog} 2>&1
  makeres=$?
  if [ ${makeres} != 0 ]; then
    echo Make install failed ${makeres}
    ${CYGTAIL} -30 ${makelog} 
    ${CYGTAIL} -30 ${makelog}  >> ${report}
    attachment="-a ${makelog}"
    skiptests=1
    skipupload=1
  fi

fi
list_system_ppu
export FPC=${MINGW_FPCDIR}/fpc-${FPC_VER}/bin/${FPCFULLTARGET}/${FPCBIN}
export FPCFPMAKE=${MINGW_FPCDIR}/fpc-${FPC_VER}/bin/${FPCFULLTARGET}/${FPCBIN}

function run_make ()
{
if ! [ "X${skiptests}" == "X1" ]; then
  echo "Time `$CYGDATE +%H:%M:%S`" >> $report
  TIME=`$CYGDATE +%H-%M-%S`
  echo "Running make distclean fulldb TEST_OPT=${TEST_OPT}" > $testslog
  echo "Time `$CYGDATE +%H:%M:%S`" >> $testslog
  list_system_ppu
  echo "Calling kill-runaway-tests"
  echo "Calling kill-runaway-tests" >> $testslog
  $HOME/bin/kill-runaway-tests.sh >> $testslog
  echo "Deleting output directory with Cygwin rm"
  echo "Deleting output directory with Cygwin rm" >> $testslog
  $CYGRRM -Rf ./output/ 1>> $testslog 2>&1
  echo "Running make distclean fulldb TEST_OPT=${TEST_OPT}"
  echo "Running make distclean fulldb TEST_OPT=${TEST_OPT}" >> $report
  cmd /c ${MAKE} distclean allexectests TEST_OPT="${TEST_OPT}" TEST_USER=pierre \
    TEST_FPC=${MINGW_FPCDIR}/fpc-${FPC_VER}/bin/${FPCFULLTARGET}/${FPCBIN} \
    TEST_USE_LONGLOG=1 ${MAKE_EXTRA}  1>> $testslog 2>&1
  testsres=$?
  echo "Time `$CYGDATE +%H:%M:%S`" >> $report
  if [ ${testsres} != 0 ]; then
    echo Make distclean fulldb TEST_OPT=${TEST_OPT} failed ${makeres}
    echo Make distclean fulldb TEST_OPT=${TEST_OPT} failed ${makeres} >> $report
    ${CYGTAIL} -30 ${testslog}
    ${CYGTAIL} -30 ${testslog}  >> ${report}
    attachment="-a ${testslog}"
    skipupload=1
  else
    logdir=${HOME}/logs/`$CYGDATE +%Y-%m-%d`/opt-${TEST_OPT// /}/${SVNDIRNAME}-${FPCFULLTARGET}
    $CYGMKDIR -p ${logdir}
    $CYGCP ./output/${FPCFULLTARGET}/log ${logdir}/log-$TIME
    $CYGCP ./output/${FPCFULLTARGET}/longlog ${logdir}/longlog-$TIME
    $CYGCP ./output/${FPCFULLTARGET}/faillist ${logdir}/faillist-$TIME
    $CYGCP $testslog ${logdir}/tests.log-$TIME
    $CYGRM -Rf ./output-${FPCFULLTARGET}-${TEST_OPT// /}
  fi
  list_system_ppu
fi
if ! [ "X${skipupload}" == "X1" ]; then
  echo "Running make uploadrun" > $uploadlog
  echo "Running make uploadrun" >> $report
  TIME=`$CYGDATE +%H-%M-%S`
  echo "Time `$CYGDATE +%H:%M:%S`" >> $report
  echo "Time `$CYGDATE +%H:%M:%S`" >> $uploadlog
  OLDPATH=$PATH
  export PATH=$PATH:/usr/bin
  repeat=1
  tries=0
  while [ $repeat -eq 1 ] ; do
  cmd /c ${MAKE} uploadrun TEST_USER=pierre \
    TEST_HOSTNAME=${HOSTNAME} \
    TEST_FPC=${MINGW_FPCDIR}/fpc-${FPC_VER}/bin/${FPCFULLTARGET}/${FPCBIN} \
    FPC=${MINGW_FPCDIR}/fpc-${FPC_VER}/bin/${FPCFULLTARGET}/${FPCBIN} \
    DB_SSH_EXTRA="-i ~/.ssh/freepascal" DB_USE_SSH=1 ${MAKE_EXTRA} 1>> $uploadlog 2>&1
  upres=$?
  if [ $upres -eq 0 ] ; then
    repeat=0
  elif [ $tries > 15 ] ; then
    echo "uploadrun failed 15 times, giving up" >> $uploadlog
    echo "uploadrun failed 15 times, giving up" >> $report
    repeat=0
  else
    repeat=1
    sleep 120
    tries=`expr $tries + 1`
  fi 
  list_system_ppu
  done
  $CYGCP ./output/${FPCFULLTARGET}/*.tar.gz ${logdir}
  echo "Time `$CYGDATE +%H:%M:%S`" >> $uploadlog
  $CYGMOVE -f ./output ./output-${FPCFULLTARGET}-${TEST_OPT// /}
  $CYGCP $uploadlog ${logdir}/uploadlist-$TIME
  export PATH=$OLDPATH
fi
echo "Time `$CYGDATE +%H:%M:%S`" >> $report
}

cd tests

(
TEST_OPT=""
run_make
export TEST_OPT="-CX -XX -O3"
run_make
export TEST_OPT="-gl -Aas -al -O3"
run_make
export TEST_OPT="-gl -Criot"
run_make
) 1>> $report 2>&1

echo "Time at end `$CYGDATE +%H:%M:%S`" >> $report

export PATH=${STARTPATH}

mutt -x -s "Free Pascal results on ${FPCFULLTARGET} ${HOSTNAME} ${Build_version} ${Build_date}" \
     -i $report ${attachment} -- pierre@freepascal.org < /dev/null > ${report}.log

$CYGCP ${makelog} ${makelog}-${FPCFULLTARGET}
$CYGCP ${testslog} ${testslog}-${FPCFULLTARGET}
$CYGCP ${report} ${report}-${FPCFULLTARGET}

