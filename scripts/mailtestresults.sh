#!/bin/sh

PATH=${PATH}:~/scripts
WORKDIR=~/testsuite_wrk
PROCTESTSUITEDIFF=/FPC/html/scripts/proctestsuitediff

cd ${WORKDIR}

. readcfg.sh

readcfg .`basename $0 .sh`.cfg

datename=`date +%Y-%m-%d`

cat > tests_mail << EOF
Subject: Daily test suite diffs ($datename)
From: FPC Testsuite Diff Cron <fpc@freepascal.org>
To: FPC Core HQ <core@freepascal.org>

EOF
mysql -vvv -u ${USERNAME} --password=${PASSWORD} TESTSUITE -e "
SELECT (TU_FAILEDTOCOMPILE+TU_FAILEDTOFAIL+TU_FAILEDTORUN) as FAILS,DATE(TU_DATE) as DATE,TESTVERSION.TV_VERSION as VERSION,TESTOS.TO_NAME as OS,TESTCPU.TC_NAME as CPU,TU_SUBMITTER as TESTER,TU_MACHINE as MACHINE,TU_COMMENT as COMMENT 
FROM TESTRUN LEFT JOIN (TESTCPU) ON (TU_CPU_FK=TC_ID) LEFT JOIN (TESTOS) ON (TU_OS_FK=TO_ID) LEFT JOIN (TESTVERSION) ON (TU_VERSION_FK=TV_ID) 
WHERE (CURDATE()=DATE(TU_DATE)) OR (DATE_SUB(CURDATE(), INTERVAL 1 DAY)=DATE(TU_DATE)) 
ORDER BY VERSION, OS, CPU, TESTER, COMMENT, DATE;" | $PROCTESTSUITEDIFF >> tests_mail
/usr/sbin/sendmail -f ${MAILFROM} ${MAILTO} < tests_mail >/dev/null 2>&1
