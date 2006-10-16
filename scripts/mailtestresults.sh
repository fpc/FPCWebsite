#!/bin/sh

PATH=${PATH}:~/scripts
WORKDIR=~/testsuite_wrk

cd ${WORKDIR}

. readcfg.sh

readcfg .`basename $0`.cfg

datename=`date +%Y-%m-%d`
mysql -u ${USERNAME} --password=${PASSWORD} TESTSUITE -e "SELECT (TU_FAILEDTOCOMPILE+TU_FAILEDTOFAIL+TU_FAILEDTORUN) as FAILS,TESTVERSION.TV_VERSION as VERSION,TESTOS.TO_NAME as OS,TESTCPU.TC_NAME as CPU,TU_SUBMITTER as TESTER,TU_MACHINE as MACHINE,TU_COMMENT as COMMENT FROM TESTRUN LEFT JOIN (TESTCPU) ON (TU_CPU_FK=TC_ID) LEFT JOIN (TESTOS) ON (TU_OS_FK=TO_ID) LEFT JOIN (TESTVERSION) ON (TU_VERSION_FK=TV_ID) WHERE DATE_SUB(CURDATE(), INTERVAL 1 DAY)=DATE(TU_DATE);" > tests_yesterday
mysql -u ${USERNAME} --password=${PASSWORD} TESTSUITE -e "SELECT (TU_FAILEDTOCOMPILE+TU_FAILEDTOFAIL+TU_FAILEDTORUN) as FAILS,TESTVERSION.TV_VERSION as VERSION,TESTOS.TO_NAME as OS,TESTCPU.TC_NAME as CPU,TU_SUBMITTER as TESTER,TU_MACHINE as MACHINE,TU_COMMENT as COMMENT FROM TESTRUN LEFT JOIN (TESTCPU) ON (TU_CPU_FK=TC_ID) LEFT JOIN (TESTOS) ON (TU_OS_FK=TO_ID) LEFT JOIN (TESTVERSION) ON (TU_VERSION_FK=TV_ID) WHERE CURDATE()=DATE(TU_DATE);" > tests_today
diff --context tests_yesterday tests_today > tests_diff
echo "Subject: Daily test suite diffs ($datename)" > tests_mail
echo "" >> tests_mail
echo "----------------------- Tests diff today and yesterday ----------------------" >> tests_mail
cat tests_diff >> tests_mail
echo "------------------------------ Today's results ------------------------------" >> tests_mail
cat tests_today  >> tests_mail
echo "---------------------------- Yesterday's results ----------------------------" >> tests_mail
cat tests_yesterday >> tests_mail
/usr/sbin/sendmail -f fpc@freepascal.org core@freepascal.org < tests_mail >/dev/null 2>&1
