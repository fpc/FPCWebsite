@echo off
set FPC_RELEASE_TARGET=i386-win32
set FPC_SNAPSHOT_TARGET_OS=msdos
set CROSSOPT=-CX -XX -WmSmall
set MAKECMD=make distclean distclean crosszipinstall OS_TARGET=msdos CPU_TARGET=i8086
set FPCBIN=ppcross8086.exe
set FPCVARIANT=WmSmall
set FPCVARIANTEXPLANATION=Snapshot generated for Small memory model
call create-common.bat %1 %2 %3 %4 %5 %6 %7 %8 %9

