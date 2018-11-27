@echo off
set FPCLOG=win32-log.txt
set FPC_SNAPSHOT_TARGET_OS=win32
set MAKECMD=make distclean distclean zipinstall OS_TARGET=win32 CPU_TARGET=i386
set FPCBIN=ppc386.exe
call create-common.bat %1 %2 %3 %4 %5 %6 %7 %8 %9
