#!/bin/bash

. ~/bin/fpc-versions.sh

# cmd.exe must be found in usual console PATH
export PATH="/usr/bin:/bin:$PATH"
export CMD=`which cmd.exe`
# Remove any non-cygwin directory
export STARTPATH="$PATH"
# Other commands are cygwin executables, so we change PATH now.
export PATH="/usr/bin:/bin:$HOME/bin"
export MAKE=make
export TAIL=`which tail`
export CYG_DATE_BIN=`which date`
export CYG_DATE="${CYG_DATE_BIN} +%Y-%m-%d-%H-%M-%S"

MUTT=mutt

if [ "${STARTVERSION}" == "" ]; then
  STARTVERSION=$RELEASEVERSION
fi
if [ "${SVNDIR}" == "" ]; then
  SVNDIR=$TRUNKDIR
fi

SVN=svn
SVNVERSION=svnversion
svnversionfile=./lastsvnversion.txt

if [ "${HOSTNAME}" == "NIMA2" ]; then
  export MINGW_CYGWINDIR=d:/cygwin
  export CYGWIN_FPCDIR=/cygdrive/e/pas
  export MINGW_FPCDIR=e:/pas
  export FPCPATH=${CYGWIN_FPCDIR}/fpc-${STARTVERSION}/bin/i386-win32
  export TEST_HOSTNAME=windows-xp-32
  MUTT=$HOME/bin/mutt
  SVN_REV=1.8.9
  SVN=/cygdrive/e/pas/svn-${SVN_REV}/bin/svn.exe
  SVNVERSION=/cygdrive/e/pas/svn-${SVN_REV}/bin/svnversion.exe
elif [ "${HOSTNAME}" == "d620-muller" ]; then
  export MINGW_CYGWINDIR=e:/cygwin
  export CYGWIN_FPCDIR=/cygdrive/e/pas
  export MINGW_FPCDIR=e:/pas
  export FPCPATH=${CYGWIN_FPCDIR}/fpc-${STARTVERSION}/bin/i386-win32
  MUTT=~/bin/mutt
  SVN_REV=1.8.5
  SVN=/cygdrive/e/pas/svn-${SVN_REV}/bin/svn.exe
  SVNVERSION=/cygdrive/e/pas/svn-${SVN_REV}/bin/svnversion.exe
elif [ "${HOSTNAME}" == "HP" ]; then
  export MINGW_CYGWINDIR=c:/Pierre/cygwin-1.7
  export CYGWIN_FPCDIR=/cygdrive/c/Pierre/pas
  export MINGW_FPCDIR=c:/Pierre/pas
  export FPCPATH=${CYGWIN_FPCDIR}/fpc-${STARTVERSION}/bin/i386-win32
else
  export MINGW_CYGWINDIR=c:/cygwin
  export CYGWIN_FPCDIR=/cygdrive/c/FPC
  export MINGW_FPCDIR=c:/FPC
  export FPCPATH=${CYGWIN_FPCDIR}/fpc-${STARTVERSION}/bin/i386-win32
fi

export MAKE_EXTRA="RMPROG=${MINGW_CYGWINDIR}/bin/rm"
cd ${SVNDIR}

export report=`pwd`/report.txt
export svnlog=`pwd`/svn.txt 
export makelog=`pwd`/make.txt 
export testslog=`pwd`/tests.txt 
export lockfile=`pwd`/lock
attachment=""

rm -f $report

echo "Starting $0" > $report
echo "date is `${CYG_DATE}`" >> $report
echo "TAIL is ${TAIL}" >> $report
echo "CMD is ${CMD}" >> $report
echo "CYG_DATE is \"${CYG_DATE}\"" >> $report
echo "ENV list:" >> $report
env >> $report

# Reset all variables
# as this file is source'd several times
skipsvn=0
skipmake=0
skipinstall=0
skiptests=0
do_go32v2=0
do_info=0

if [ "$1" != "" ]; then
  echo "Handling option \"$1\" now"
