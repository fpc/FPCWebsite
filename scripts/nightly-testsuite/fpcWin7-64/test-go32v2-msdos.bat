echo Testing msdos with msdos emulator
mkdir msdos-results

if "X%FPCVERSION%" == "X" set FPCVERSION=3.3.1
if "X%SVNDIRNAME%" == "X" set SVNDIRNAME=trunk

set BINDIR=e:/pas/fpc-%FPCVERSION%/bin/i386-win32/
set CYGWINBINDIR=e:\cygwin-32\bin
set EMULATOR=e:/pas/fpc-3.0.0/bin/i386-win32/msdos.exe
set V=1
set SINGLEDOTESTRUNS=1
set TEST_BINDIR=ppc386.exe
set TEST_HOSTNAME=fpcWin7-64
set TEST_BENCH=1
set TEST_OS_TARGET=go32v2
set TEST_BINUTILSPREFIX=i386-go32v2-
set DOUPLOAD=0
if "X%1" == "Xupload" set DOUPLOAD=1

set FPCDRIVE=e:
set FPCDIR=%FPCDRIVE%/pas/%SVNDIRNAME%/fpcsrc
set FPCWDIR=%FPCDRIVE%\pas\%SVNDIRNAME%\fpcsrc


%FPCDRIVE%
cd %FPCWDIR%

goto alltests


:onetest
echo TESTNAME is %TESTNAME%
mkdir %TEST_OS_TARGET%-results\%TESTNAME%
set LOG=%TEST_OS_TARGET%-results\%TESTNAME%\tests.log
echo OPTS_EXTRA is %OPTS_EXTRA%
make -C ../rtl clean FPC=%BINDIR%%TEST_BINDIR% OS_TARGET=%TEST_OS_TARGET%
make -C ../packages clean FPC=%BINDIR%%TEST_BINDIR% OS_TARGET=%TEST_OS_TARGET%
make distclean EMULATOR=%EMULATOR% TEST_FPC=%BINDIR%%TEST_BINDIR% TEST_OS_TARGET=%TEST_OS_TARGET% TEST_OPT="%OPTS_EXTRA%" DOTESTOPT=-X
make allexectests EMULATOR=%EMULATOR% TEST_FPC=%BINDIR%%TEST_BINDIR% TEST_OS_TARGET=%TEST_OS_TARGET% TEST_OPT="%OPTS_EXTRA%" DOTESTOPT=-X 2>&1 1> %LOG%
if "X%DOUPLOAD%" == "X0" goto afterupload
make uploadrun EMULATOR=%EMULATOR% TEST_FPC=%BINDIR%%TEST_BINDIR% TEST_OS_TARGET=%TEST_OS_TARGET% TEST_OPT="%OPTS_EXTRA%" DOTESTOPT=-X TEST_HOSTNAME=%TEST_HOSTNAME%
:afterupload
copy /y output\%TEST_OS_TARGET%\faillist %TEST_OS_TARGET%-results\%TESTNAME%\faillist
copy /y output\%TEST_OS_TARGET%\log %TEST_OS_TARGET%-results\%TESTNAME%\log
copy /y output\%TEST_OS_TARGET%\longlog %TEST_OS_TARGET%-results\%TESTNAME%\longlog
%CYGWINBINDIR%\rm -Rf output-%TESTNAME%
move output output-%TESTNAME%
goto :eof


:alltests
SET FPC=ppc386
set BASE_OPTS=-Fle:/djgpp/cvs/lib -Fle:/djgpp/cvs/lib/gcc/djgpp/3.44
set TESTNAME=go32v2-norm
set OPTS_EXTRA=%BASE_OPTS%
call :onetest
rem goto done

SET FPC=ppc386
set BASE_OPTS=-gsl -Fle:/djgpp/cvs/lib -Fle:/djgpp/cvs/lib/gcc/djgpp/3.44
set TESTNAME=go32v2-gsl
set OPTS_EXTRA=%BASE_OPTS%
call :onetest

:done
set TESTNAME=
set BASE_OPT=
set FPC=
set LOG=

%CYGWINBINDIR%\wc -l %TEST_OS_TARGET%-results/*/faillist
