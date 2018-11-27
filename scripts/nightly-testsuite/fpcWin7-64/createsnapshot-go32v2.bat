@echo off
set FPCLOG=go32v2-log.txt
set CROSSOPT=-XPi386-go32v2-
set FPCBIN=ppcross386.exe
set FPC_SNAPSHOT_TARGET_OS=go32v2
set MAKECMD=make --debug=j distclean distclean crosszipinstall OS_TARGET=go32v2 CPU_TARGET=i386 BUILDFULLNATIVE=1
call create-common.bat %1 %2 %3 %4 %5 %6 %7 %8 %9
