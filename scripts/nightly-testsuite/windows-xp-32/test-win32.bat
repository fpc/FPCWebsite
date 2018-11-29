echo Running tests for win32 target
set TARGET=win32
set TEE=d:\cygwin\bin\tee.exe
set TEST_USER=pierre
set TEST_HOSTNAME=windows-xp-32
set TEST_BENCH=1
set TEST_USE_LONGLOG=1
set FPC=
set TEST_FPC=

make -C ../rtl distclean OS_TARGET=%TARGET%
make -C ../packages distclean OS_TARGET=%TARGET%
rem Recompile native rtl and packages, required to be able to compile fpmkunit bootstrap
make -C ../rtl distclean all OPT="-n -gwl"
make -C ../packages distclean all OPT="-n -gwl"

make distclean allexectests digest uploadrun TEST_FPC=ppc386 TEST_OS_TARGET=%TARGET% TEST_HOSTNAME=%TEST_HOSTNAME% TEST_BINUTILSPREFIX= | %TEE% %TARGET%.log 2> %TARGET%.errlog
