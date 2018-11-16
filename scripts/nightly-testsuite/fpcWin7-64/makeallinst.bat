@echo off
rem set RMPROG=e:/cygwin-32/bin/rm.exe
if "X%MAKE%" == "X" set MAKE=make

set EXTRAOPT=
rem set EXTRAOPT=-Oonopeephole
rem hopefully not needed anymore
rem -Criot

if "X%SVNDIRNAME%" == "X" set SVNDIRNAME=trunk
e:
cd \pas\%SVNDIRNAME%
gecho -n "set CPU=" > getcpu.bat
fpc -iSP >> getcpu.bat
call getcpu.bat
if "%CPU%" == "x86_64" goto amd64
goto i386
:amd64
set TARGETDIR=x86_64-win64
set PPC=ppcx64
set MAKEOPT="BINUTILSPREFIX=x86_64-win64- -gw"
rem set EXTRAOPT=-Oonopeephole
goto normal
:i386
set TARGETDIR=i386-win32
set PPC=ppc386
set MAKEOPT=
:normal
if "%1" == "-runtests" goto setruntests
goto next
:setruntests
set RUNTESTS=1
shift
:next
if "%1" == "-svnup" goto setsvnup
goto next2
:setsvnup
set RUNSVNUP=1
shift
:next2
if "%1" == "-upload" goto setupload
goto next3
:setupload
set UPLOAD=1
shift
:next3

if not "%RUNSVNUP%" == "1" goto pastsvnup
svn up
:pastsvnup

if exist fpcsrc cd fpcsrc

%MAKE% -C ./compiler distclean cycle DEBUG=1 OPT="-n %EXTRAOPT%" COPYTREE=echo %MAKEOPT% %1 %2 %3 %4 %5 %6
if ERRORLEVEL 1 goto cyclefailed
gecho -n "set FPC_VER=" > getfpcver.bat
.\compiler\%PPC% -iV >> getfpcver.bat
call getfpcver.bat
%MAKE% -C ./compiler distclean fullcycle fullinstall rtlinstall DEBUG=1 OPT="-n %EXTRAOPT%" INSTALL_PREFIX=e:/pas/fpc-%FPC_VER% COPYTREE=echo %MAKEOPT% %1 %2 %3 %4 %5 %6
%MAKE%  DEBUG=1 distclean install OPT="-n %EXTRAOPT%" INSTALL_PREFIX=e:/pas/fpc-%FPC_VER% COPYTREE=echo %MAKEOPT% %1 %2 %3 %4 %5 %6
if ERRORLEVEL 1 goto installfailed
set BINDIR=e:/pas/fpc-%FPC_VER%/bin/%TARGETDIR%
cd .\ide
%MAKE% GDBMI=1 DEBUG=1 OPT="-n %EXTRAOPT%" distclean install INSTALL_PREFIX=e:/pas/fpc-%FPC_VER% COPYTREE=echo %MAKEOPT% %1 %2 %3 %4 %5 %6
cp .\bin\%TARGETDIR%\fp.exe e:\pas\fpc-%FPC_VER%\bin\%TARGETDIR%\fpmi.exe
cd ..\.
if "%RUNTESTS%" == "1" goto runtests
goto runppudumptest
:runtests
cd .\tests
%MAKE% distclean allexectests TEST_FPC=%BINDIR%/%PPC% TEST_VERBOSE=1 TEST_BENCH=1
if "X%UPLOAD%" == "X1" %MAKE% uploadrun TEST_FPC=%BINDIR%/%PPC%
%MAKE% distclean allexectests TEST_FPC=%BINDIR%/%PPC% TEST_OPT=-Xe
if "X%UPLOAD%" == "X1" %MAKE% uploadrun TEST_FPC=%BINDIR%/%PPC% TEST_OPT=-Xe
:runppudumptest
cd \pas\%SVNDIRNAME%
if exist fpcsrc cd fpcsrc
cd compiler
%MAKE% testppudump
if ERRORLEVEL 1 goto ppudumperr

goto end
:cyclefailed
echo Cycle failed to complete successfully
goto end
:installfailed
echo Install failed to complete successfully
:ppudumperr
echo Error inside testppudump
goto end

:end
set BINDIR=
set MAKEOPT=
set PPC=
set RUNSVNUP=
set RUNTESTS=
set TARGETDIR=
set UPLOAD=
cd \pas\%SVNDIRNAME%
