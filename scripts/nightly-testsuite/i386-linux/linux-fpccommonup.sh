#!/bin/bash

. $HOME/bin/fpc-versions.sh
# Limit resources (64mb data, 8mb stack, 40 minutes)

if [ -z "$skip_tests" ] ; then
  skip_tests=0
fi

if [ -z "$MAKE" ] ; then
  MAKE=make
fi

export MAKE

if [ "${HOSTNAME}" == "vadmin" ]; then
  HOST_PC=PC_AFM
  USER=vadmin
else
  HOST_PC=${HOSTNAME}
fi

if [ "$USER" == "" ]; then
  USER=$LOGNAME
fi

if [ "X$FPCBIN" == "X" ]; then
  FPCBIN=ppc386
fi

DATE="date +%Y-%m-%d-%H-%M"
TODAY=`date +%Y-%m-%d`
# Use Free Pascal Release Version from fpc-versions script
FPCRELEASEVERSION=$RELEASEVERSION

export PATH=/home/${USER}/pas/fpc-${FPCRELEASEVERSION}/bin:/home/${USER}/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

if [ "x$FIXES" == "x1" ] ; then
  SVNDIR=fixes
else
  SVNDIR=trunk
fi

cd ~/pas/${SVNDIR}

logdir=~/logs/$SVNDIR/$TODAY

if [ ! -d $logdir ] ; then
  mkdir -p $logdir
fi

export report=$logdir/report.txt
export makelog=$logdir/make.txt
export cleanlog=$logdir/clean.txt
export testslog_gen=$logdir/tests_OPT.txt

function gen_ppu_log ()
{
  dir="$1"
  ppufilename="$2"
  ppusuff="$3"
  ppu="$dir/$ppufilename"
  logfile="$logdir/${ppufilename}${ppusuff}"
  if [ -f /home/${USER}/pas/fpc-${Build_version}/bin/ppudump ] ; then
    echo "/home/${USER}/pas/fpc-${Build_version}/bin/ppudump -VA \"$ppu\" > \"$logfile\"" >> $makelog
    /home/${USER}/pas/fpc-${Build_version}/bin/ppudump -VA "$ppu" > "$logfile"
    grep -E "(^Analysing|Checksum)" "$logfile" > "$logfile"-short 2>&1
  fi
}

function gen_ppu_diff ()
{
  ppufilename="$1"
  ppusuff1="$2"
  ppusuff2="$3"
  ppu1="$logdir/$ppufilename$ppusuff1"
  ppu2="$logdir/$ppufilename$ppusuff2"
  difffile="$logdir/${ppufilename}.ppudiffs"
  echo "diff -c \"${ppu1}\" \"${ppu2}\" > \"${difffile}\"" >> $makelog
  diff -c "${ppu1}" "${ppu2}" > "${difffile}"
  diffres=$?
  if [ $diffres -ne 0 ] ; then
    echo "ppudump output changed" >> $report
    head -30 "${difffile}" >> $report
    echo "See file: ${difffile}" >> $report
    echo "Cleaning packages to be sure" >> $report
    ${MAKE} -C packages distclean FPC=$NEW_PPC_BIN 1>> ${makelog} 2>&1
  fi
}

echo "Starting $0" > $report
START_PPC_BIN=`which $FPCBIN 2> /dev/null`
Start_version=`$START_PPC_BIN -iV 2> /dev/null`
Start_date=`$START_PPC_BIN -iD 2> /dev/null`
echo "Start $FPCBIN version is ${Start_version} ${Start_date}" >> $report
echo "Start bin is $START_PPC_BIN" >> $report
echo "Start time `$DATE`" >> $report
echo "PATH=$PATH" >> $report
ulimit -d 65536 -s 8192 -t 2400  1>> $report 2>&1
svn cleanup --include-externals 1>> $report 2>&1
svn up --accept theirs-conflict 1>> $report 2>&1

if [ -d fpcsrc ]; then
  cd fpcsrc
fi

echo "Starting ${MAKE} distclean" >> $report
echo "Start ${MAKE} `$DATE`" >> $report
${MAKE} distclean DEBUG=1 1> ${makelog} 2>&1
makeres=$?
if [ $makeres -ne 0 ] ; then
  echo "${MAKE} distclean failed result=${makeres}" >> $report
  tail -30 ${makelog} >> $report
