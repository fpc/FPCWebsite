@echo off
rem
rem Set defaults
rem
rem Default PSCP env variable
if "x%PSCP%" == "x" set PSCP=pscp
rem Default FPCBIN env variable
if "x%FPCBIN%" == "x" set FPCBIN=ppc386.exe
rem Default FPC_SOURCE_DRIVE env variable
if "x%FPC_SOURCE_DRIVE%" == "x" set FPC_SOURCE_DRIVE=e:
rem Default FPC_SOURCE_DIR env variable
if "x%DEFAULT_SUBDIR%" == "x" set DEFAULT_SUBDIR=trunk
if "x%FPC_SOURCE_DIR%" == "x" set FPC_SOURCE_DIR=%FPC_SOURCE_DRIVE%\pas\%DEFAULT_SUBDIR%
if exist %FPC_SOURCE_DIR%\fpcsrc set FPC_SOURCE_DIR=%FPC_SOURCE_DIR%\fpcsrc

rem Default FPC_RELEASE_VERSION env variable
if "x%FPC_RELEASE_VERSION%" == "x" set FPC_RELEASE_VERSION=3.0.4
rem Default FPC_RELEASE_TARGET env variable
if "x%FPC_RELEASE_TARGET%" == "x" set FPC_RELEASE_TARGET=i386-win32
if "x%FPC_SNAPSHOT_TARGET_OS%" == "x" set FPC_SNAPSHOT_TARGET_OS=win32
if "x%FPCLOG%" == "x" set FPCLOG=%FPCBIN%-%FPCVARIANT%-log.txt
set TEE=e:\cygwin-32\bin\tee.exe

