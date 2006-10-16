#!/bin/sh

# Read configuration file
readfile() {
 while true
  do
   read namestr valstr
   if [ $? -ne 0 ] ; then
    break
   fi
   if [ ".$namestr" != "." -a ".$valstr" != "." ] ; then
    eval $namestr=$valstr
    export $namestr
   fi
  done
}

readcfg() {
 if [ $# -gt 0 ] ; then
  readfile < $1
 fi
}

