@echo off
set FPCLOG=win64-log.txt
set FPC_SNAPSHOT_TARGET_OS=win64
set MAKECMD=make distclean distclean crosszipinstall OS_TARGET=win64 CPU_TARGET=x86_64
set FPCBIN=ppcrossx64.exe
call create-common.bat %1 %2 %3 %4 %5 %6 %7 %8 %9
