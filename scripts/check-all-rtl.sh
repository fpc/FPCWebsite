#!/usr/bin/env bash

. $HOME/bin/fpc-versions.sh

if [ "X$MAKE" == "X" ] ; then
  MAKE=make
fi

if [ "X$FIXES" == "X1" ] ; then
  STARTDIR=$FIXESDIR
else
  STARTDIR=$TRUNKDIR
fi

cd $STARTDIR

if [ -d fpcsrc ] ; then
  cd fpcsrc
fi

function set_ppc ()
{
  CPU_TARGET=$1

  case $CPU_TARGET in
    aarch64)   FPC=ppca64;;
    arm)       FPC=ppcarm;;
    avr)       FPC=ppcavr;;
    i386)      FPC=ppc386;;
    i8086)     FPC=ppc8086;;
    jvm)       FPC=ppcjvm;;
    m68k)      FPC=ppc68k;;
    mips)      FPC=ppcmips;;
    mipsel)    FPC=ppcmipsel;;
    powerpc)   FPC=ppcppc;;
    powerpc64) FPC=ppcppc64;;
    sparc)     FPC=ppcsparc;;
    sparc64)   FPC=ppcsparc64;;
    x86_64)    FPC=ppcx64;;
    *)         FPC=ppc$CPU_TARGET;;
  esac

}

function check_one_rtl ()
{
  CPU_TARGET=$1
  # mipseb and mips are just aliases
  if [ "$CPU_TARGET" == "mipseb" ] ; then
    CPU_TARGET=mips
  fi
  set_ppc $CPU_TARGET

  OS_TARGET=$2
  OPT="$3"
  MAKEEXTRA="$4"
  echo "Testing rtl for $CPU_TARGET $OS_TARGET, with OPT=\"$OPT\" and MAKEEXTRA=\"$MAKEEXTRA\""
  date "+%Y-%m-%d %H:%M:%S"
  already_tested=`grep " $CPU_TARGET-$OS_TARGET" $LISTLOGFILE `
  if [ "X$already_tested" != "X" ] ; then
    echo "Already done" 
    return
  fi

  BINUTILSPREFIX=not_set

  if [ "$CPU_TARGET" == "jvm" ] ; then
    ASSEMBLER=java
    # java is installed, no need for prefix
    BINUTILSPREFIX=
  elif [ "$OS_TARGET" == "darwin" ] ; then
    ASSEMBLER=clang
  else
    ASSEMBLER=as
  fi

  if [ "X$BINUTILSPREFIX" == "Xnot_set" ] ; then
    target_as=`which ${CPU_TARGET}-${OS_TARGET}-${ASSEMBLER}`
    if [ "X$target_as" != "X" ] ; then
      BINUTILSPREFIX=${CPU_TARGET}-${OS_TARGET}-
    else
      BINUTILSPREFIX=dummy-
    fi
  fi

  if [ -d rtl/$OS_TARGET ] ; then
    rtldir=rtl/$OS_TARGET
  else
    rtldir=rtl
  fi
  $MAKE -C $rtldir clean all CPU_TARGET=$CPU_TARGET OS_TARGET=$OS_TARGET BINUTILSPREFIX=$BINUTILSPREFIX OPT="$OPT" $MAKEEXTRA > ${LOGPREFIX}-${CPU_TARGET}-${OS_TARGET}.txt 2>&1
  res=$?
  if [ $res -eq 0 ] ; then
    echo "OK: Testing 1st $rtldir for $CPU_TARGET-$OS_TARGET, with OPT=\"$OPT\""
    echo "OK: Testing 1st $rtldir for $CPU_TARGET-$OS_TARGET, with OPT=\"$OPT\"" >> $LISTLOGFILE
    echo "Re-running make should do nothing"
    $MAKE -C $rtldir all CPU_TARGET=$CPU_TARGET OS_TARGET=$OS_TARGET BINUTILSPREFIX=$BINUTILSPREFIX OPT="$OPT" $MAKEEXTRA > ${LOGPREFIX}-2-${CPU_TARGET}-${OS_TARGET}.txt 2>&1
    res=$?
    if [ $res -eq 0 ] ; then
      fpc_called=`grep $FPC ${LOGPREFIX}-2-${CPU_TARGET}-${OS_TARGET}.txt`
      if [ "X$fpc_called" == "X" ] ; then
        echo "OK: Testing 2nd $rtldir for $CPU_TARGET-$OS_TARGET, with OPT=\"$OPT\""
        echo "OK: Testing 2nd $rtldir for $CPU_TARGET-$OS_TARGET, with OPT=\"$OPT\"" >> $LISTLOGFILE
      else
        echo "Failure: 2nd $rtldir for $CPU_TARGET-$OS_TARGET, with OPT=\"$OPT\""
        echo "Failure: See ${LOGPREFIX}-2-${CPU_TARGET}-${OS_TARGET}.txt for details"
        echo "Failure: 2nd $rtldir for $CPU_TARGET-$OS_TARGET, with OPT=\"$OPT\"" >> $LISTLOGFILE
        echo "Failure: See ${LOGPREFIX}-2-${CPU_TARGET}-${OS_TARGET}.txt for details" >> $LISTLOGFILE
      fi 
    else
      echo "Failure: Rerunning make $rtldir for $CPU_TARGET-$OS_TARGET, with OPT=\"$OPT\", res=$res"
      echo "Failure: See ${LOGPREFIX}-2-${CPU_TARGET}-${OS_TARGET}.txt for details"
      echo "Failure: Rerunning make $rtldir for $CPU_TARGET-$OS_TARGET, with OPT=\"$OPT\", res=$res" >> $LISTLOGFILE
      echo "Failure: See ${LOGPREFIX}-2-${CPU_TARGET}-${OS_TARGET}.txt for details" >> $LISTLOGFILE
    fi
   else
    echo "Failure: Testing rtl for $CPU_TARGET-$OS_TARGET, with OPT=\"$OPT\", res=$res"
    echo "Failure: See ${LOGPREFIX}-${CPU_TARGET}-${OS_TARGET}.txt for details"
    echo "Failure: Testing rtl for $CPU_TARGET-$OS_TARGET, with OPT=\"$OPT\", res=$res" >> $LISTLOGFILE
    echo "Failure: See ${LOGPREFIX}-${CPU_TARGET}-${OS_TARGET}.txt for details" >> $LISTLOGFILE
  fi
  date "+%Y-%m-%d %H:%M:%S"
}

