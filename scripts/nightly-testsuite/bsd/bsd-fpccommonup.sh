#!//usr/bin/env bash

. $HOME/bin/fpc-versions.sh

# Limit resources (64mb data, 8mb stack, 40 minutes)

OS=`uname -s | tr '[:upper:]' '[:lower:]' `
# echo "OS is $OS"
CPU=`uname -p | tr '[:upper:]' '[:lower:]' `
# echo "CPU is $CPU"

if [ -z "$FPCBIN" ] ; then
  FPCBIN=ppcx64
fi

if [ -z "$OS" ] ; then
  OS=`$FPCBIN -iST`
fi

if [ -z "$LC_ALL" ] ; then
  export LC_ALL=en_US.UTF-8
fi

if [ "$FPCBIN" == "ppc386" ] ; then
  if [ -d /lib/i386 ] ; then
    NEEDED_OPT="$NEEDED_OPT -Fl/lib/i386"
  fi
  if [ -d /usr/lib/i386 ] ; then
    NEEDED_OPT="$NEEDED_OPT -Fl/usr/lib/i386"
  fi
  if [ -d /lib32 ] ; then
    NEEDED_OPT="$NEEDED_OPT -Fl/lib32"
  fi
  if [ -d /usr/lib32 ] ; then
    NEEDED_OPT="$NEEDED_OPT -Fl/usr/lib32"
  fi
  if [ -d /usr/local/lib32 ] ; then
    NEEDED_OPT="$NEEDED_OPT -Fl/usr/local/lib32"
  fi
  SUFFIX=-32
  if [ "$CPU" != "i386" ] ; then
    NEEDED_OPT="-Xd $NEEDED_OPT"
    export BINUTILSPREFIX=i386-${OS}-
    export FPCMAKEOPT="$NEEDED_OPT -XP$BINUTILSPREFIX"
  fi
else
  NEEDED_OPT=
  SUFFIX=-64
fi

#if [ "$OS" == "openbsd" ] ; then
  # OpenBSD still using old 6.4 GDB version
  # Obsolete as we use egdb 7.12.1
  # which does not undersantd dwarf sets
  # -gonodwarfsets allows GDB to correctly parse dwarf information
#  if [ "${NEEDED_OPT//-g/}" != "${NEEDED_OPT}" ] ; then
#    NEEDED_OPT="$NEEDED_OPT -gonodwarfsets"
#  fi
#fi

export MAKE=`which gmake`

if [ -z "$MAKE" ] ; then
  export MAKE=`which make`
fi

if [ -z "$MAKE" ] ; then
  echo "Fatal: no make found"
  exit
fi

cleantests=0
if [ -z "$HOSTNAME" ] ; then
  HOSTNAME=`uname -n`
fi
HOSTNAME=${HOSTNAME/.*/}
if [ "$HOSTNAME" == "gcc300" ] ; then
  cleantests=1
  export run_tests=0
elif [ "$HOSTNAME" == "gcc220" ] ; then
  cleantests=1
  export run_tests=1
  NEEDED_OPT+=" -dFPC_USE_LIBC -gw"
elif [ "$HOSTNAME" == "OpenBSD386" ] ; then
  # VM inside gcc123, skip test runs
  cleantests=1
  export run_tests=1
else
  export run_tests=1
fi

HOST_PC=${HOSTNAME}

if [ -z "$USER" ]; then
  USER=$LOGNAME
fi
if [ -z "$USER" ] ; then
  USER=pierre
fi

if [ "X$USE_DEBUG" == "X1" ] ; then
  MAKEDEBUG="DEBUG=1"
else
  MAKEDEBUG=
fi

DATE="date +%Y-%m-%d-%H-%M"
TODAY=`date +%Y-%m-%d`
FPCRELEASEVERSION=$RELEASEVERSION

export PATH=/home/${USER}/pas/fpc-${FPCRELEASEVERSION}/bin:/home/${USER}/bin:$PATH