else
  echo "Ending ${MAKE} distclean; result=${makeres}" >> $report
fi

echo "Starting ${MAKE} -C compiler cycle" >> $report
echo "Start ${MAKE} `$DATE`" >> $report
${MAKE} -C compiler cycle DEBUG=1 1> ${makelog} 2>&1
makeres=$?
if [ $makeres -ne 0 ] ; then
  echo "${MAKE} -C compiler cycle failed result=${makeres}" >> $report
  tail -30 ${makelog} >> $report
else
  echo "Ending ${MAKE} -C compiler cycle; result=${makeres}" >> $report
fi

NEW_PPC_BIN=`pwd`/compiler/$FPCBIN

if [ ! -f $NEW_PPC_BIN ] ; then
  echo "No new $NEW_PPC_BIN, aborting" >> $report
  exit
fi

Build_version=`$NEW_PPC_BIN -iV 2> /dev/null`
Build_date=`$NEW_PPC_BIN -iD 2> /dev/null`
NEW_OS_TARGET=`$NEW_PPC_BIN -iTO`
NEW_CPU_TARGET=`$NEW_PPC_BIN -iTP`

echo "New $FPCBIN version is ${Build_version} ${Build_date} ${NEW_CPU_TARGET}-${NEW_OS_TARGET} " >> $report

# Register system.ppu state
gen_ppu_log rtl/units/${NEW_CPU_TARGET}-${NEW_OS_TARGET} system.ppu -log1
gen_ppu_log rtl/units/${NEW_CPU_TARGET}-${NEW_OS_TARGET} objpas.ppu -log1
gen_ppu_log rtl/units/${NEW_CPU_TARGET}-${NEW_OS_TARGET} sysutils.ppu -log1

# Update all cross-compilers (with DEBUG set)
NEW_PPC_SAFE=`pwd`/compiler/startppc
cp $NEW_PPC_BIN $NEW_PPC_SAFE

make_targets="distclean cycle installsymlink clean rtlclean rtl fullinstall"
for make_target in $make_targets ; do
  echo "${MAKE} -C compiler $make_target DEBUG=1 INSTALL_PREFIX=~/pas/fpc-${Build_version}" >> $report
  ${MAKE} -C compiler $make_target RELEASE=1 DEBUG=1 INSTALL_PREFIX=~/pas/fpc-${Build_version} FPC=$NEW_PPC_SAFE 1>> ${makelog} 2>&1
  makeres=$?
  if [ $makeres -ne 0 ] ; then
    echo "${MAKE} -C compiler $make_target failed result=${makeres}" >> $report
    tail -30 ${makelog} >> $report
  else
    echo "Ending ${MAKE} -C compiler $make_target; result=${makeres}" >> $report
  fi
done

# Check if system.ppu changed
gen_ppu_log rtl/units/${NEW_CPU_TARGET}-${NEW_OS_TARGET} system.ppu -log2
gen_ppu_log rtl/units/${NEW_CPU_TARGET}-${NEW_OS_TARGET} objpas.ppu -log2
gen_ppu_log rtl/units/${NEW_CPU_TARGET}-${NEW_OS_TARGET} sysutils.ppu -log2
gen_ppu_diff system.ppu -log1 -log2
gen_ppu_diff objpas.ppu -log1 -log2
gen_ppu_diff sysutils.ppu -log1 -log2
echo "Starting ${MAKE} distclean" >> $report
echo "`$DATE`" >> $report
${MAKE} DEBUG=1 distclean INSTALL_PREFIX=~/pas/fpc-${Build_version} FPC=$NEW_PPC_SAFE 1>> ${makelog} 2>&1
makeres=$?

echo "Starting ${MAKE} install" >> $report
echo "`$DATE`" >> $report
${MAKE} DEBUG=1 install INSTALL_PREFIX=~/pas/fpc-${Build_version} FPC=$NEW_PPC_SAFE 1>> ${makelog} 2>&1
makeres=$?

