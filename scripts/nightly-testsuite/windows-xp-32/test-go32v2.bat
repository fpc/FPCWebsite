echo Running tests for go32v2 target
set TARGET=go32v2
set TEE=d:\cygwin\bin\tee.exe
set TEST_USER=pierre
set TEST_HOSTNAME=windows-xp-32
set TEST_BENCH=1
set INSTALL_PREFIX=e:/pas/fpc-3.3.1

set FPC=
set TEST_FPC=

set INFO=compiling %TARGET% rtl
make -C ../rtl distclean install OS_TARGET=%TARGET%
if errorlevel 1 goto error
set INFO=compiling %TARGET% packages
make -C ../packages distclean install OS_TARGET=%TARGET%
if errorlevel 1 goto error
rem Recompile native rtl and packages, required to be able to compile fpmkunit bootstrap
set INFO=compiling win32 rtl
make -C ../rtl distclean all install OPT="-n -gwl"
if errorlevel 1 goto error
set INFO=compiling win32 packages
make -C ../packages distclean all install OPT="-n -gwl"
if errorlevel 1 goto error
set INFO=running %TARGET% testsuite
make distclean allexectests digest uploadrun TEST_FPC=ppc386 TEST_OS_TARGET=%TARGET% TEST_HOSTNAME=%TEST_HOSTNAME% TEST_BINUTILSPREFIX=i386-go32v2- | %TEE% %TARGET%.log 2> %TARGET%.errlog
if errorlevel 1 goto error

goto end

:error
echo Error while %INFO%