if [ "x$FIXES" == "x1" ] ; then
  SVN_VER=$FIXESVERSION
  SVNDIR=fixes
else
  SVN_VER=$TRUNKVERSION
  SVNDIR=trunk
fi

if [ "$OS" == "openbsd" ] ; then
  export OVERRIDEVERSIONCHECK=1
  export MAKE_EXTRA="FPCCPUOPT=-O-"
  export PATH=$HOME/pas/fpc-$SVN_VER/bin:$PATH
fi


if [ -z "$ZIPNAME" ] ; then
  ZIPNAME=fpcbuild
fi

if [ ! -d ~/pas/${SVNDIR} ] ; then
  mkdir -p ~/pas/${SVNDIR}
fi

if [ ! -d ~/logs ] ; then
  mkdir ~/logs
fi

if [ ! -d ~/logs/$SVNDIR ] ; then
  mkdir ~/logs/$SVNDIR
fi

cd  ~/pas/$SVNDIR

LOGDIR=$HOME/logs/$SVNDIR
if [ ! -d $LOGDIR ] ; then
  mkdir -p $LOGDIR
fi

export report=$LOGDIR/report${SUFFIX}.txt 
export svnlog=$LOGDIR/svnlog${SUFFIX}.txt 
export cleanlog=$LOGDIR/cleanlog${SUFFIX}.txt 
export makelog=$LOGDIR/makelog${SUFFIX}.txt 

echo "Starting $0" > $report
Start_binary=`which $FPCBIN`
Start_version=`$FPCBIN -iV`
Start_date=`$FPCBIN -iD`
echo "Start $Start_binary version is ${Start_version} ${Start_date}" >> $report
echo "##Start time `$DATE`" >> $report
echo "PATH=$PATH" >> $report
echo "##Start time `$DATE`" > $svnlog
#ulimit -d 65536 -s 8192 -t 2400  1>> $report 2>&1
ulimit -t 2400  1>> $report 2>&1

SVN=`which svn`

if [ -n "$SVN" ] ; then
  $SVN cleanup 1> $cleanlog 2>&1
  $SVN up --accept theirs-conflict 1>> $svnlog 2>&1
  res=$?
  if [[ ( $res -ne 0 ) && ( -d ./fpcsrc ) ]] ; then
    cd fpcsrc
    $SVN cleanup 1>> $cleanlog 2>&1
    $SVN up --accept theirs-conflict 1>> $svnlog 2>&1
    cd ../fpcdocs
    $SVN cleanup 1>> $cleanlog 2>&1
    $SVN up --accept theirs-conflict 1>> $svnlog 2>&1
    cd ..
  fi
else
  cd  ~/pas
  echo "Checking if $SVNDIR exists and is from today"
  new_zip=`find . -iname "${SVNDIR}.zip" -and -atime -1`
  new_zip_dir=`find . -iname "${SVNDIR}" -and -atime -1`
  if [ -z "$new_zip" ] ; then
    echo "Zip file $SVNDIR.zip not found"
    new_zip_dir=
    if [ -d "$SVNDIR" ] ; then
      echo "Removing dir $SVNDIR"
      rm -Rf $SVNDIR
    fi
  fi
  if [ -d "$new_zip_dir" ] ; then
    echo "Using existing dir $new_zip_dir"
  else
    if [ -n "${ZIPNAME}.zip" ] ; then
      echo "Removing old ${ZIPNAME}.zip"
      rm -f ${ZIPNAME}.zip
    fi
    if [ -n "${SVNDIR}.zip" ] ; then
      echo "Removing old ${SVNDIR}.zip"
      rm -f ${SVNDIR}.zip
    fi

    if [ -z "$new_zip" ] ; then
      ZIPNAME=fpcbuild
      if [ -n "${ZIPNAME}.zip" ] ; then
        echo "Removing old ${ZIPNAME}.zip"
        rm -f ${ZIPNAME}.zip
      fi
      wget ftp://ftp.freepascal.org/pub/fpc/snapshot/${SVNDIR}/source/${ZIPNAME}.zip
    else
      echo "Using file $new_zip"
    fi
    if [ -d "$ZIPNAME" ] ; then
      rm -Rf $ZIPNAME
    fi
    echo "Unzipping $ZIPNAME.zip"
    unzip -oq ${ZIPNAME}.zip
    res=$?
    if [ $res -ne 0 ] ; then
      echo "Unzip of $ZIPNAME failed, res=$res"
      exit
    else 
      echo "Renaming $ZIPNAME.zip to $SVNDIR.zip"
      mv -f ${ZIPNAME}.zip ${SVNDIR}.zip
    fi
  fi
  if [ -d "$ZIPNAME" ] ; then
    if [ -d "$SVNDIR" ] ; then
      echo "Removing old $SVNDIR"
      rm -Rf $SVNDIR
    fi
    echo "Renaming $ZIPNAME to $SVNDIR"
    mv -f $ZIPNAME $SVNDIR
  fi
  cd $SVNDIR
