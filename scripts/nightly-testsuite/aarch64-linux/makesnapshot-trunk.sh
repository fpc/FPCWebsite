#!/usr/bin/env bash

. $HOME/bin/fpc-versions.sh

export FIXES=1
$HOME/bin/makesnapshot-common.shENDIAN=`readelf -h /bin/sh | grep endian`