if [ $makeres -ne 0 ] ; then
  echo "${MAKE} install failed ${makeres}" >> $report
  for dir in rtl compiler packages utils ide ; do
    echo "Starting install in dir $dir" >> $report
    ${MAKE} -C ./$dir install INSTALL_PREFIX=~/pas/fpc-${Build_version} FPC=$NEW_PPC_SAFE 1>> ${makelog} 2>&1
    makeres=$?
    echo "Ending ${MAKE} -C ./$dir install; result=${makeres}" >> $report
  done
else
  echo "Ending ${MAKE} install; result=${makeres}" >> $report
fi

# Add new bin dir as first in PATH
export PATH=/home/${USER}/pas/fpc-${Build_version}/bin:${PATH}
echo "Using new PATH=\"${PATH}\"" >> $report
NEWFPC=`which $FPCBIN`
echo "Using new binary \"${NEWFPC}\"" >> $report

NEW_OS_TARGET=`$NEWFPC -iTO`
NEW_CPU_TARGET=`$NEWFPC -iTP`
NEW_FULL_TARGET=${NEW_CPU_TARGET}-${NEW_OS_TARGET}

LIBGCC_DIR=`gcc -m32 -print-libgcc-file-name | xargs dirname`

if [ -d $LIBGCC_DIR ] ; then
  BASE_OPT="-Fl$LIBGCC_DIR"
else
  BASE_OPT=""
fi

if [ $skip_tests -eq 0 ] ; then
  cd tests
  # Limit resources (64mb data, 8mb stack, 4 minutes)
  ulimit -d 65536 -s 8192 -t 240

  echo "Starting ${MAKE} -C .. distclean" >> $report
  ${MAKE} -C .. distclean > $cleanlog 2>&1

  echo "Starting ${MAKE} distclean fulldb" >> $report
  echo "`$DATE`" >> $report
  testslog=${testslog_gen/OPT/}
  ${MAKE} distclean fulldb TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
  TEST_OPT="$BASE_OPT" TEST_FPC=${NEWFPC} FPC=${NEWFPC} \
  DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1> $testslog 2>&1
  testsres=$?
  echo "Ending ${MAKE} distclean fulldb; result=${testsres}" >> $report
  echo "`$DATE`" >> $report
  if [ $testsres -ne 0 ] ; then
    tail -43 $testslog >> $report
  fi
  TEST_OPT="$BASE_OPT -Cg"
  testslog=${testslog_gen/OPT/-Cg}
  export testslog=$logdir/tests-Cg.txt
  echo "Starting ${MAKE} clean fulldb with TEST_OPT=${TEST_OPT}" >> $report
  echo "`$DATE`" >> $report
  ${MAKE} distclean fulldb TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
  TEST_OPT="${TEST_OPT}" TEST_FPC=${NEWFPC} FPC=${NEWFPC} \
  DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1> $testslog 2>&1
  testsres=$?
  echo "Ending ${MAKE} distclean fulldb with TEST_OPT=${TEST_OPT}; result=${testsres}" >> $report
  echo "`$DATE`" >> $report
  if [ $testsres -ne 0 ] ; then
    tail -43 $testslog >> $report
  fi
  TEST_OPT="$BASE_OPT -O4 -gwl"
  testslog=${testslog_gen/OPT/-O4--gwl}
  echo "Starting ${MAKE} clean fulldb with TEST_OPT=${TEST_OPT}" >> $report
  echo "`$DATE`" >> $report
  ${MAKE} distclean fulldb TEST_USER=pierre TEST_HOSTNAME=${HOST_PC} \
  TEST_OPT="${TEST_OPT}" TEST_FPC=${NEWFPC} FPC=${NEWFPC} \
  DB_SSH_EXTRA=" -i ~/.ssh/freepascal" 1> $testslog 2>&1
  testsres=$?
  echo "Ending ${MAKE} distclean fulldb with TEST_OPT=${TEST_OPT}; result=${testsres}" >> $report
  echo "`$DATE`" >> $report
  if [ $testsres -ne 0 ] ; then
    tail -43 $testslog >> $report
  fi
fi

mutt -x -s "Free Pascal results for ${NEW_FULL_TARGET} on ${HOST_PC}, ${Build_version} ${Build_date}" \
     -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log

# Cleanup

if [ "${testsres}" == "0" ]; then
  cd ~/pas/trunk
  ${MAKE} distclean 1>> ${makelog} 2>&1
fi