fi

if [ -d fpcsrc ]; then
  cd fpcsrc
fi

echo "Starting make distclean all" >> $report
echo "##Start make distclean `$DATE`" >> $report
echo "Starting make distclean all" >> $cleanlog
echo "##Start make distclean `$DATE`" >> $cleanlog
${MAKE} distclean $MAKEDEBUG $MAKE_EXTRA OPT="-n $NEEDED_OPT" FPCMAKEOPT="$FPCMAKEOPT" FPC=$FPCBIN 1>> ${cleanlog} 2>&1
echo "##Start make all `$DATE`" >> $report
echo "##Start make all `$DATE`" > $makelog
${MAKE} all $MAKEDEBUG $MAKE_EXTRA OPT="-n $NEEDED_OPT" FPCMAKEOPT="$FPCMAKEOPT" FPC=$FPCBIN 1>> ${makelog} 2>&1
makeres=$?
echo "##End make all `$DATE`, res=$makeres" >> $report
echo "##End make all `$DATE`, res=$makeres" >> $makelog
if [ $makeres -ne 0 ] ; then
  echo "${MAKE} distclean all failed result=${makeres}" >> $report
  tail -30 ${makelog} >> $report
else
  echo "Ending make distclean all; result=${makeres}" >> $report
fi

if [ ! -f ./compiler/$FPCBIN ] ; then
  # Try a simple cycle in compiler subdirectory
  ${MAKE} -C compiler distclean cycle $MAKEDEBUG $MAKE_EXTRA OPT="-n $NEEDED_OPT" FPC=$FPCBIN >> ${makelog} 2>&1
  res=$?
  if [ $res -ne 0 ] ; then
    PREVPATH=$PATH
    # Try with release compiler
    ${MAKE} -C compiler distclean cycle $MAKEDEBUG $MAKE_EXTRA OPT="-n $NEEDED_OPT" FPC=$INSTALLRELEASEDIR/bin/$FPCBIN >> ${makelog} 2>&1
  fi
fi

if [ -f ./compiler/$FPCBIN ] ; then
  NEWFPCBIN=${FPCBIN}-new
  cp ./compiler/${FPCBIN} ./compiler/${NEWFPCBIN}
  NEWFPCBIN=`pwd`/compiler/${NEWFPCBIN}
  Build_version=`$NEWFPCBIN -iV`
  Build_date=`$NEWFPCBIN -iD`
  NewBinary=1
else
  NewBinary=0
  echo "No new binary ./compiler/$FPCBIN" >> $report
fi

