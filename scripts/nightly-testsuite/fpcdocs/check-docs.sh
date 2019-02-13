#!/usr/bin/env bash

UPLOAD_HOST=ftp.freepascal.org
UPLOAD_LOGIN=fpc
UPLOAD_SSH_KEY="-i $HOME/.ssh/id_rsa_gcc"
UPLOAD_DIR=ftp/beta/3.2.0-rc0/docs/

. $HOME/bin/fpc-versions.sh

if [ -z "$CURVER" ] ; then
  CURVER=$TRUNKVERSION
fi

if [ -z "$SVNNAME" ] ; then
  SVNNAME=$TRUNKDIRNAME
fi

if [ -z "$SVNDIR" ] ; then
  SVNDIR=$TRUNKDIR
fi

if [ -z "$FPCBIN" ] ; then
  FPCBIN=ppcx64
fi

export PATH=$HOME/pas/fpc-$CURVER/bin:$PATH

FPC_DATE=`$FPCBIN -iD`
today=`date "+%Y/%m/%d"`

# Allow --force option
if [ "$1" == "--force" ] ; then
  FPC_DATE=today
fi
  
logfile=$HOME/logs/fpcsrc-$SVNNAME.log
report=$HOME/logs/report-$SVNNAME.txt

cd $SVNDIR

echo "Starting svn clean/up" > $report
svn cleanup >> $report 2>&1
svn up >> $report 2>&1

if [ "$FPC_DATE" == "$today" ] ; then
  echo "Using $FPCBIN from $today" >> $report
else
  if [ ! -d fpcsrc ] ; then
    echo "Missing fpcsrc directory" >> $report
    mutt -x -s "Free Pascal results for fpcdocs on ${HOSTNAME}" \
         -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log
    exit
  fi

  cd fpcsrc/compiler

  echo "Starting 'make distclean cycle' at fpcsrc/compiler level" >> $report
  make distclean cycle OPT="-n -gl" > $logfile 2>&1
  res=$?
  if [ $res -ne 0 ] ; then
    echo "make cycle failed, res=$res" >> $report
    tail -30 $logfile >> $report
  fi

  echo "Starting 'make installsymlink' at fpcsrc/compiler level" >> $report
  make installsymlink FPC=`pwd`/ppcx64 PREFIX=$HOME/pas/fpc-$CURVER >> $logfile 2>&1
  res=$?
  if [ $res -ne 0 ] ; then
    echo "make installsymlink failed, res=$res" >> $report
    tail -30 $logfile >> $report
  fi

  cd ..
  for dir in rtl packages utils ; do
    echo "Starting 'make distclean install' in fpcsrc/$dir" >> $report
    make -C $dir distclean install FPC=$HOME/pas/fpc-$CURVER/bin/ppcx64 OPT="-n -gl" PREFIX=$HOME/pas/fpc-$CURVER >> $logfile 2>&1
    res=$?
    if [ $res -ne 0 ] ; then
      echo "make install in fpcsrc/$dir failed, res=$res" >> $report
      tail -30 $logfile >> $report
      mutt -x -s "Free Pascal results for fpcdocs on ${HOSTNAME}" \
           -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log
      exit
    fi
  done
  cd ..
fi

if [ ! -d fpcdocs ] ; then
  echo "Missing fpcdocs directory" >> $report
  mutt -x -s "Free Pascal results for fpcdocs on ${HOSTNAME}" \
       -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log
  exit
fi

cd fpcdocs

svn cleanup >> $report 2>&1
svn up >> $report 2>&1

logfile=$HOME/logs/fpcdocs-$SVNNAME.log
pdflogfile=$HOME/logs/pdfdocs-$SVNNAME.log
rtlinclogfile=$HOME/logs/rtlinc-$SVNNAME.log

ulimit -t 1200

echo "Starting 'make distclean examples' at fpcdocs level" >> $report
make distclean examples FPC=fpc PPOPTS="-gl" PREFIX=$HOME/pas/fpc-$CURVER > $logfile 2>&1
res=$?
if [ $res -ne 0 ] ; then
  echo "make examples failed, res=$res" >> $report
  tail -30 $logfile >> $report
fi

echo "Starting 'make rtl.inc' at fpcdocs level" >> $report
make rtl.inc FPC=fpc PPOPTS="-gl" PREFIX=$HOME/pas/fpc-$CURVER > $rtlinclogfile 2>&1
res=$?
if [ $res -ne 0 ] ; then
  echo "make rtl.inc failed, res=$res" >> $report
  tail -30 $rtlinclogfile >> $report
  mutt -x -s "Free Pascal results for fpcdocs on ${HOSTNAME}" \
       -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log
  exit
fi

echo "Starting 'make pdfinstall pdfzip pdftar' at fpcdocs level" >> $report
make pdfinstall pdfzip pdftar LATEXOPT=-halt-on-error LATEXPOSTOPT=" < /dev/null" FPC=fpc PPOPTS="-gl" PREFIX=$HOME/pas/fpc-$CURVER > $pdflogfile 2>&1
res=$?
if [ $res -ne 0 ] ; then
  echo "make pdfinstall failed, res=$res" >> $report
  tail -30 $pdflogfile >> $report
  mutt -x -s "Free Pascal results for fpcdocs on ${HOSTNAME}" \
       -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log
  exit
else
  echo "make pdfinstall success, new files:" >> $report
  ls -ltr doc-pdf.* >> $report
fi
res=1
max_trial=10
let trial=1
while [ $res -ne 0 ] ; do 
  echo "Starting 'make execute' at fpcdocs level, nb=$trial" >> $report
  echo "Running \"make execute\", nb=$trial" >> $logfile
  make execute >> $logfile 2>&1
  res=$?
  if [ $res -ne 0 ] ; then
    echo "\"make execute\" error $res, nb=$trial" >> $report
    tail -11 $logfile >> $report
    let trial++
    if [ $trial -gt $max_trial ] ; then
      res=0
    fi
  fi
done

pdf_listing=`ls -1 doc-pdf.* 2> /dev/null `

if [ -n "$pdf_listing" ] ; then
  echo "Starting 'scp $pdf_listing ${UPLOAD_LOGIN}@${UPLOAD_HOST}:${UPLOAD_DIR}' at fpcdocs level" >> $report
  res=1
  let trial=1
  while [ $res -ne 0 ] ; do 
    scp $UPLOAD_SSH_KEY $pdf_listing ${UPLOAD_LOGIN}@${UPLOAD_HOST}:${UPLOAD_DIR}
    res=$?
    if [ $res -ne 0 ] ; then
      echo "scp upload error error $res, nb=$trial" >> $report
      tail -11 $logfile >> $report
      let trial++
      if [ $trial -gt $max_trial ] ; then
        res=0
      fi
    fi
  done  
fi

# installed TeX is pdftex, so no html possible

cd ../demo
logfile=$HOME/logs/fpc-demos-$SVNNAME.log

echo "Starting 'make distclean all execute' at demo level" >> $report
make distclean all execute FPC=fpc PPOPTS="-gl" PREFIX=$HOME/pas/fpc-$CURVER > $logfile 2>&1
if [ $res -ne 0 ] ; then
  echo "make all execute in demo failed, res=$res" >> $report
  tail -30 $logfile >> $report
fi

mutt -x -s "Free Pascal results for fpcdocs on ${HOSTNAME}" \
     -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log

