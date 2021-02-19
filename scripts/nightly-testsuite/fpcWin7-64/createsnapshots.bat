e:
if exist fpcsrc cd fpcsrc

e:\pas\fpc-3.0.4\bin\i386-win32\gecho -n "set START_DATE=" > setdate.bat
e:\pas\fpc-3.0.4\bin\i386-win32\gdate +%%Y-%%m-%%d-%%H-%%M >> setdate.bat
call setdate.bat

set GLOGFILE=log-%START_DATE%.txt
set GLOCKFILE=\pas\lock
set LASTGLOCKFILE=\pas\lock.last

:wait_lock
if not exist %GLOCKFILE% goto lock_ok
call wait.bat 10
goto wait_lock
:lock_ok
echo "Snapshot generation in progress for %WANTED_VERSION%" > %GLOCKFILE%
echo "Started at:" >> %GLOCKFILE%
e:\pas\fpc-3.0.4\bin\i386-win32\gdate +%%Y-%%m-%%d-%%H-%%M >> %GLOCKFILE%
e:\pas\fpc-3.0.4\bin\i386-win32\gecho -n "Starting at " > %GLOGFILE%
e:\pas\fpc-3.0.4\bin\i386-win32\gdate +%%Y-%%m-%%d-%%H-%%M >> %GLOGFILE%
call createsnapshot-win32.bat >> %GLOGFILE%
call createsnapshot-go32v2.bat >> %GLOGFILE%
call createsnapshot-win64.bat >> %GLOGFILE%
call createsnapshots-msdos.bat >> %GLOGFILE%
e:\pas\fpc-3.0.4\bin\i386-win32\gecho -n "Ending at " >> %GLOGFILE%
e:\pas\fpc-3.0.4\bin\i386-win32\gdate +%%Y-%%m-%%d-%%H-%%M >> %GLOGFILE%
echo "Ended at:" >> %GLOCKFILE%
e:\pas\fpc-3.0.4\bin\i386-win32\gdate +%%Y-%%m-%%d-%%H-%%M >> %GLOCKFILE%

copy /y %GLOCKFILE% %LASTGLOCKFILE%
del %GLOCKFILE%