fi
if [ "$1" == "uploadonly" ]; then
  skipsvn=1
  skipmake=1
  skipinstall=1
  skiptests=1
fi

if [ "$1" == "infoonly" ]; then
  skipsvn=1
  do_go32v2=0
  skipmake=1
  skipinstall=1
  skiptests=1
  skipupload=1
  do_info=1
fi


if [ "$1" == "go32v2only" ]; then
  skipsvn=1
  do_go32v2=1
  skipmake=1
  skipinstall=1
  skiptests=1
  skipupload=1
fi

if [ "$1" == "delonly" ]; then
  skipsvn=1
  skipmake=1
  skipinstall=1
  skiptests=1
  skipupload=1
fi



if [ "$1" == "testsonly" ]; then
  skipsvn=1
  skipmake=1
  skipinstall=1
fi

if [ "$1" == "skipsvn" ]; then
  skipsvn=1
fi

if [ ! "${skipsvn}" == "1" ]; then
  echo "Running svn" 
  echo "Running svn at `$CYG_DATE`" >> $report
  $SVN cleanup > ${svnlog} 2>&1
  $SVN up --accept theirs-conflict --force >> ${svnlog} 2>&1
  svnres=$?
  if [ ${svnres} != 0 ]; then
    echo svn up failed  >> ${report}
    tail ${svnlog} >> ${report}
    attachment="-a ${svnlog}"
    skipmake=1
    skipinstall=1
    skiptests=1
    skipupload=1
  fi
  svnprevversion=`cat $svnversionfile`
  $SVNVERSION -c . > $svnversionfile
  if [ -d fpcsrc ] ; then
    cd fpcsrc
    $SVNVERSION -c . >> ../$svnversionfile
    cd ..
  fi
  svnnewversion=`cat $svnversionfile`
  if [ "$svnprevversion" == "$svnnewversion" ]; then
    echo "SVN repository did not change" >> $report
    echo "SVN repository did not change" 
  else
    rm -f ./skiptoday
    echo "$SVNDIR branch changed today `$CYG_DATE` from $svnprevversion to $svnnewversion" >> $report
  fi
  if [ -d fpcsrc ] ; then
    cd fpcsrc
    svnprevversion=`cat $svnversionfile`
    $SVNVERSION -c . > $svnversionfile
    svnnewversion=`cat $svnversionfile`
    if [ "$svnprevversion" == "$svnnewversion" ]; then
      echo "SVN repository did not change" >> $report
      echo "SVN repository did not change" 
    else
      rm -f ../skiptoday
      echo "$SVNDIR branch changed today `$CYG_DATE` from $svnprevversion to $svnnewversion" >> $report
    fi
    cd ..
  fi 
fi

if [ -d fpcsrc ]; then
  echo Changing to fpcsrc dir
  cd fpcsrc
fi

# Delete any remaining fpmake executable
find . -iname "fpmake.exe" | xargs rm -f 

waittime=0
while [ -f $lockfile ]; do
  # Wait for lockfile to be removed
  sleep 10;
  waittime=`expr $waittime + 10`

  # Abondon after 10 hours
  if [ $waittime -gt 36000 ]; then
  echo " Abondon after 10 hours" >> $report
    mutt -x -s "Free Pascal results on win32 ${HOSTNAME} not completed" \
     -i $report ${attachment} -- pierre@freepascal.org < /dev/null > ${report}.log

    exit 1;
  fi
done

echo "Had to wait $waittime seconds for lock file $lockfile" >> $report

echo "Win32 cycle or tests in progress, `date`" > $lockfile


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
       else
         echo "Removing \"$p\" from PATH variable" >> $report
       fi ;;
  esac
done
export PATH=${FPCPATH}:${PATH_NO_CYGWIN}
IFS=${OIFS}
echo "Start PATH is \"${STARTPATH}\"" >> $report
echo "Used PATH is \"${PATH}\"" >> $report

Start_version=`ppc386 -iV`
Start_date=`ppc386 -iD`
echo "Start ppc386 version is ${Start_version}" >> $report
echo "Start ppc386 date is ${Start_date}" >> $report
echo "Start ppc386 version is ${Start_version}" > $makelog
echo "Start ppc386 date is ${Start_date}" >> $makelog


