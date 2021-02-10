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
export CYGWHICH=`which which`
export CYGCYGPATH=`which cygpath`
export CYGD2U=`which d2u`

if [ -z "${HOSTNAME}" ] ; then
  HOSTNAME=`uname -n`
fi


if [ -d ${HOME}/bin ] ; then
  if [ "${PATH/${HOME}/}" == "${PATH}" ] ; then
   echo "Adding home bin dir"
   export PATH=${HOME}/bin:${PATH}
  fi
fi

export MUTT=`which mutt`

if [ "${HOSTNAME}" == "WIN-G8VVDPH2N8D" ]; then
  export HOSTNAME=fpcwin2008
   export PATH=${PATH}:/bin
fi

if [ -z "${STARTVERSION}" ]; then
  STARTVERSION=3.2.0
fi
if [ -z "${SVNDIR}" ]; then
  SVNDIR=${HOME}/pas/trunk
fi

if [ -z "${SVNDIRNAME}" ] ; then
  SVNDIRNAME=${SVNDIR##*/}
fi

# Default is 386 binary
if [ -z "${FPCBIN}" ] ; then
  FPCBIN=ppc386
fi


if [ "${FPCBIN:0:6}" == "ppc386" ] ; then
  FPCFULLTARGET=i386-win32
elif [ "${FPCBIN:0:6}" == "ppcx64" ] ; then
  FPCFULLTARGET=x86_64-win64
else
  echo "Unknown binary ${FPCBIN}"
  exit
fi

if [ "${HOSTNAME}" == "PC-Nanion" ]; then
  # base dir is C:/pas
  echo "Using $HOSTNAME setup"
  export HOSTNAME=fpc-Win10-64
  export MINGW_CYGWINDIR=c:/cygwin64
  export CYGWIN_FPCDIR=/cygdrive/c/pas
  export MINGW_FPCDIR=c:/pas
  # export STARTVERSION=3.0.2
  export FPCPATH=${CYGWIN_FPCDIR}/fpc-${STARTVERSION}/bin/${FPCFULLTARGET}:${CYGWIN_FPCDIR}/fpc-${STARTVERSION}/bin/i386-win32
  if [ "X${MAKE}" == "Xmake" ] ; then
    export MAKE="c:\\pas\\fpc-${STARTVERSION}\\bin\\i386-win32\\make.exe"
  fi
  export MAKE_EXTRA=
  ##was  RMPROG=${MINGW_CYGWINDIR}/bin/rm CPPROG=${MINGW_CYGWINDIR}/bin/cp"
  export SVN=/usr/bin/svn
  export SSHPROG=$MINGW_CYGWINDIR/bin/ssh.exe
  export SCPPROG=$MINGW_CYGWINDIR/bin/scp.exe
elif [ "${HOSTNAME}" == "E6510-Muller" ]; then
  export HOSTNAME=fpcWin7-64
  export MINGW_CYGWINDIR=e:/cygwin-32
  export CYGWIN_FPCDIR=/cygdrive/e/pas
  export MINGW_FPCDIR=e:/pas
  export FPCPATH=${CYGWIN_FPCDIR}/fpc-${STARTVERSION}/bin/${FPCFULLTARGET}:${CYGWIN_FPCDIR}/fpc-${STARTVERSION}/bin/i386-win32
  if [ "X${MAKE}" == "Xmake" ] ; then
    export MAKE="e:\\pas\\fpc-${STARTVERSION}\\bin\\i386-win32\\make.exe"
  fi
  export MAKE_EXTRA=
  ##was  RMPROG=${MINGW_CYGWINDIR}/bin/rm CPPROG=${MINGW_CYGWINDIR}/bin/cp"
  export SVN=/usr/bin/svn
elif [ "${HOSTNAME}" == "d620-muller" ]; then
  export MINGW_CYGWINDIR=e:/cygwin
  export CYGWIN_FPCDIR=/cygdrive/e/pas
  export MINGW_FPCDIR=e:/pas
  export FPCPATH=${CYGWIN_FPCDIR}/fpc-${STARTVERSION}/bin/${FPCFULLTARGET}
elif [ "${HOSTNAME}" == "fpcwinvista64" ]; then
  export MINGW_CYGWINDIR=c:/cygwin${HOME}
  export CYGWIN_FPCDIR=${HOME}/pas
  export MINGW_FPCDIR=c:/cygwin${HOME}/pas
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

LOGSUFFIX=-${SVNDIRNAME}-${FPCFULLTARGET}
export report=`pwd`/report${LOGSUFFIX}.txt
export svnlog=`pwd`/svn${LOGSUFFIX}.txt
export makelog=`pwd`/make${LOGSUFFIX}.txt
export testslog=`pwd`/tests${LOGSUFFIX}.txt
export uploadlog=`pwd`/tests-upload${LOGSUFFIX}.txt

rm -f ${report}

echo "Starting $0" > ${report}
echo "date is `${CYGDATE}`" >> ${report}
echo "Time `${CYGDATE} +%H:%M:%S`" >> ${report}
echo "FPCPATH is ${FPCPATH}" >> ${report}
echo "Starting in directory `pwd`" >> ${report}

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
  echo "Running ${SVN}" >> ${report}
  repeat=1
  tries=0
  while [ ${repeat} -eq 1 ] ; do
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
  tries=`expr ${tries} + 1 `
  if [ ${svnres} -eq 0 ] ; then
    repeat=0
  elif [ ${tries} -gt 15 ] ; then
    echo "svn up tried 15 times, giving up" >> ${report}
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
  else
    echo "svnversion in base dir" >> ${report}
    svnversion -c . >> ${report}
    if [ -d fpcsrc ]; then
      echo "svnversion in fpcsrc dir" >> ${report}
      svnversion -c . >> ${report}
    fi
  fi
fi

if [ -d install ] ; then
  if [ "$FPCFULLTARGET" == "i386-win32" ] ; then
    if [ -d "install/binw32" ] ; then
      echo "Adding install/binw32 dir in front of FPCPATH variable" >> ${report}
      export FPCPATH=`pwd`/install/binw32:$FPCPATH
    fi
  fi
  if [ "$FPCFULLTARGET" == "x86_64-win64" ] ; then
    if [ -d "install/binw64" ] ; then
      echo "Adding install/binw64 dir in front of FPCPATH variable" >> ${report}
      export FPCPATH=`pwd`/install/binw64:$FPCPATH
    fi
  fi
fi

if [ -d fpcsrc ]; then
  echo Changing to fpcsrc dir >> ${report}
  cd fpcsrc
fi

FPC_SRC_DIR=`pwd`
MINGW_FPC_SRC_DIR=`${CYGCYGPATH} -am .`
function list_system_ppu ()
{
  ${CYGFIND} ${FPC_SRC_DIR} ${CYGWIN_FPCDIR}/fpc-${FPC_VER}  -iname "system.ppu" | ${CYGXARGS} ${CYGLS} -altr >> ${report}
}

STARTPATH=${PATH}
PATH=${FPCPATH}:${PATH}
FPCSTART=`which ${FPCBIN}`

if [ -z "${FPCSTART}" ] ; then
  echo "${FPCBIN} not found, PATH=\"${PATH}\""
  echo "${FPCBIN} not found, PATH=\"${PATH}\"" >> ${report}
  if ! [ "${skipsvn}" == "1" ]; then
    ${SVN} cleanup --non-interactive >> ${svnlog} 2>&1
  fi
  exit
fi

PATH=${STARTPATH}

PATH_NO_CYGWIN=

OIFS=${IFS}
IFS=:
for p in ${STARTPATH} ; do
  # echo p is $p
  skip=0
  case "$p" in
    /usr/*) skip=1; # echo "$p should be skipped"
         ;;
    /bin) skip=1;
	 ;;
    *) if [ ! "${skip}" == "1" ] ; then
         PATH_NO_CYGWIN=${PATH_NO_CYGWIN}:$p
       fi ;;
  esac
done
export PATH=${FPCPATH}:${PATH_NO_CYGWIN}
IFS=${OIFS}

echo "Time `${CYGDATE} +%H:%M:%S`" >> ${report}
echo "Used PATH is \"${PATH}\"" >> ${report}


Start_version=`${FPCSTART} -iV`
Start_date=`${FPCSTART} -iD`
echo "Start ${FPCBIN} version is ${Start_version}" >> ${report}
echo "Start ${FPCBIN} date is ${Start_date}" >> ${report}
list_system_ppu

if ! [ "${skipmake}" == "1" ]; then
  echo "Running make distclean all"
  echo "Running make distclean all" >> ${report}
  echo "Time `${CYGDATE} +%H:%M:%S`" >> ${report}
  # Avoid ppc386 linux executable
  rm -f ./compiler/${FPCBIN} 2> /dev/null
  cmd /c "${MAKE}"  distclean all DEBUG=1 FPC=${FPCBIN} ${MAKE_EXTRA} 1> ${makelog} 2>&1
  makeres=$?
  if [ ${makeres} -ne 0 ]; then
    echo "Make failed ${makeres}"
    echo "Make failed ${makeres}" >> ${report}
    ${CYGTAIL} -30 ${makelog}
    ${CYGTAIL} -30 ${makelog}  >> ${report}
    attachment="-a ${makelog}"
    skipinstall=1
    skiptests=1
    skipupload=1
  else
    echo "Make finished OK"
    echo "Make finished OK" >> ${report}
  fi
fi
list_system_ppu

# Pitfall here: we need to get rid of the CR
# that is at the end of the version string
FPC_VER_L=`./compiler/${FPCBIN} -iV`
FPC_VER=${FPC_VER_L:0:${#FPC_VER_L}-1}
echo Free pascal version is ${#FPC_VER_L} x${FPC_VER_L}x
echo Free pascal version is ${#FPC_VER} x${FPC_VER}x
echo Free pascal version is ${#FPC_VER_L} x${FPC_VER_L}x >> ${report}
echo Free pascal version is ${#FPC_VER} x${FPC_VER}x >> ${report}
Build_version=`./compiler/${FPCBIN} -iV | ${CYGD2U}`
Build_date=`./compiler/${FPCBIN} -iD | ${CYGD2U}`


echo "New ${FPCBIN} version is ${Build_version}" >> ${report}
echo "New ${FPCBIN} date is ${Build_date}" >> ${report}
echo "Time `${CYGDATE} +%H:%M:%S`" >> ${report}
echo "PATH=${PATH}" >> ${report}
echo "MAKE=${MAKE}" >> ${report}

if ! [ "${skipintall}" == "1" ]; then
  echo "Running make install"
  echo "Running make install" >> ${report}
  echo "Time `${CYGDATE} +%H:%M:%S`" >> ${report}
  echo "Time `${CYGDATE} +%H:%M:%S`" >> ${makelog}
  cmd /c "${MAKE} install INSTALL_PREFIX=${MINGW_FPCDIR}/fpc-${FPC_VER}  ${MAKE_EXTRA} FPC=${MINGW_FPC_SRC_DIR}/compiler/${FPCBIN}"  1>> ${makelog} 2>&1
  makeres=$?
  if [ ${makeres} -ne 0 ]; then
    echo "Make install failed ${makeres}"
    echo "Make install failed ${makeres}" >> ${report}
    ${CYGTAIL} -30 ${makelog}
    ${CYGTAIL} -30 ${makelog}  >> ${report}
    attachment="-a ${makelog}"
    skiptests=1
    skipupload=1
  else
    echo "Make install finished OK"
    echo "Make install finished OK" >> ${report}
  fi

fi
list_system_ppu
export NEW_FPC=${MINGW_FPCDIR}/fpc-${FPC_VER}/bin/${FPCFULLTARGET}/${FPCBIN}
NEW_FPC_IN_PATH=`${CYGWHICH} ${FPCBIN}`
export FPCFPMAKE=${MINGW_FPCDIR}/fpc-${FPC_VER}/bin/${FPCFULLTARGET}/${FPCBIN}
NEW_FPC_VER=`${NEW_FPC} -iV | ${CYGD2U}`
if [ "${Build_version}" != "${NEW_FPC_VER}" ] ; then
  echo "Problem with new binary: ${NEW_FPC_IN_PATH}" >> ${report}
  echo "Expected version is \"${Build_version}\", but got \"${NEW_FPC_VER}\"" >> ${report}
  exit
else
  export FPC=${NEW_FPC}
fi

NEW_FPC_DATE=`${NEW_FPC} -iD | ${CYGD2U}`
if [ "${Build_date}" != "${NEW_FPC_DATE}" ] ; then
  echo "Problem with new binary: ${NEW_FPC_IN_PATH}" >> ${report}
  echo "Expected date is \"${Build_date}\", but got \"${NEW_FPC_DATE}\"" >> ${report}
  exit
fi

function run_tests ()
{
if  [ "X${skiptests}" == "X1" ]; then
  echo "Time `${CYGDATE} +%H:%M:%S`" >> ${report}
  echo "skiptests=1, tests skipped" >> ${report}
else
  echo "Time `${CYGDATE} +%H:%M:%S`" >> ${report}
  TIME=`${CYGDATE} +%H-%M-%S`
  export testslog=`pwd`/tests${LOGSUFFIX}-${TEST_OPT// /}.txt
  export uploadlog=`pwd`/tests-upload${LOGSUFFIX}-${TEST_OPT// /}.txt
  echo "Running make distclean fulldb TEST_OPT=${TEST_OPT}" > ${testslog}
  if [ -z "${FULLFPCBIN}" ] ; then
    FULLFPCBIN=${MINGW_FPCDIR}/fpc-${FPC_VER}/bin/${FPCFULLTARGET}/${FPCBIN}
  fi
  echo "Time `${CYGDATE} +%H:%M:%S`" >> ${testslog}
  list_system_ppu
  echo "Calling kill-runaway-tests"
  echo "Calling kill-runaway-tests" >> ${testslog}
  ${HOME}/bin/kill-runaway-tests.sh >> ${testslog}
  echo "Deleting output directory with Cygwin rm"
  echo "Deleting output directory with Cygwin rm" >> ${testslog}
  ${CYGRM} -Rf ./output/ 1>> ${testslog} 2>&1
  echo "Recompiling rtl and packages dirs"
  echo "Recompiling rtl and packages dirs" >> ${report}
  cmd /c ${MAKE} -C ../rtl clean all FPC=${FULLFPCBIN} OPT="-n ${TEST_OPT}" >> ${testslog} 2>&1
  cmd /c ${MAKE} -C ../packages clean all FPC=${FULLFPCBIN} OPT="-n ${TEST_OPT}" >> ${testslog} 2>&1
  echo "Running make distclean fulldb TEST_OPT=${TEST_OPT}"
  echo "Running make distclean fulldb TEST_OPT=${TEST_OPT}" >> ${report}
  cmd /c ${MAKE} distclean allexectests TEST_OPT="${TEST_OPT}" TEST_USER=pierre \
    TEST_FPC=${FULLFPCBIN} \
    TEST_USE_LONGLOG=1 ${MAKE_EXTRA}  1>> ${testslog} 2>&1
  testsres=$?
  echo "Time `${CYGDATE} +%H:%M:%S`" >> ${report}
  if [ ${testsres} != 0 ]; then
    echo Make distclean fulldb TEST_OPT=${TEST_OPT} failed ${makeres}
    echo Make distclean fulldb TEST_OPT=${TEST_OPT} failed ${makeres} >> ${report}
    ${CYGTAIL} -30 ${testslog}
    ${CYGTAIL} -30 ${testslog}  >> ${report}
    attachment="${attachment} -a ${testslog}"
    loc_skipupload=1
  else
    logdir=${HOME}/logs/${SVNDIRNAME}/${FPCFULLTARGET}/`${CYGDATE} +%Y-%m-%d`/opt-${TEST_OPT// /}
    ${CYGMKDIR} -p ${logdir}
    ${CYGCP} ./output/${FPCFULLTARGET}/log ${logdir}/log-${TIME}
    ${CYGCP} ./output/${FPCFULLTARGET}/longlog ${logdir}/longlog-${TIME}
    ${CYGCP} ./output/${FPCFULLTARGET}/faillist ${logdir}/faillist-${TIME}
    ${CYGCP} ${testslog} ${logdir}/tests.log-${TIME}
    ${CYGRM} -Rf ./output-${FPCFULLTARGET}-${TEST_OPT// /}
    loc_skipupload=${skipupload}
  fi
  list_system_ppu
fi
if [ "X${loc_skipupload}" == "X1" ]; then
  echo "loc_skipupload=1, upload skipped" >> ${report}
  echo "Time `${CYGDATE} +%H:%M:%S`" >> ${report}
else
  echo "Running make uploadrun" > ${uploadlog}
  echo "Running make uploadrun" >> ${report}
  TIME=`${CYGDATE} +%H-%M-%S`
  echo "Time `${CYGDATE} +%H:%M:%S`" >> ${report}
  echo "Time `${CYGDATE} +%H:%M:%S`" >> ${uploadlog}
  OLDPATH=${PATH}
  export PATH=${PATH}:/usr/bin
  repeat=1
  tries=0
  while [ ${repeat} -eq 1 ] ; do
  cmd /c ${MAKE} uploadrun TEST_USER=pierre \
    TEST_HOSTNAME=${HOSTNAME} \
    TEST_FPC=${FULLFPCBIN} \
    FPC=${FULLFPCBIN} \
    DB_SSH_EXTRA="-i ~/.ssh/freepascal" DB_USE_SSH=1 ${MAKE_EXTRA} 1>> ${uploadlog} 2>&1
  upres=$?
  if [ ${upres} -eq 0 ] ; then
    repeat=0
  elif [ ${tries} > 15 ] ; then
    echo "uploadrun failed 15 times, giving up" >> ${uploadlog}
    echo "uploadrun failed 15 times, giving up" >> ${report}
    repeat=0
  else
    repeat=1
    sleep 120
    tries=`expr ${tries} + 1`
  fi
  list_system_ppu
  done
  ${CYGCP} ./output/${FPCFULLTARGET}/*.tar.gz ${logdir}
  echo "Time `${CYGDATE} +%H:%M:%S`" >> ${uploadlog}
  ${CYGMOVE} -f ./output ./output-${FPCFULLTARGET}-${TEST_OPT// /}
  ${CYGCP} ${testslog} ${logdir}/testslog-${TIME}
  ${CYGCP} ${uploadlog} ${logdir}/uploadlist-${TIME}
  export PATH=${OLDPATH}
fi
echo "Time `${CYGDATE} +%H:%M:%S`" >> ${report}
}

cd tests

(
TEST_OPT=""
run_tests
export TEST_OPT="-CX -XX -O3"
run_tests
export TEST_OPT="-gl -Aas -al -O3"
run_tests
export TEST_OPT="-gl -Criot"
run_tests
if [ "${FPCBIN}" == "ppc386" ] ; then
 if [ "${SVNDIRNAME/fixes/}" != "$SVNDIRNAME" ] ; then
  sehlog=`pwd`/make-seh-compiler.log
  echo "Running make -C ../compiler cycle OPT=\"-n -gsl -dTEST_WIN32_SEH\" FPC=${FPCBIN} INSTALL_PREFIX=${MINGW_FPCDIR}/fpc-${FPC_VER}" >> ${report}
  make -C ../compiler cycle OPT="-n -gsl -dTEST_WIN32_SEH" FPC=${FPCBIN} INSTALL_PREFIX=${MINGW_FPCDIR}/fpc-${FPC_VER} > ${sehlog} 2>&1
  res=$?
  if [ $res -ne 0 ] ; then
    echo "make seh compiler failed, res=$res" >> ${report}
  else
    echo "make seh compiler finished, res=$res" >> ${report}
    echo "${CYGCP} ../compiler/ppc386.exe ${CYGWIN_FPCDIR}/fpc-${FPC_VER}/bin/i386-win32/ppc386seh.exe" >> ${report}
    ${CYGCP} ../compiler/ppc386.exe ${CYGWIN_FPCDIR}/fpc-${FPC_VER}/bin/i386-win32/ppc386seh.exe
    res=$?
    if [ $res -ne 0 ] ; then
      echo "copy of seh compiler failed, res=$res" >> ${report}
    else
      export FULLFPCBIN=${MINGW_FPCDIR}/fpc-${FPC_VER}/bin/i386-win32/ppc386seh.exe
      export TEST_OPT="-dTEST_WIN32_SEH"
      run_tests
    fi
  fi
 else
  disabled_sehlog=`pwd`/make-disabled-seh-compiler.log
  echo "Running make -C ../compiler cycle OPT=\"-n -gsl -dDISABLE_WIN32_SEH\" FPC=${FPCBIN} INSTALL_PREFIX=${MINGW_FPCDIR}/fpc-${FPC_VER}" >> ${report}
  make -C ../compiler cycle OPT="-n -gsl -dDISABLE_WIN32_SEH" FPC=${FPCBIN} INSTALL_PREFIX=${MINGW_FPCDIR}/fpc-${FPC_VER} > ${disabled_sehlog} 2>&1
  res=$?
  if [ $res -ne 0 ] ; then
    echo "make disabled_seh compiler failed, res=$res" >> ${report}
  else
    echo "make disabled_seh compiler finished, res=$res" >> ${report}
    echo "${CYGCP} ../compiler/ppc386.exe ${CYGWIN_FPCDIR}/fpc-${FPC_VER}/bin/i386-win32/ppc386-disabled-seh.exe" >> ${report}
    ${CYGCP} ../compiler/ppc386.exe ${CYGWIN_FPCDIR}/fpc-${FPC_VER}/bin/i386-win32/ppc386-disabled-seh.exe
    res=$?
    if [ $res -ne 0 ] ; then
      echo "copy of disabled_seh compiler failed, res=$res" >> ${report}
    else
      export FULLFPCBIN=${MINGW_FPCDIR}/fpc-${FPC_VER}/bin/i386-win32/ppc386-disabled-seh.exe
      export TEST_OPT="-dDISABLE_WIN32_SEH"
      run_tests
    fi
  fi
 fi
fi
) 1>> ${report} 2>&1

echo "Time at end `${CYGDATE} +%H:%M:%S`" >> ${report}

export PATH=${STARTPATH}

$MUTT -x -s "Free Pascal results on ${FPCFULLTARGET} ${HOSTNAME} ${Build_version} ${Build_date}" \
     -i ${report} ${attachment} -- pierre@freepascal.org < /dev/null > ${report}.log

${CYGCP} ${makelog} ${makelog}-${FPCFULLTARGET}
${CYGCP} ${testslog} ${testslog}-${FPCFULLTARGET}
${CYGCP} ${report} ${report}-${FPCFULLTARGET}

