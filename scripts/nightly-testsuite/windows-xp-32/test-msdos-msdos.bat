@echo off
echo Testing msdos with msdos emulator
if not exist msdos-results mkdir msdos-results

set INSTALL_PREFIX=e:/pas/fpc-3.3.1
set BINDIR=%INSTALL_PREFIX%/bin/i386-win32/
set CYGWINBINDIR=d:\cygwin\bin
set RMPROG=d:/cygwin/bin/rm.exe
set EMULATOR=e:/pas/fpc-3.0.2/bin/i386-win32/msdos_i486.exe
set DOSBOX_NO_TEMPDIR=1
set DOSBOX_VERBOSE=1
set V=1
set SINGLEDOTESTRUNS=1
set TEST_VERBOSE=1
set TEST_HOSTNAME=windows-xp-32
set TEST_USER=pierre
set TEST_BENCH=1
set TEST_BINUTILSPREFIX=
set TEST_OS_TARGET=msdos

set FPCDIR=e:/pas/trunk/fpcsrc
set FPCWDIR=e:\pas\trunk\fpcsrc
set GLOBALLOG=%FPCWDIR%\tests\test-msdos-msdos.log
set NATLOG=%FPCWDIR%\tests\nat-win32.log
set NAT_FPC=%BINDIR%ppc386.exe
set CROSS_FPC=%BINDIR%ppc8086.exe


echo "I8086 tests starting"
echo "I8086 tests starting" > %GLOBALLOG%
echo "I8086 tests starting" > %NATLOG%

echo make -C ../rtl distclean install FPC=%NAT_FPC% OPT="-n -gwl" >> %NATLOG%
make -C ../rtl distclean install FPC=%NAT_FPC% OPT="-n -gwl" >> %NATLOG%
echo make -C ../packages distclean install FPC=%NAT_FPC% OPT="-n -gwl"  >> %NATLOG%
make -C ../packages distclean install FPC=%NAT_FPC% OPT="-n -gwl"  >> %NATLOG%

goto alltests



:onetest
echo TESTNAME is %TESTNAME%
echo TESTNAME is %TESTNAME%  >> %GLOBALLOG%
gdate >> %GLOBALLOG%
mkdir msdos-results\%TESTNAME%
%CYGWINBINDIR%\rm.exe -Rf output-%TESTNAME%
set LOG=msdos-results\%TESTNAME%\allexectests.log
echo OPTS_EXTRA is %OPTS_EXTRA%
echo OPTS_EXTRA is %OPTS_EXTRA%  >> %GLOBALLOG%
echo make -C ../rtl clean FPC=%CROSS_FPC% OPT="-n" >> %GLOBALLOG%
make -C ../rtl clean FPC=%CROSS_FPC% OPT="-n" > %LOG%
echo make -C ../packages clean FPC=%CROSS_FPC% OPT="-n -CX -XX"  >> %GLOBALLOG%
make -C ../packages clean FPC=%CROSS_FPC% OPT="-n -CX -XX"  >> %LOG%
echo make distclean EMULATOR=%EMULATOR% TEST_FPC=%CROSS_FPC% TEST_OPT="-CX -XX %OPTS_EXTRA%" DOTESTOPT=-X FPC=%NAT_FPC%  >> %GLOBALLOG%
make distclean EMULATOR=%EMULATOR% TEST_FPC=%CROSS_FPC% TEST_OPT="-CX -XX %OPTS_EXTRA%" DOTESTOPT=-X FPC=%NAT_FPC%  >> %LOG%
echo make allexectests EMULATOR=%EMULATOR% TEST_FPC=%CROSS_FPC% TEST_OPT="-CX -XX %OPTS_EXTRA%" DOTESTOPT=-X FPC=%NAT_FPC% >> %GLOBALLOG%
gdate >> %GLOBALLOG%
make allexectests EMULATOR=%EMULATOR% TEST_FPC=%CROSS_FPC% TEST_OPT="-CX -XX %OPTS_EXTRA%" DOTESTOPT=-X FPC=%NAT_FPC% >> %LOG%
if errorlevel 1 goto execerror
set LOG=msdos-results\%TESTNAME%\uploadrun.log
echo make uploadrun EMULATOR=%EMULATOR% TEST_FPC=%CROSS_FPC% TEST_OPT="-CX -XX %OPTS_EXTRA%" DOTESTOPT=-X FPC=%NAT_FPC% >> %GLOBALLOG%
gdate >> %GLOBALLOG%
make uploadrun EMULATOR=%EMULATOR% TEST_FPC=%CROSS_FPC% TEST_OPT="-CX -XX %OPTS_EXTRA%" DOTESTOPT=-X FPC=%NAT_FPC% TEST_HOSTNAME=%TEST_HOSTNAME% > %LOG%
copy /y output\msdos\faillist msdos-results\%TESTNAME%\faillist
copy /y output\msdos\log msdos-results\%TESTNAME%\log
copy /y output\msdos\longlog msdos-results\%TESTNAME%\longlog
move output output-%TESTNAME%
goto :eof
:execerror
copy /y output\msdos\faillist msdos-results\%TESTNAME%\faillist
copy /y output\msdos\log msdos-results\%TESTNAME%\log
copy /y output\msdos\longlog msdos-results\%TESTNAME%\longlog
move output output-%TESTNAME%
echo "make allexectest failed"
echo "make allexectest failed" >> %GLOBALLOG%
gdate >> %GLOBALLOG%
goto :eof


:alltests
gdate
gdate >> %GLOBALLOG%
set BASE_OPTS=-Cp80386 -Wmtiny
set TESTNAME=80386-tiny-Xi
set OPTS_EXTRA=%BASE_OPTS% -Xi
call :onetest
set BASE_OPTS=-Cp80386 -Wmsmall
set TESTNAME=80386-small
set OPTS_EXTRA=%BASE_OPTS%
call :onetest
set BASE_OPTS=-Cp80386 -Wmcompact
set TESTNAME=80386-compact
set OPTS_EXTRA=%BASE_OPTS%
call :onetest
set BASE_OPTS=-Cp80386 -Wmmedium
set TESTNAME=80386-medium
set OPTS_EXTRA=%BASE_OPTS%
call :onetest
set BASE_OPTS=-Cp80386 -Wmlarge
set TESTNAME=80386-large
set OPTS_EXTRA=%BASE_OPTS%
call :onetest
set BASE_OPTS=-Cp80386 -Wmhuge
set TESTNAME=80386-huge
set OPTS_EXTRA=%BASE_OPTS%
call :onetest
set TESTNAME=80386-tiny-Xe
set BASE_OPTS=-Cp80386 -Wmtiny
set OPTS_EXTRA=%BASE_OPTS% -Xe
call :onetest
set TESTNAME=80386-tiny-Xe-Anasm
set OPTS_EXTRA=%BASE_OPTS% -Xe -Anasm
call :onetest
set TESTNAME=
set BASE_OPT=
set FPC=

%CYGWINBINDIR%\wc.exe -l msdos-results/*/faillist
echo "I8086 tests finished"
gdate
%CYGWINBINDIR%\wc.exe -l msdos-results/*/faillist  >> %GLOBALLOG%
echo "I8086 tests finished"  >> %GLOBALLOG%
gdate >> %GLOBALLOG%