function list_os ()
{
  CPU_TARGET=$1
  set_ppc $CPU_TARGET
  OPT="$2"
  MAKEEXTRA="$3"
  os_list=`$FPC -h | sed -n "s:.*-T\([a-zA-Z_][a-zA-Z_0-9]*\).*:\1:p" `
  for os in ${os_list} ; do
   echo "check_one_rtl $CPU_TARGET ${os,,} \"$OPT\" \"$MAKEEXTRA\""
   check_one_rtl $CPU_TARGET ${os,,} "$OPT" "$MAKEEXTRA"
  done
}

LOGFILE=$HOME/logs/all-rtl-checks.log
LISTLOGFILE=$HOME/logs/list-all-rtl-checks.log
EMAILFILE=$HOME/logs/check-rtl-log.txt

echo "Starting at `date`" > $LOGFILE
echo "Starting at `date`" > $LISTLOGFILE
echo "Starting at `date`" > $EMAILFILE

LOGPREFIX=$HOME/logs/rtl-check

(

# Remove all existing logs
rm -Rf ${LOGPREFIX}*

# List separately cases for which special parameters are required
check_one_rtl arm embedded "-n" "SUBARCH=armv4t"
check_one_rtl avr embedded "-n" "SUBARCH=avr25"
check_one_rtl mipsel embedded "-n" "SUBARCH=pic32mx"

# Generic listing based on -T$OS_TARGET
list_os aarch64 "-n"
list_os arm "-n"
list_os avr "-n"
list_os i386 "-n"
list_os i8086 "-n"
list_os m68k "-n"
list_os jvm "-n"
list_os mips "-n"
list_os mipsel "-n"
list_os powerpc "-n"
list_os powerpc64 "-n"
list_os sparc "-n"
list_os sparc64 "-n"
list_os x86_64 "-n"


# Parse system_CPU_OS entries in compiler/systems.inc source file 
# Obsolete systems are not listed here
# as they start with obsolete_system
index_cpu_os_list=`sed -n "s:^[[:space:]]*system_\([a-zA-Z0-9_]*\)_\([a-zA-Z0-9]*\), *{ *\([0-9]*\).*:\3;\1!\2:p" compiler/systems.inc`

# Splitt into index, cpu and os
for index_cpu_os in $index_cpu_os_list ; do
   index=${index_cpu_os//;*/}
   os=${index_cpu_os//*!/}
   os=${os,,}
   cpu=${index_cpu_os/*;/}
   cpu=${cpu//!*/}
   cpu=${cpu,,}
   echo "Found item $index, cpu=$cpu, os=$os"
   check_one_rtl $cpu $os
done

$MAKE -C rtl distclean 1> /dev/null 2>&1

) >> $LOGFILE 2>&1

echo "Ending at `date`" >> $LOGFILE
echo "Ending at `date`" >> $LISTLOGFILE

# Generate email summarizing found problems

error_file_list=` sed -n "s|Failure: See \(.*\) for details|\1|p" $LISTLOGFILE `

ok_count=` grep "OK:.*2nd.*" $LISTLOGFILE | wc -l `
pb_count=` grep "Failure: See.*" $LISTLOGFILE | wc -l `
echo "ok=$ok_count, pb=$pb_count" >> $EMAILFILE

index=1
for file in $error_file_list ; do
  echo "Error in file $index $file" >> $EMAILFILE
  output=`grep -nC3  -E "(Fatal:|Error:|make.*Error|make.*Fatal)" $file`
  if [ "X$output" == "X" ] ; then
    cat $file >> $EMAILFILE
  else
    grep -nC3  -E "(Fatal:|Error:|make.*Error|make.*Fatal)" $file >> $EMAILFILE
  fi
  index=` expr $index + 1 `
done

echo "Full log listing: " >> $EMAILFILE
cat $LISTLOGFILE >> $EMAILFILE

mutt -x -s "Free Pascal check RTL results date `date +%Y_%m-%d`" -i $EMAILFILE -- pierre@freepascal.org < /dev/null > /dev/null 2>&1

