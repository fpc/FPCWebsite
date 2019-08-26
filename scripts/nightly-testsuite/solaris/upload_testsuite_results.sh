#!/usr/bin/env bash

DB_HOST=fpc@www.freepascal.org
DB_UPLOADDIR=testsuite/incoming
DB_SSH_EXTRA="-i $HOME/.ssh/old-freepascal"
FTP_HOST=fpcftp
DIRECT_FTP=0
GCC_HOST=gcc70
GCC_UPLOAD_DIR=logs/to_upload/to_ftp

VERBOSE=0
if [ "X$1" == "X--verbose" ] ; then
  VERBOSE=1
fi

UPLOADDIR=$HOME/logs/to_upload
LOGFILE=$UPLOADDIR/logfile
cd $UPLOADDIR

for file in *.tar.gz ; do
  if [ -f "$file" ] ; then
    if [ $VERBOSE -ne 0 ] ; then
      echo "`date +%Y-%m-%d-%H:%M` Trying to upload file $file" >> $LOGFILE
    fi
    t_ok=0
    scp -pq ${DB_SSH_EXTRA} ${file} ${DB_HOST}:${DB_UPLOADDIR}/${file}.part >> $LOGFILE 2>&1
    resscp=$?
    if [ $resscp -eq 0 ] ; then
      ssh ${DB_SSH_EXTRA} ${DB_HOST} "mv ${DB_UPLOADDIR}/${file}.part ${DB_UPLOADDIR}/${file}" >> $LOGFILE 2>&1
      resssh=$?
      if [ $resssh -eq 0 ] ; then
        t_ok=1
      fi
    fi
    if [ $t_ok -eq 1 ] ; then
      if [ $VERBOSE -ne 0 ] ; then
        echo "`date +%Y-%m-%d-%H:%M` Transfer of $file succeeded" >> $LOGFILE
      fi
      rm -f $file
    else
      if [ $VERBOSE -eq 0 ] ; then
        echo "`date +%Y-%m-%d-%H:%M` Trying to upload file $file" >> $LOGFILE
      fi
      echo "`date +%Y-%m-%d-%H:%M` Transfer of file $file failed, resscp=$resscp, resssh=$resssh" >> $LOGFILE
      # Also to stdout to get an email from cron
      echo "`date +%Y-%m-%d-%H:%M` Transfer of file $file failed, resscp=$resscp, resssh=$resssh"
    fi
  fi
done

if [ -d to_ftp ] ; then
  cd to_ftp
  for file in */*/* ; do
    if [ -f $file ] ; then
      if [ $DIRECT_FTP -eq 1 ] ; then
        if [ $VERBOSE -ne 0 ] ; then
          echo "`date +%Y-%m-%d-%H:%M` Starting transfer to fpcftp of file $file" >> $LOGFILE
        fi
        scp -p $file fpcftp:ftp/snapshot/$file >> $LOGFILE 2>&1
        resscp=$?
        if [ $resscp -eq 0 ] ; then
          if [ $VERBOSE -ne 0 ] ; then
            echo "`date +%Y-%m-%d-%H:%M` Transfer of $file succeeded" >> $LOGFILE
          fi
          rm $file
        else
          echo "Transfer to fpcftp failed, res=$resscp" >> $LOGFILE
        fi
      else
        resscp=1
      fi
      if [ $resscp -ne 0 ] ; then
        if [ $VERBOSE -ne 0 ] ; then
          echo "`date +%Y-%m-%d-%H:%M` Starting transfer to $GCC_HOST of file $file" >> $LOGFILE
        fi
        dir=`dirname $file`
        ssh $GCC_HOST mkdir -p $GCC_UPLOAD_DIR/$dir >> $LOGFILE 2>&1
        scp -p $file $GCC_HOST:$GCC_UPLOAD_DIR/$file >> $LOGFILE 2>&1
        resscp=$?
        if [ $resscp -eq 0 ] ; then
          if [ $VERBOSE -ne 0 ] ; then
            echo "`date +%Y-%m-%d-%H:%M` Transfer to $GCC_HOST of $file succeeded" >> $LOGFILE
          fi
          rm $file
        fi
      fi
    fi
  done
  cd ..
fi

