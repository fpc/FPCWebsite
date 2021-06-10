#!/usr/bin/env bash

UPLOAD_HOST=ftp.freepascal.org
UPLOAD_LOGIN=fpc
UPLOAD_SSH_KEY="-i $HOME/.ssh/id_rsa_gcc"
UPLOAD_DIR=ftp/docs/

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

if [ "$1"  == "no_upload" ] ; then
  do_upload=0
else
  do_upload=1
fi

# Prepend release binary path and local $HOME/bin to PATH
export PATH=${HOME}/pas/fpc-${FPCRELEASEVERSION}/bin:${HOME}/bin:$PATH
# Prepend current version binary path
export PATH=$HOME/pas/fpc-$CURVER/bin:$PATH


FPC_DATE=`$FPCBIN -iD`
today=`date "+%Y/%m/%d"`

# Allow --force option
if [ "$1" == "--force" ] ; then
  FPC_DATE=today
fi
  
logfile=$HOME/logs/fpcsrc-docs-$SVNNAME.log
report=$HOME/logs/report-docs-$SVNNAME.txt

cd $SVNDIR

echo "Starting svn clean/up" > $report
svn cleanup >> $report 2>&1
svn up >> $report 2>&1

if [ "$FPC_DATE" == "$today" ] ; then
  echo "Using $FPCBIN from $today" >> $report
else
  if [ ! -d fpcsrc ] ; then
    echo "Missing fpcsrc directory" >> $report
    mutt -x -s "Free Pascal results for fpcdocs on ${HOSTNAME}, error: not fpcsrc" \
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
  make installsymlink FPC=`pwd`/ppcx64 INSTALL_PREFIX=$HOME/pas/fpc-$CURVER >> $logfile 2>&1
  res=$?
  if [ $res -ne 0 ] ; then
    echo "make installsymlink failed, res=$res" >> $report
    tail -30 $logfile >> $report
  fi

  cd ..
  for dir in rtl packages utils ; do
    echo "Starting 'make distclean install' in fpcsrc/$dir" >> $report
    make -C $dir distclean install FPC=$HOME/pas/fpc-$CURVER/bin/ppcx64 OPT="-n -gl" INSTALL_PREFIX=$HOME/pas/fpc-$CURVER >> $logfile 2>&1
    res=$?
    if [ $res -ne 0 ] ; then
      echo "make install in fpcsrc/$dir failed, res=$res" >> $report
      tail -30 $logfile >> $report
      mutt -x -s "Free Pascal results for fpcdocs on ${HOSTNAME}, error: make install failed" \
           -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log
      exit
    fi
  done
  cd ..
fi

if [ ! -d fpcdocs ] ; then
  echo "Missing fpcdocs directory" >> $report
  mutt -x -s "Free Pascal results for fpcdocs on ${HOSTNAME}, error: no fpcdocs" \
       -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log
  exit
fi

cd fpcdocs

svn cleanup >> $report 2>&1
svn up >> $report 2>&1

logfile=$HOME/logs/fpcdocs-$SVNNAME.log
pdflogfile=$HOME/logs/pdfdocs-$SVNNAME.log
htmllogfile=$HOME/logs/htmldocs-$SVNNAME.log
scppdflogfile=$HOME/logs/scp-pdfdocs-$SVNNAME.log
scphtmllogfile=$HOME/logs/scp-htmldocs-$SVNNAME.log
rtlinclogfile=$HOME/logs/rtlinc-$SVNNAME.log

ulimit -t 1200

echo "Starting 'make distclean examples' at fpcdocs level" >> $report
make distclean examples FPC=fpc PPOPTS="-gl" INSTALL_PREFIX=$HOME/pas/fpc-$CURVER > $logfile 2>&1
res=$?
if [ $res -ne 0 ] ; then
  echo "make examples failed, res=$res" >> $report
  tail -30 $logfile >> $report
fi

echo "Starting 'make rtl.inc' at fpcdocs level" >> $report
make rtl.inc FPC=fpc PPOPTS="-gl" INSTALL_PREFIX=$HOME/pas/fpc-$CURVER > $rtlinclogfile 2>&1
res=$?
if [ ! -f rtl.inc ] ; then
  echo "No rtl.inc file generated" >> $report
  res=1
fi
if [ $res -ne 0 ] ; then
  echo "make rtl.inc failed, res=$res" >> $report
  tail -30 $rtlinclogfile >> $report
  mutt -x -s "Free Pascal results for fpcdocs on ${HOSTNAME}, error rtl.inc generation failed" \
       -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log
  exit
fi

