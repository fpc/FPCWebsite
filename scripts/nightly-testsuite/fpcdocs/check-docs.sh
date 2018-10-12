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
  
logfile=$HOME/logs/fpcsrc-$SVNNAME.log
report=$HOME/logs/report-$SVNNAME.txt

cd $SVNDIR

svn cleanup > $report 2>&1
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

  make distclean cycle OPT="-n -gl" > $logfile 2>&1
  res=$?
  if [ $res -ne 0 ] ; then
    echo "make cycle failed, res=$res" >> $report
    tail -30 $logfile >> $report
  fi

  make installsymlink FPC=`pwd`/ppcx64 PREFIX=$HOME/pas/fpc-$CURVER >> $logfile 2>&1
  res=$?
  if [ $res -ne 0 ] ; then
    echo "make installsymlink failed, res=$res" >> $report
    tail -30 $logfile >> $report
  fi

  cd ..
  make distclean install FPC=$HOME/pas/fpc-$CURVER/bin/ppcx64 PREFIX=$HOME/pas/fpc-$CURVER >> $logfile 2>&1
  res=$?
  if [ $res -ne 0 ] ; then
    echo "make install failed, res=$res" >> $report
    tail -30 $logfile >> $report
  fi

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

ulimit -t 1200

make distclean examples FPC=fpc PPOPTS="-gl" PREFIX=$HOME/pas/fpc-$CURVER > $logfile 2>&1
res=$?
if [ $res -ne 0 ] ; then
  echo "make examples failed, res=$res" >> $report
  tail -30 $logfile >> $report
fi

make pdfinstall FPC=fpc PPOPTS="-gl" PREFIX=$HOME/pas/fpc-$CURVER > $pdflogfile 2>&1
res=$?
if [ $res -ne 0 ] ; then
  echo "make pdfinstall failed, res=$res" >> $report
  tail -30 $logfile >> $report
fi
res=1
let trial=1
while [ $res -ne 0 ] ; do 
  echo "Running \"make execute\", nb=$trial" >> $logfile
  make execute >> $logfile 2>&1
  res=$?
  if [ $res -ne 0 ] ; then
    echo "\"make execute\" error $res, nb=$trial" >> $report
    tail -11 $logfile >> $report
  fi
  let trial++
  if [ $trial -gt 10 ] ; then
    re=0
  fi
done

pdf_listing=`ls -1 doc-pdf.*`

if [ -n "$pdf_listing" ] ; then
  scp $UPLOAD_SSH_KEY $pdf_listing ${UPLOAD_LOGIN}@${UPLOAD_MACHINE}:${UPLOAD_DIR}
fi

# installed TeX is pdftex, so no html possible

cd ../demo
logfile=$HOME/logs/fpc-demos-$SVNNAME.log

make distclean all execute FPC=fpc PPOPTS="-gl" PREFIX=$HOME/pas/fpc-$CURVER > $logfile 2>&1
if [ $res -ne 0 ] ; then
  echo "make all execute in demo failed, res=$res" >> $report
  tail -30 $logfile >> $report
fi

mutt -x -s "Free Pascal results for fpcdocs on ${HOSTNAME}" \
     -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log