if [ $NewBinary -eq 1 ] ; then
  echo "New $FPCBIN version is ${Build_version} ${Build_date}" >> $report
  NEW_UNITDIR=`$NEWFPCBIN -iTP`-`$NEWFPCBIN -iTO`

  # Register system.ppu state
  if [ -f /home/${USER}/pas/fpc-${Build_version}/bin/ppudump ] ; then
    echo "system ppu checksums stored to $LOGDIR/${NEW_UNITDIR}-system.ppu-log1" >> $report
    /home/${USER}/pas/fpc-${Build_version}/bin/ppudump rtl/units/${NEW_UNITDIR}/system.ppu | grep -E "(^Analysing|Checksum)" > $LOGDIR/${NEW_UNITDIR}-system.ppu-log1 2>&1
  fi

  echo "Starting make installsymlink in compiler dir" >> $report
  echo "##`$DATE`" >> $report
  echo "Starting make installsymlink in compiler dir" >> $makelog
  echo "##`$DATE`" >> $makelog
  ${MAKE} -C compiler $MAKEDEBUG $MAKE_EXTRA installsymlink INSTALL_PREFIX=~/pas/fpc-${Build_version} OPT="-n $NEEDED_OPT" FPC=$NEWFPCBIN 1>> ${makelog} 2>&1
  makeres=$?
  if [ $makeres -ne 0 ] ; then
    echo "${MAKE} -C compiler installsymlink failed ${makeres}" >> $report
  fi

  echo "Starting make install" >> $report
  echo "##`$DATE`" >> $report
  echo "Starting make install" >> $makelog
  echo "##`$DATE`" >> $makelog
  ${MAKE} $MAKEDEBUG $MAKE_EXTRA install INSTALL_PREFIX=~/pas/fpc-${Build_version} OPT="-n $NEEDED_OPT" FPCMAKEOPT="$FPCMAKEOPT" FPC=$NEWFPCBIN 1>> ${makelog} 2>&1
  makeres=$?

  if [ $makeres -ne 0 ] ; then
    echo "${MAKE} install failed ${makeres}" >> $report
    for dir in rtl compiler packages utils ide ; do
      echo "Starting make install in dir $dir" >> $report
      echo "##`$DATE`" >> $report
      echo "Starting make install in dir $dir" >> $makelog
      echo "##`$DATE`" >> $makelog
      ${MAKE} -C ./$dir install $MAKEDEBUG $MAKE_EXTRA INSTALL_PREFIX=~/pas/fpc-${Build_version} OPT="-n $NEEDED_OPT" FPCMAKEOPT="$FPCMAKEOPT" FPC=$NEWFPCBIN 1>> ${makelog} 2>&1
      makeres=$?
      echo "Ending make -C ./$dir install; result=${makeres}" >> $report
      echo "##`$DATE`" >> $report
      echo "##`$DATE`" >> $makelog
    done
  else
    echo "Ending make install; result=${makeres}" >> $report
    echo "##`$DATE`" >> $report
    echo "Ending make install; result=${makeres}" >> $makelog
    echo "##`$DATE`" >> $makelog
  fi

  # fullinstall in compiler
  NEWFPCBIN=~/pas/fpc-${Build_version}/bin/$FPCBIN
  echo "Starting make fullinstall in compiler" >> $report
  echo "##`$DATE`" >> $report
  echo "Starting make fullinstall in compiler" >> $makelog
  echo "##`$DATE`" >> $makelog
  ${MAKE} -C compiler $MAKEDEBUG $MAKE_EXTRA cycle install fullinstall INSTALL_PREFIX=~/pas/fpc-${Build_version} OPT="-n $NEEDED_OPT" FPC=$NEWFPCBIN 1>> ${makelog} 2>&1

  # Check if system.ppu changed
  if [ -f /home/${USER}/pas/fpc-${Build_version}/bin/ppudump ] ; then
    echo "New system ppu checksums stored to $LOGDIR/${NEW_UNITDIR}-system.ppu-log2" >> $report
    /home/${USER}/pas/fpc-${Build_version}/bin/ppudump rtl/units/${NEW_UNITDIR}/system.ppu | grep -E "(^Analysing|Checksum)" > $LOGDIR/${NEW_UNITDIR}-system.ppu-log2 2>&1
    cmp  $LOGDIR/${NEW_UNITDIR}-system.ppu-log1 $LOGDIR/${NEW_UNITDIR}-system.ppu-log2 > $LOGDIR/${NEW_UNITDIR}-system.ppu-logdiffs
    cmpres=$?
    if [ $cmpres -ne 0 ] ; then
      echo "ppudump output for system.ppu changed" >> $report
      echo "ppudump output for system.ppu changed" >> $makelog
      cat $LOGDIR/${NEW_UNITDIR}-system.ppu-logdiffs >> $report
      echo "Cleaning packages to be sure" >> $report
      echo "Cleaning packages to be sure" >> $makelog
      ${MAKE} -C packages distclean FPC=$NEW_PPC_BIN 1>> ${makelog} 2>&1
      echo "Reinstalling packages as system.ppu has changed" >> $report
      echo "Reinstalling packages as system.ppu has changed" >> $makelog
      ${MAKE} -C packages $MAKEDEBUG $MAKE_EXTRA install INSTALL_PREFIX=~/pas/fpc-${Build_version} OPT="-n $NEEDED_OPT" FPCMAKEOPT="$FPCMAKEOPT" FPC=$NEWFPCBIN 1>> ${makelog} 2>&1
    fi
  fi
  # Add new bin dir as first in PATH
  export PATH=/home/${USER}/pas/fpc-${Build_version}/bin:${PATH}
  echo "Using new PATH=\"${PATH}\"" >> $report
  NEWFPC=`which $FPCBIN`
  echo "Using new binary \"${NEWFPC}\"" >> $report

  NEW_UNITDIR=`$NEWFPC -iTP`-`$NEWFPC -iTO`

  (
  cd ~/pas/$SVNDIR
  if [ -d fpcsrc ] ; then
    cd fpcsrc
  fi

  cd tests
  # Limit resources (64mb data, 8mb stack, 4 minutes)
  testsres=0

  ulimit -s 8192 -t 240 >> $report 2>&1

  function run_tests ()
  {
    MIN_OPT="$1"
    DIR_OPT=${MIN_OPT// /_}
    TEST_OPT="$NEEDED_OPT $1"
    MAKE_OPTS="$2"
    LOGSUBDIR=$LOGDIR/$TODAY/$NEW_UNITDIR/opts-${DIR_OPT}
    if [ ! -d $LOGSUBDIR ] ; then
      mkdir -p $LOGSUBDIR
    fi
    testslog=$LOGSUBDIR/tests-${NEW_UNITDIR}-${DIR_OPT}.txt 
    cleantestslog=$LOGSUBDIR/clean-${NEW_UNITDIR}-${DIR_OPT}.txt 

    echo "Starting make distclean fulldb" >> $report
    echo "${MAKE} ${MAKE_J_OPT} distclean followed by fulldb $MAKE_OPTS TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
      TEST_FPC=${NEWFPC} FPC=${NEWFPC} TEST_OPT=\"$TEST_OPT\" OPT=\"$NEEDED_OPT\" FPCMAKEOPT=\"$FPCMAKEOPT\" TEST_USE_LONGLOG=1 \
      DB_SSH_EXTRA=\" -i ~/.ssh/freepascal\" " >> $report
    echo "`$DATE`" >> $report
    TIME=`date +%H-%M-%S`
    ${MAKE} -C ../rtl distclean $MAKE_OPTS FPC=${NEWFPC} OPT="$NEEDED_OPT" > $cleantestslog 2>&1
    ${MAKE} -C ../packages distclean $MAKE_OPTS FPC=${NEWFPC} OPT="$NEEDED_OPT" >> $cleantestslog 2>&1
    ${MAKE} ${MAKE_J_OPT} distclean $MAKE_OPTS TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
      TEST_FPC=${NEWFPC} FPC=${NEWFPC} TEST_OPT="$TEST_OPT" OPT="$NEEDED_OPT" FPCMAKEOPT="$FPCMAKEOPT" TEST_USE_LONGLOG=1 \
      DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1>> $cleantestslog 2>&1
    ${MAKE} ${MAKE_J_OPT} testprep $MAKE_OPTS TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
      TEST_FPC=${NEWFPC} FPC=${NEWFPC} TEST_OPT="$TEST_OPT" OPT="$NEEDED_OPT" FPCMAKEOPT="$FPCMAKEOPT" TEST_USE_LONGLOG=1 \
      DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1> $testslog 2>&1
    ulimit -t 60  1>> $testslog 2>&1
    ${MAKE} ${MAKE_J_OPT} fulldb $MAKE_OPTS TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
      TEST_FPC=${NEWFPC} FPC=${NEWFPC} TEST_OPT="$TEST_OPT" OPT="$NEEDED_OPT" FPCMAKEOPT="$FPCMAKEOPT" TEST_USE_LONGLOG=1 \
      DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1>> $testslog 2>&1
    testsres=$?
    ulimit -t 240 1>> $testslog 2>&1
    echo "Ending make distclean fulldb; result=${testsres}" >> $report
    echo "`$DATE`" >> $report
    if [ $testsres -ne 0 ] ; then
      echo "Last 30 lines of testslog" >> $report
      tail -30 $testslog >> $report
    else
      cp output/$NEW_UNITDIR/faillist $LOGSUBDIR/faillist-$TIME
      cp output/$NEW_UNITDIR/log $LOGSUBDIR/log-$TIME 
      cp output/$NEW_UNITDIR/longlog $LOGSUBDIR/longlog-$TIME
      cp ${testslog} $LOGSUBDIR/tests-${DIR_OPT}-$TIME
      if [ ${cleantests} -ne 1 ] ; then
	if [ -d output-${SVNDIR}-${DIR_OPT} ] ; then
	  rm -Rf output-${SVNDIR}-${DIR_OPT}
	fi
	mv -f output output-${SVNDIR}-${DIR_OPT}
      fi
    fi
  }

  LOGSUBDIR=$LOGDIR/$TODAY/$NEW_UNITDIR
  if [ ! -d $LOGSUBDIR ] ; then
    mkdir -p $LOGSUBDIR
  fi
  cp ${svnlog} $LOGSUBDIR/svnlog-${NEW_UNITDIR}.txt
  cp ${makelog} $LOGSUBDIR/makelog-${NEW_UNITDIR}.txt

  echo "begin end." > test_empty.pp
  PIC_DEFAULT=`$NEWFPC $FPCMAKEOPT -va test_empty.pp 2>&1 | grep -i "Macro defined.* FPC_PIC" `
  rm -f test_empty*  2> /dev/null
  if [ -n "$PIC_DEFAULT" ] ; then
    ALT_PIC="-Cg-"
  else
    ALT_PIC="-Cg"
  fi

  if [ $run_tests -eq 1 ] ; then
    run_tests ""
    run_tests "$ALT_PIC"
    run_tests "-O4"
    run_tests "-gwl"
    run_tests "$ALT_PIC -gwl"
    run_tests "-O4 -gwl"
    run_tests "$ALT_PIC -O4"
    run_tests "-Criot"
    run_tests "$ALT_PIC -O4 -Criot"
    # also test with TEST_BENCH
    run_tests "$ALT_PIC -O2" "TEST_BENCH=1"
    if [ "X${SVNDIR}" != "X${SVNDIR//trunk//}" ] ; then
      run_tests "-gh"
      # This freezes on trwsync and tw3695 tests
      # run_tests "-ghc"
    fi
  fi

  # Cleanup

  if [ ${testsres} -eq 0 ]; then
    cd ~/pas/$SVNDIR
    ${MAKE} distclean 1>> ${cleanlog} 2>&1
  fi

  if [ $cleantests -eq 1 ] ; then
    cd ~/pas/$SVNDIR
    if [ -d fpcsrc ] ; then
      cd fpcsrc
    fi
    cd tests
    rm -Rf output* 1>> ${cleanlog} 2>&1
  fi

  ) >> $report 2>&1

fi # NewBinary -eq 1

mutt -x -s "Free Pascal results on ${HOST_PC} ${NEW_UNITDIR} ${Build_version} ${Build_date}" \
     -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log


