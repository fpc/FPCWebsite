#!/bin/sh
# Script to create search database.
#
# Binary
#
DOCINDEXER=$HOME/docindexer

#
# Base dir
#
BASEDIR=../docs-html/current

#
# Path to strip off in results.
#
STRIPPATH=/home/FPC/html/docs-html/current/

#
# Config file with DB parameters
#
CONFIG=/etc/docsearch.ini

#
# Additional options
# -e : clear database
# -p : code page 
# Add -r if you want to create the database initially. (user needs createDB rights)
#

OPTS="-e -p iso-8859-1"
#
# Go forth and populate !
#
exec "$DOCINDEXER" -c "$CONFIG" $OPTS -d "$BASEDIR/fpdoc/" -d "$BASEDIR/user/" -d "$BASEDIR/ref/" -d "$BASEDIR/prog/" -s "$STRIPPATH"

#
# That's all folks !
#


