@echo off
set FPCLOG=go32v2-log.txt
set MAKECMD=make distclean distclean singlezipinstall OS_TARGET=go32v2
call create-common.bat %1 %2 %3 %4 %5 %6 %7 %8 %9
