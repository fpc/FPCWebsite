#!/usr/bin/env bash

DB_HOST=fpc@www.freepascal.org
DB_UPLOADDIR=testsuite/incoming
DB_SSH_EXTRA="-i $HOME/.ssh/old-freepascal"

UPLOADDIR=$HOME/logs/to_upload
LOGFILE=$UPLOADDIR/logfile
cd $UPLOADDIR

for file in *.tar.gz ; do
  if [ -f "$file" ] ; then
    echo "`date +%Y-%m-%d-%H:%M` Trying to upload file $file" >> $LOGFILE
    t_ok=0
    scp -q ${DB_SSH_EXTRA} ${file} ${DB_HOST}:${DB_UPLOADDIR}/${file}.part >> $LOGFILE 2>&1
    resscp=$?
    if [ $resscp -eq 0 ] ; then
      ssh ${DB_SSH_EXTRA} ${DB_HOST} "mv ${DB_UPLOADDIR}/${file}.part ${DB_UPLOADDIR}/${file}" >> $LOGFILE 2>&1
      resssh=$?
      if [ $resssh -eq 0 ] ; then
        t_ok=1
      fi
    fi
    if [ $t_ok -eq 1 ] ; then
      echo "`date +%Y-%m-%d-%H:%M` Transfer of $file succeeded" >> $LOGFILE
      rm -f $file
    else
      echo "`date +%Y-%m-%d-%H:%M` Transfer of file $file failed, resscp=$resscp, resssh=$resssh"
    fi
  fi
done


