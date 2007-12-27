#!/bin/sh

PROCTESTSUITEDIFF=/FPC/testsuite/bin/proctestsuitediff
MAILDIR=/FPC/testsuite/mail
CFGFILE=$MAILDIR/mailtestresults.cfg

cd $MAILDIR

. $CFGFILE

datename=`date +%Y-%m-%d`

cat > tests_mail << EOF
Subject: Daily test suite diffs ($datename)
From: "FPC Testsuite Diff Cron" <fpc@freepascal.org>
To: "FPC Core Developer List" <core@freepascal.org>

EOF
mysql -vvv -u ${USERNAME} --password=${PASSWORD} TESTSUITE -e '
SELECT (TU_FAILEDTOCOMPILE+TU_FAILEDTOFAIL+TU_FAILEDTORUN) as FAILS,DATE(TU_DATE) as DATE,TESTVERSION.TV_VERSION as VERSION,TESTOS.TO_NAME as OS,TESTCPU.TC_NAME as CPU,TU_SUBMITTER as TESTER,TU_MACHINE as MACHINE,TU_COMMENT as COMMENT, TIME(TU_DATE) as TIME, TU_ID, GROUP_CONCAT(TR_TEST_FK)
FROM TESTRUN LEFT JOIN (TESTCPU) ON (TU_CPU_FK=TC_ID) LEFT JOIN (TESTOS) ON (TU_OS_FK=TO_ID) LEFT JOIN (TESTVERSION) ON (TU_VERSION_FK=TV_ID) LEFT JOIN TESTRESULTS ON (TR_TESTRUN_FK=TU_ID)
WHERE (DATE_SUB(CURDATE(), INTERVAL 2 DAY)<=DATE(TU_DATE)) AND TR_OK<>"+" AND TR_SKIP<>"+"
GROUP BY TU_ID
ORDER BY VERSION, OS, CPU, TESTER, MACHINE, COMMENT, DATE;' | tee mysql-output | $PROCTESTSUITEDIFF >> tests_mail
/usr/sbin/sendmail -f ${MAILFROM} ${MAILTO} < tests_mail >/dev/null 2>&1
