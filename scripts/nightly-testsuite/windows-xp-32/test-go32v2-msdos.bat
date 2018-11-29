@echo off
echo Testing go32v2 target with msdos emulator

if not exist go32v2-results mkdir go32v2-results

set INSTALL_PREFIX=e:/pas/fpc-3.3.1
set BINDIR=%INSTALL_PREFIX%/bin/i386-win32/
set CYGWINBINDIR=d:\cygwin\bin
set EMULATOR=e:/pas/fpc-3.0.2/bin/i386-win32/msdos_i486.exe
set V=1
set SINGLEDOTESTRUNS=1
set TEST_BINDIR=ppc386.exe
set TEST_OS_TARGET=go32v2
set TEST_HOSTNAME=windows-xp-32
set TEST_USER=pierre
set TEST_USE_LONGLOG=1
set TEST_BINUTILSPREFIX=i386-go32v2-
set TEST_VERBOSE=1
set TEST_BENCH=1
goto alltests


:onetest
echo TESTNAME is %TESTNAME%
mkdir %TEST_OS_TARGET%-results\%TESTNAME%
echo OPTS_EXTRA is %OPTS_EXTRA%
%CYGWINBINDIR%\rm.exe -Rf output-%TESTNAME%

set INFO=compiling %TEST_OS_TARGET% rtl
set LOG=%TEST_OS_TARGET%-results\%TESTNAME%\rtl.log
make -C ../rtl clean FPC=%BINDIR%%TEST_BINDIR% OS_TARGET=%TEST_OS_TARGET% > %LOG%
if errorlevel 1 goto error
set INFO=compiling %TEST_OS_TARGET% packages
set LOG=%TEST_OS_TARGET%-results\%TESTNAME%\packages.log
make -C ../packages clean FPC=%BINDIR%%TEST_BINDIR% OS_TARGET=%TEST_OS_TARGET% > %LOG%
if errorlevel 1 goto error
rem Recompile native rtl and packages, required to be able to compile fpmkunit bootstrap
set INFO=compiling win32 rtl
set LOG=%TEST_OS_TARGET%-results\%TESTNAME%\nat-rtl.log
make -C ../rtl distclean all install OPT="-n -gwl" > %LOG%
if errorlevel 1 goto error
set INFO=compiling win32 packages
set LOG=%TEST_OS_TARGET%-results\%TESTNAME%\nat-packages.log
make -C ../packages distclean all install OPT="-n -gwl" > %LOG%
if errorlevel 1 goto error
set INFO=running %TEST_OS_TARGET% distclean in testsuite
make distclean EMULATOR=%EMULATOR% TEST_FPC=%BINDIR%%TEST_BINDIR% TEST_OS_TARGET=%TEST_OS_TARGET% TEST_OPT="%OPTS_EXTRA%" DOTESTOPT=-X
if errorlevel 1 goto error
set INFO=running %TEST_OS_TARGET% allexectests in testsuite
set LOG=%TEST_OS_TARGET%-results\%TESTNAME%\tests.log
make allexectests EMULATOR=%EMULATOR% TEST_FPC=%BINDIR%%TEST_BINDIR% TEST_OS_TARGET=%TEST_OS_TARGET% TEST_OPT="%OPTS_EXTRA%" DOTESTOPT=-X 2>&1 1> %LOG%
if errorlevel 1 goto error
set INFO=running %TEST_OS_TARGET% uploadrun in testsuite
make uploadrun EMULATOR=%EMULATOR% TEST_FPC=%BINDIR%%TEST_BINDIR% TEST_OS_TARGET=%TEST_OS_TARGET% TEST_HOSTNAME=%TEST_HOSTNAME%  TEST_OPT="%TEST_COMMENT% %OPTS_EXTRA%" DOTESTOPT=-X >> %LOG%
copy /y output\%TEST_OS_TARGET%\faillist %TEST_OS_TARGET%-results\%TESTNAME%\faillist
copy /y output\%TEST_OS_TARGET%\log %TEST_OS_TARGET%-results\%TESTNAME%\log
copy /y output\%TEST_OS_TARGET%\longlog %TEST_OS_TARGET%-results\%TESTNAME%\longlog
move output output-%TESTNAME%
goto :endok
:error
echo Error while %INFO%
exit
:endok
goto :eof


:alltests
SET FPC=ppc386
set BASE_OPTS=-Fle:/djgpp/lib -Fle:/djgpp/lib/gcc/djgpp/6.10
set TESTNAME=go32v2-with-msdos-emulator
set TEST_COMMENT=Using msdos.exe emulator
set OPTS_EXTRA=%BASE_OPTS%
call :onetest
rem goto done

SET FPC=ppc386
set EMULATOR=
set BASE_OPTS=-Fle:/djgpp/lib -Fle:/djgpp/lib/gcc/djgpp/6.10
set TESTNAME=go32v2-without-emulator
set TEST_COMMENT=Using Windows integrated ntvdm.exe emulator
set OPTS_EXTRA=%BASE_OPTS%
call :onetest

:done
set TESTNAME=
set BASE_OPT=
set FPC=
set LOG=
set TEST_BINDIR=
set TEST_OS_TARGET=
set TEST_HOSTNAME=
set TEST_BINUTILSPREFIX=
set TEST_VERBOSE=
set TEST_BENCH=

%CYGWINBINDIR%\wc -l %TEST_OS_TARGET%-results/*/faillist
