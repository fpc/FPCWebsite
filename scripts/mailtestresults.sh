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
/FPC/testsuite/bin/proctestsuitediff >> tests_mail
#
#
/usr/sbin/sendmail -f ${MAILFROM} ${MAILTO} < tests_mail >/dev/null 2>&1