if [ "${do_info}" == "1" ]; then
  echo "Running make info"
  echo "Running make info" >> $report
  ${CMD} /c "${MAKE}  info DEBUG=1 ${MAKE_EXTRA}" 1>> ${makelog} 2>&1
  makeres=$?
  if [ ${makeres} != 0 ]; then
    echo Make failed ${makeres}
    ${TAIL} -30 ${makelog} 
    ${TAIL} -30 ${makelog}  >> ${report}
    attachment="-a ${makelog}"
    skipinstall=1
    skiptests=1
    skipupload=1
  fi
  exit 0;
fi

if [ ! "${skipmake}" == "1" ]; then
  echo "Running make distclean all"
  echo "Running make distclean all" >> $report
  ${CMD} /c "${MAKE}  distclean all DEBUG=1 ${MAKE_EXTRA}" 1>> ${makelog} 2>&1
  makeres=$?
  if [ ${makeres} != 0 ]; then
    echo Make failed ${makeres}
    ${TAIL} -30 ${makelog} 
    ${TAIL} -30 ${makelog}  >> ${report}
    attachment="-a ${makelog}"
    skipinstall=1
    skiptests=1
    skipupload=1
  fi
fi

# Pitfall here: we need to get rid of the CR
# that is at the end of the version string
FPC_VER_L=`./compiler/ppc386 -iV`
FPC_VER=${FPC_VER_L:0:${#FPC_VER_L}-1}
echo Free pascal version is ${#FPC_VER_L} x${FPC_VER_L}x
echo Free pascal version is ${#FPC_VER} x${FPC_VER}x
Build_version_L=`./compiler/ppc386 -iV`
Build_date_L=`./compiler/ppc386 -iD`
Build_version=${Build_version_L:0:${#Build_version_L}-1}
Build_date=${Build_date_L:0:${#Build_date_L}-1}


echo "New ppc386 version is ${Build_version}" >> $report
echo "New ppc386 date is ${Build_date}" >> $report

if [ ! "${skipinstall}" == "1" ]; then
  echo "Removing  previous installed units"
  echo "Removing  previous installed units `${CYG_DATE}`" >> $report
  /bin/rm  -Rf ${FPCDIR}/fpc-${FPC_VER}/units/i386-win32
  echo "Running make install"
  echo "Running make install `${CYG_DATE}`" >> $report
  ${CMD} /c "${MAKE} install INSTALL_PREFIX=${MINGW_FPCDIR}/fpc-${FPC_VER}  ${MAKE_EXTRA}"  1>> ${makelog} 2>&1
  makeres=$?
  if [ ${makeres} != 0 ]; then
    echo Make install failed ${makeres}
    ${TAIL} -30 ${makelog} 
    ${TAIL} -30 ${makelog}  >> ${report}
    attachment="-a ${makelog}"
    skiptests=1
    skipupload=1
  else
    ${CMD} /c "${MAKE} -C compiler distclean fullcycle fullinstall \
      INSTALL_PREFIX=${MINGW_FPCDIR}/fpc-${FPC_VER} DEBUG=1 ${MAKE_EXTRA}" 1>> ${makelog} 2>&1
    # Remove all generated unit fto for complete recompilation of units
    ${CMD} /c "${MAKE} distclean ${MAKE_EXTRA}" 1>> ${makelog} 2>&1
  fi

fi

cd tests
export TEST_OPT=""
if [ ! "${skiptests}" == "1" ]; then
  echo "Running make distclean fulldb"
  echo "Running make distclean fulldb `${CYG_DATE}`" >> $report
  echo "Running make distclean fulldb" > $testslog
  ${CMD} /c ${MAKE} distclean fulldb TEST_USER=pierre \
	TEST_FPC=${MINGW_FPCDIR}/fpc-${FPC_VER}/bin/i386-win32/ppc386 \
	FPC=${MINGW_FPCDIR}/fpc-${FPC_VER}/bin/i386-win32/ppc386 \
	TEST_HOSTNAME=${TEST_HOSTNAME} ${MAKE_EXTRA}  1>> $testslog 2>&1
  testsres=$?
  if [ ${testsres} != 0 ]; then
    echo Make distclean fulldb failed ${makeres}
    ${TAIL} -30 ${testslog} 
    ${TAIL} -30 ${testslog}  >> ${report}
    attachment="-a ${testslog}"
    skipupload=1
  fi
fi
export TEST_OPT="-Aas -al -Xe"
if [ ! "${skiptests}" == "1" ]; then
  echo "Running make distclean fulldb TEST_OPT=${TEST_OPT}"
  echo "Running make distclean fulldb TEST_OPT=${TEST_OPT} `${CYG_DATE}`" >> $report
  echo "Running make distclean fulldb TEST_OPT=${TEST_OPT}" > $testslog
  ${CMD} /c ${MAKE} distclean fulldb TEST_OPT="${TEST_OPT}" \
	TEST_USER=pierre \
	TEST_FPC=${MINGW_FPCDIR}/fpc-${FPC_VER}/bin/i386-win32/ppc386 \
	FPC=${MINGW_FPCDIR}/fpc-${FPC_VER}/bin/i386-win32/ppc386 \
	TEST_HOSTNAME=${TEST_HOSTNAME} ${MAKE_EXTRA}  1>> $testslog 2>&1
  testsres=$?
  if [ ${testsres} != 0 ]; then
    echo Make distclean fulldb TEST_OPT=${TEST_OPT} failed ${makeres}
    ${TAIL} -30 ${testslog} 
    ${TAIL} -30 ${testslog}  >> ${report}
    attachment="-a ${testslog}"
    skipupload=1
  fi
fi
export TEST_OPT="-CX -XX -O3"
if [ ! "${skiptests}" == "1" ]; then
  echo "Running make distclean fulldb TEST_OPT=${TEST_OPT}"
  echo "Running make distclean fulldb TEST_OPT=${TEST_OPT} `${CYG_DATE}`" >> $report
  echo "Running make distclean fulldb TEST_OPT=${TEST_OPT}" > $testslog
  ${CMD} /c ${MAKE} distclean fulldb TEST_OPT="${TEST_OPT}" \
	TEST_USER=pierre \
	TEST_FPC=${MINGW_FPCDIR}/fpc-${FPC_VER}/bin/i386-win32/ppc386 \
	FPC=${MINGW_FPCDIR}/fpc-${FPC_VER}/bin/i386-win32/ppc386 \
	TEST_HOSTNAME=${TEST_HOSTNAME} ${MAKE_EXTRA}  1>> $testslog 2>&1
  testsres=$?
  if [ ${testsres} != 0 ]; then
    echo Make distclean fulldb TEST_OPT=${TEST_OPT} failed ${makeres}
    ${TAIL} -30 ${testslog} 
    ${TAIL} -30 ${testslog}  >> ${report}
    attachment="-a ${testslog}"
    skipupload=1
  fi
fi
# go32v2 tests


if [ "${do_go32v2}" == "1" ]; then
# make allexectests digest TEST_OS_TARGET=go32v2 TEST_BINUTILSPREFIX=i386-go32v2- TEST_FPC=%FPCBIN% FPC=%FPCBIN% LIMIT83fs="win32 go32v2" OPT="-dLIMIT83FS -Fud:/pas/fpc-2.4.2/units/i386-win32/*" AS=i386-go32v2-as
# make uploadrun TEST_OS_TARGET=go32v2 TEST_BINUTILSPREFIX=i386-go32v2- TEST_FPC=%FPCBIN% FPC=%FPCBIN% LIMIT83fs="win32 go32v2" OPT=-dLIMIT83FS
export TEST_OS_TARGET=go32v2
export TEST_OPT="-Fle:/djgpp/cvs/lib -Fle:/djgpp/cvs/lib/gcc/djgpp/3.44"

if [ ! "${skiptests}" == "1" ]; then
  echo "Running make distclean fulldb for go32v2"
  echo "Running make distclean fulldb for go32v2 `${CYG_DATE}`" >> $report
  echo "Running make distclean fulldb for go32v2" > $testslog
  # Force recompilation of go32v2 rtl with go32v2 gnu as
  # because using win32 gnu as leads to an accepted object
  # that contains wrong relocations
  ${CMD} /c ${MAKE} -C ../rtl distclean all OS_TARGET=${TEST_OS_TARGET} \
    AS=i386-go32v2-as FPC=${MINGW_FPCDIR}/fpc-${FPC_VER}/bin/i386-win32/ppc386
  
  ${CMD} /c ${MAKE} distclean fulldb TEST_USER=pierre \
    TEST_OS_TARGET=${TEST_OS_TARGET}  TEST_OPT="${TEST_OPT}" \
    TEST_BINUTILSPREFIX=i386-go32v2- LIMIT83fs="win32 go32v2" \
    OPT="-dLIMIT83fs" \
    TEST_FPC=${MINGW_FPCDIR}/fpc-${FPC_VER}/bin/i386-win32/ppc386 \
    FPC=${MINGW_FPCDIR}/fpc-${FPC_VER}/bin/i386-win32/ppc386 \
    TEST_HOSTNAME=${TEST_HOSTNAME} ${MAKE_EXTRA}  1>> $testslog 2>&1
  testsres=$?
  if [ ${testsres} != 0 ]; then
    echo Make distclean fulldb for go32v2 failed ${makeres}
    ${TAIL} -30 ${testslog} 
    ${TAIL} -30 ${testslog}  >> ${report}
    attachment="-a ${testslog}"
    skipupload=1
  fi
fi
export TEST_OPT="-Fle:/djgpp/cvs/lib -Fle:/djgpp/cvs/lib/gcc/djgpp/3.44 -CX -XX -O3"
if [ ! "${skiptests}" == "1" ]; then
  echo "Running make distclean fulldb for go32v2 TEST_OPT=${TEST_OPT}"
  echo "Running make distclean fulldb for go32v2 TEST_OPT=${TEST_OPT} `${CYG_DATE}`" >> $report
  echo "Running make distclean fulldb for go32v2 TEST_OPT=${TEST_OPT}" > $testslog
  ${CMD} /c ${MAKE} distclean fulldb TEST_OPT="${TEST_OPT}" \
    TEST_USER=pierre TEST_OS_TARGET=${TEST_OS_TARGET} \
    TEST_BINUTILSPREFIX=i386-go32v2- LIMIT83fs="win32 go32v2" \
    OPT="-dLIMIT83fs" \
    TEST_FPC=${MINGW_FPCDIR}/fpc-${FPC_VER}/bin/i386-win32/ppc386 \
    FPC=${MINGW_FPCDIR}/fpc-${FPC_VER}/bin/i386-win32/ppc386 \
    TEST_HOSTNAME=${TEST_HOSTNAME} ${MAKE_EXTRA} 1>> $testslog 2>&1
  testsres=$?
  if [ ${testsres} != 0 ]; then
    echo Make distclean fulldb for go32v2 TEST_OPT=${TEST_OPT} failed ${makeres}
    ${TAIL} -30 ${testslog} 
    ${TAIL} -30 ${testslog}  >> ${report}
    attachment="-a ${testslog}"
    skipupload=1
  fi
fi
fi

export PATH=${STARTPATH}
export TEST_OPT=""

echo "Test ended at `${CYG_DATE}`" >> ${report}

if [ -f $lockfile ]; then
  rm -Rvf $lockfile 1>> ${report} 2>&1
  echo "Lock file $lockfile deleted" >> ${report}
else
  echo "Lock file already removed" >> ${report}
fi

${MUTT} -x -s "Free Pascal results on win32 ${TEST_HOSTNAME} ${Build_version} ${Build_date}" \
     -i $report ${attachment} -- pierre@freepascal.org < /dev/null > ${report}.log