echo "Starting 'make pdfinstall pdfzip pdftar' at fpcdocs level" >> $report
make pdfinstall pdfzip pdftar LATEXOPT=-halt-on-error LATEXPOSTOPT=" < /dev/null" FPC=fpc PPOPTS="-gl" INSTALL_PREFIX=$HOME/pas/fpc-$CURVER > $pdflogfile 2>&1
res=$?
if [ $res -ne 0 ] ; then
  echo "make pdfinstall failed, res=$res" >> $report
  if [ -f "$HOME/pas/fpc-$FPCRELEASEVERSION/bin/fpdoc" ] ; then
    FPDOCBIN="$HOME/pas/fpc-$FPCRELEASEVERSION/bin/fpdoc"
    echo "Starting 'make pdfinstall pdfzip pdftar' at fpcdocs leveli with release FPDOC=$FPDOCBIN" >> $report
    make pdfinstall pdfzip pdftar LATEXOPT=-halt-on-error LATEXPOSTOPT=" < /dev/null" FPC=fpc FPDOC="$FPDOCBIN" PPOPTS="-gl" INSTALL_PREFIX=$HOME/pas/fpc-$CURVER > $pdflogfile 2>&1
    res=$?
  fi
  # Retry with FPDOC  make variable set to release binary
  if [ $res -ne 0 ] ; then
    tail -30 $pdflogfile >> $report
    mutt -x -s "Free Pascal results for fpcdocs on ${HOSTNAME}, pdf generation failed" \
         -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log
    exit
  fi
else
  echo "make pdfinstall success, new files:" >> $report
  ls -ltr doc-pdf.* >> $report
fi
echo "Starting 'make htmlinstall htmlzip htmltar USEL2H=1' at fpcdocs level" >> $report
make htmlinstall htmlzip htmltar USEL2H=1 FPC=fpc PPOPTS="-gl" INSTALL_PREFIX=$HOME/pas/fpc-$CURVER > $htmllogfile 2>&1
res=$?
if [ $res -ne 0 ] ; then
  echo "make htmlinstall failed, res=$res" >> $report
  tail -30 $htmllogfile >> $report
  mutt -x -s "Free Pascal results for fpcdocs on ${HOSTNAME}, html generation failed" \
       -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log
  exit
else
  echo "make htmlinstall success, new files:" >> $report
  ls -ltr doc-html.* >> $report
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
html_listing=`ls -1 doc-html.* 2> /dev/null `

uploaded=0


today_docs=`ssh ${UPLOAD_LOGIN}@${UPLOAD_HOST} "find ${UPLOAD_DIR} -newermt $TODAY" 2> /dev/null `

if [ -n "$today_docs" ] ; then
  echo "Files are on server: $today_docs"
elif [ $do_upload -eq 1 ] ; then
  if [ -n "$pdf_listing" ] ; then
    echo "Starting 'scp $pdf_listing ${UPLOAD_LOGIN}@${UPLOAD_HOST}:${UPLOAD_DIR}' at fpcdocs level" >> $report
    echo "Starting 'scp $pdf_listing ${UPLOAD_LOGIN}@${UPLOAD_HOST}:${UPLOAD_DIR}' at fpcdocs level" > $scppdflogfile
    res=1
    let trial=1
    while [ $res -ne 0 ] ; do 
      scp $UPLOAD_SSH_KEY $pdf_listing ${UPLOAD_LOGIN}@${UPLOAD_HOST}:${UPLOAD_DIR} >> $scppdflogfile
      res=$?
      if [ $res -ne 0 ] ; then
        echo "scp upload error error $res, nb=$trial" >> $report
        tail -11 $logfile >> $report
        let trial++
        if [ $trial -gt $max_trial ] ; then
          res=0
        fi
      else
        uploaded=1
      fi
    done  
  fi
  if [ -n "$html_listing" ] ; then
    echo "Starting 'scp $html_listing ${UPLOAD_LOGIN}@${UPLOAD_HOST}:${UPLOAD_DIR}' at fpcdocs level" >> $report
    echo "Starting 'scp $html_listing ${UPLOAD_LOGIN}@${UPLOAD_HOST}:${UPLOAD_DIR}' at fpcdocs level" > $scphtmllogfile
    res=1
    let trial=1
    while [ $res -ne 0 ] ; do 
      scp $UPLOAD_SSH_KEY $html_listing ${UPLOAD_LOGIN}@${UPLOAD_HOST}:${UPLOAD_DIR} >> $scphtmllogfile
      res=$?
      if [ $res -ne 0 ] ; then
        echo "scp upload error error $res, nb=$trial" >> $report
        tail -11 $logfile >> $report
        let trial++
        if [ $trial -gt $max_trial ] ; then
          res=0
        fi
      else
        uploaded=1
      fi
    done  
  fi
fi

# installed TeX is pdftex, so no html possible

cd ../demo
logfile=$HOME/logs/fpc-demos-$SVNNAME.log

echo "Starting 'make distclean all execute' at demo level" >> $report
make distclean all execute FPC=fpc PPOPTS="-gl" INSTALL_PREFIX=$HOME/pas/fpc-$CURVER > $logfile 2>&1
if [ $res -ne 0 ] ; then
  echo "make all execute in demo failed, res=$res" >> $report
  tail -30 $logfile >> $report
else
  echo "make all execute in demo finished without error" >> $report
fi

if [ $uploaded -eq 0 ] ; then
  if [ $do_upload -eq 0 ] ; then
    EXTRA_TITLE=" upload disabled"
  else
    EXTRA_TITLE=" upload to $UPLOAD_HOST failed"
  fi
else
  EXTRA_TITLE=
fi
mutt -x -s "Free Pascal results for fpcdocs on ${HOSTNAME}${EXTRA_TITLE}" \
     -i $report -- pierre@freepascal.org < /dev/null | tee  ${report}.log

