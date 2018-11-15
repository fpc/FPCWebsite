@echo off

set FPCDRIVE=e:
set PASWDIR=e:\pas
set FPCWDIR=%PASWDIR%\trunk
set FPCVERSION=3.3.1
set FPCFULLTARGET=i386-win32
set CYGWINWBINDIR=e:\cygwin-32\bin
set RMPROG=%CYGWINWBINDIR%\rm.exe
set TEST_USER=pierre
set TEST_HOSTNAME=fpcWin7-64
set TEST_BENCH=1
set TEST_USE_LONGLOG=1


cd %FPCDRIVE%
cd %FPCWDIR%
set FPCSRCDIR=.
set FPCSRCWDIR=%FPCWDIR%
if exist fpcsrc set FPCSRCDIR=fpcsrc
if exist fpcsrc set FPCSRCWDIR=%FPCWDIR%\fpcsrc

set TESTALLLOG=%FPCSRCWDIR%\tests\test-all.log
set TESTALLERR=%FPCSRCWDIR%\tests\test-all.err

date /T > %TESTALLLOG%
time /T >> %TESTALLLOG%
date /T > %TESTALLERR%
time /T >> %TESTALLERR%

echo Starting env is >> %TESTALLLOG%
set >> %TESTALLLOG%


gdate +%%Y:%%m:%%d-%%H:%%M:%%S >> %TESTALLLOG%
gdate +%%Y:%%m:%%d-%%H:%%M:%%S >> %TESTALLERR%
echo "Running svp cleanup and svn up"
echo "Running svp cleanup and svn up" >> %TESTALLLOG%
svn cleanup
svn up --non-interactive --accept theirs-conflict >> %TESTALLLOG%

echo Calling %PASWDIR%\fpc-%FPCVERSION%\bin\%FPCFULLTARGET%\setpath.bat
echo Calling %PASWDIR%\fpc-%FPCVERSION%\bin\%FPCFULLTARGET%\setpath.bat >> %TESTALLLOG%
echo Calling %PASWDIR%\fpc-%FPCVERSION%\bin\%FPCFULLTARGET%\setpath.bat >> %TESTALLERR%
call %PASWDIR%\fpc-%FPCVERSION%\bin\%FPCFULLTARGET%\setpath.bat >> %TESTALLLOG% 2>> %TESTALLERR%
echo After call %PASWDIR%\fpc-%FPCVERSION%\bin\%FPCFULLTARGET%\setpath.bat
echo After call %PASWDIR%\fpc-%FPCVERSION%\bin\%FPCFULLTARGET%\setpath.bat, env is >> %TESTALLLOG%
set >> %TESTALLLOG%

gdate +%%Y:%%m:%%d-%%H:%%M:%%S
gdate +%%Y:%%m:%%d-%%H:%%M:%%S >> %TESTALLLOG%
gdate +%%Y:%%m:%%d-%%H:%%M:%%S >> %TESTALLERR%

cd %FPCDRIVE%
cd %FPCSRCWDIR%
echo Starting call makeallinst.bat
echo Starting call makeallinst.bat  >> %TESTALLLOG%
echo Starting call makeallinst.bat  >> %TESTALLERR%
call makeallinst.bat  >> %TESTALLLOG% 2>> %TESTALLERR%
taskkill /F /T  /IM ntvdm.exe
echo Finished call makeallinst.bat
echo Finished call makeallinst.bat  >> %TESTALLLOG%
echo Finished call makeallinst.bat  >> %TESTALLERR%
gdate +%%Y:%%m:%%d-%%H:%%M:%%S
gdate +%%Y:%%m:%%d-%%H:%%M:%%S >> %TESTALLLOG%
gdate +%%Y:%%m:%%d-%%H:%%M:%%S >> %TESTALLERR%

rem Explicitly set current dir again completely

cd %FPCDRIVE%
cd %FPCSRCWDIR%
cd tests

rem echo call test-win32.bat
rem echo call test-win32.bat >> %TESTALLLOG%
rem echo call test-win32.bat >> %TESTALLERR%
rem call test-win32.bat >> %TESTALLLOG% 2>> %TESTALLERR%
rem taskkill /F /T  /IM ntvdm.exe
rem gdate +%%Y:%%m:%%d-%%H:%%M:%%S
rem gdate +%%Y:%%m:%%d-%%H:%%M:%%S >> %TESTALLLOG%
rem gdate +%%Y:%%m:%%d-%%H:%%M:%%S >> %TESTALLERR%
echo call test-go32v2-msdos.bat upload
echo call test-go32v2-msdos.bat upload >> %TESTALLLOG%
echo call test-go32v2-msdos.bat upload >> %TESTALLERR%
call test-go32v2-msdos.bat upload >> %TESTALLLOG% 2>> %TESTALLERR%
rem taskkill /F /T  /IM ntvdm.exe
gdate +%%Y:%%m:%%d-%%H:%%M:%%S
gdate +%%Y:%%m:%%d-%%H:%%M:%%S >> %TESTALLLOG%
gdate +%%Y:%%m:%%d-%%H:%%M:%%S >> %TESTALLERR%
echo call test-msdos-msdos.bat
echo call test-msdos-msdos.bat >> %TESTALLLOG%
echo call test-msdos-msdos.bat >> %TESTALLERR%
call test-msdos-msdos.bat >> %TESTALLLOG% 2>> %TESTALLERR%
rem taskkill /F /T  /IM ntvdm.exe

echo test-all.bat ended at >> %TESTALLLOG%
gdate +%%Y:%%m:%%d-%%H:%%M:%%S >> %TESTALLLOG%
echo test-all.bat ended at
gdate +%%Y:%%m:%%d-%%H:%%M:%%S
echo test-all.bat ended at >> %TESTALLERR%
gdate +%%Y:%%m:%%d-%%H:%%M:%%S >> %TESTALLERR%

