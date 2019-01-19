#!/bin/bash

. ~/bin/fpc-versions.sh


logdir=~/logs

sed -e "1! s:trunk:branch:g" -e "1! s:3\.3\.1:fpc_version:g" $logdir/trunk/check-targets/list-all-target-trunk-checks.log > $logdir/list-all-target-trunk-checks.log
sed -e "1! s:fixes_3_2:branch:g"  -e "1! s:3\.2\.0:fpc_version:g" -e "1! s:fixes:branch:g" $logdir/fixes/check-targets/list-all-target-fixes-checks.log > $logdir/list-all-target-fixes-checks.log
diff $logdir/list-all-target-fixes-checks.log $logdir/list-all-target-trunk-checks.log > $logdir/fixes-to-trunk-checks-list-log.txt


sed -e "1! s:trunk:branch:g" -e "1! s:3\.3\.1:fpc_version:g" $logdir/trunk/check-targets/check-target-trunk-log.txt > $logdir/check-target-trunk-log.txt
sed -e "1! s:fixes_3_2:branch:g"  -e "1! s:3\.2\.0:fpc_version:g" -e "1! s:fixes:branch:g" $logdir/fixes/check-targets/check-target-fixes-log.txt > $logdir/check-target-fixes-log.txt
diff $logdir/check-target-fixes-log.txt $logdir/check-target-trunk-log.txt > $logdir/fixes-to-trunk-checks-full.txt

cat $logdir/fixes-to-trunk-checks-list-log.txt