rem Default MAKECMD env variable
if "x%MAKECMD%" == "x" set MAKECMD=make distclean distclean singlezipinstall
rem
rem Handle args
rem
set FPC_SKIP=
if not "%1" == "skip" goto noskip
set FPC_SKIP=1
shift
:noskip
if not "%1" == "skipupload" goto noskipupload
set FPC_SKIPUPLOAD=1
shift
:noskipupload
rem
rem Goto source directory
rem
cd %FPC_SOURCE_DRIVE%
cd %FPC_SOURCE_DIR%
set ADDRELEASEPATH=e:\pas\fpc-%FPC_RELEASE_VERSION%\bin\%FPC_RELEASE_TARGET%\setpath.bat
if not exist %ADDRELEASEPATH% goto norelease
rem
rem Put release binary as first in path
rem
call %ADDRELEASEPATH%
rem
rem Wait for lock
rem
:waitlock
set LOCKFILE=%FPC_SOURCE_DIR%\lock
if not exist %LOCKFILE% goto lockok
call wait.bat 10
goto waitlock
:lockok
echo Running %MAKECMD% > %LOCKFILE%
if "%FPC_SKIP%" == "1" goto skipmake
rem
rem Generate the install zip
rem
echo Creating snapshot zip file for %FPC_RELEASE_TARGET%
rem %MAKECMD% | %TEE% %FPCLOG%
%MAKECMD% > %FPCLOG% 2>&1
if ERRORLEVEL 1 goto makeerror
:skipmake
make info OS_TARGET=%FPC_SNAPSHOT_TARGET_OS% FPC=./compiler/%FPCBIN% >> %FPCLOG%
:upload
gecho -n "set FPC_SNAPSHOT_VERSION=" > setfpcver.bat
.\compiler\%FPCBIN% -iV >> setfpcver.bat
call setfpcver.bat
gecho -n "set FPC_SNAPSHOT_OS=" > setfpctos.bat
.\compiler\%FPCBIN% -T%FPC_SNAPSHOT_TARGET_OS% -iTO >> setfpctos.bat
call setfpctos.bat
gecho -n "set FPC_SNAPSHOT_SOURCE_OS=" > setfpcsos.bat
.\compiler\%FPCBIN% -iSO >> setfpcsos.bat
call setfpcsos.bat
gecho -n "set FPC_SNAPSHOT_CPU=" > setfpccpu.bat
.\compiler\%FPCBIN% -iTP >> setfpccpu.bat
call setfpccpu.bat
gecho -n "set FPC_SNAPSHOT_SOURCE_CPU=" > setfpcscpu.bat
.\compiler\%FPCBIN% -iSP >> setfpcscpu.bat
call setfpcscpu.bat
set FPC_SNAPSHOT_TARGET=%FPC_SNAPSHOT_CPU%-%FPC_SNAPSHOT_OS%
rem Use short version for go32v2 or msdos
if "%FPC_SNAPSHOT_OS%" == "go32v2" set FPC_SNAPSHOT_TARGET=%FPC_SNAPSHOT_OS%
if "%FPC_SNAPSHOT_OS%" == "msdos" set FPC_SNAPSHOT_TARGET=%FPC_SNAPSHOT_OS%
set ZIPFILE=fpc-%FPC_SNAPSHOT_VERSION%.%FPC_SNAPSHOT_TARGET%.zip
if exist fpc-%FPC_SNAPSHOT_VERSION%-beta.%FPC_SNAPSHOT_TARGET%.zip set ZIPFILE=fpc-%FPC_SNAPSHOT_VERSION%-beta.%FPC_SNAPSHOT_TARGET%.zip
if "x%FPCVARIANT%" == "x" goto defaultzip
set ZIPFILEONFTP=fpc-%FPC_SNAPSHOT_VERSION%-%FPCVARIANT%.%FPC_SNAPSHOT_TARGET%.zip
cp -f %ZIPFILE% %ZIPFILEONFTP%
set READMEONFTP=readme-%FPCVARIANT%.txt
goto setzipfiledone
:defaultzip
set ZIPFILEONFTP=%ZIPFILE%
set READMEONFTP=readme.txt
:setzipfiledone
gecho -n "This snapshot was generated " > %READMEONFTP%
gdate +%%Y-%%m-%%d >> %READMEONFTP%
gecho -n "Using svn revision " >> %READMEONFTP%
svnversion -c . >> %READMEONFTP%
gecho "Executables are compiled using %FPC_SNAPSHOT_SOURCE_OS%" %FPCBIN% compiler >> %READMEONFTP%
gecho "Executables are compiled for OS %FPC_SNAPSHOT_TARGET%" >> %READMEONFTP%
gecho "The file %ZIPFILEONFTP% was generated using this command:" >> %READMEONFTP%
echo %MAKECMD% >> %READMEONFTP%
if not "x%FPCVARIANTEXPLANATION%" == "x" gecho "%FPCVARIANTEXPLANATION%" >> %READMEONFTP%
gecho >> %READMEONFTP%
gecho "Pierre Muller" >> %READMEONFTP%
gecho >> %READMEONFTP%
gecho "Full information, svn info . output:" >> %READMEONFTP%
svn info . >> %READMEONFTP%
echo Using pscp to upload %ZIPFILE%
if "%FPC_SKIPUPLOAD" == "1" set PSCP=echo pscp
%PSCP% -p -load fpcftp  %ZIPFILEONFTP% %READMEONFTP% ftpmaster.freepascal.org:ftp/snapshot/%DEFAULT_SUBDIR%/%FPC_SNAPSHOT_TARGET%/ >> %FPCLOG%
if ERRORLEVEL 1 goto pscperror
:noupload
goto end
:makeerror
echo Creating snapshot failed, see %FPCLOG% for details
echo "Running make info OS_TARGET=%FPC_SNAPSHOT_TARGET_OS% FPC=./compiler/%FPCBIN% >> %FPCLOG%"
make info OS_TARGET=%FPC_SNAPSHOT_TARGET_OS% FPC=./compiler/%FPCBIN% >> %FPCLOG%
goto end
:norelease
echo Creating snapshot failed, no %ADDRELEASEPATH% batch file found
goto end
:pscperror
echo Error while uploading snapshot file
:end
rm -f %LOCKFILE%
set FPC_RELEASE_VERSION=
set FPC_RELEASE_TARGET=
set FPC_SOURCE_DRIVE=
set FPC_SOURCE_DIR=
set CROSSOPT=
set MAKECMD=
set FPCBIN=
set FPCVARIANT=
set FPCVARIANTEXPLANATION=
set FPCLOG=
set FPC_SKIPUPLOAD=
set PSCP=
set FPC_SKIP=
