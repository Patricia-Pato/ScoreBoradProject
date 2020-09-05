@echo off

rem Get DIR where this CMD file is.
SET WD=%~dp0
SET WDS=%WD:\=/%
SET RD=.
SET RN=cmd.exe

SET PATH=
SET PATH=%WD%Tools\ba-elf-ba2-r36379\ba-elf\bin;%PATH%
SET PATH=%WD%Tools\ba-elf-ba2-r36379\bin;%PATH%
SET PATH=%WD%Tools\MinGW\msys\1.0\bin;%PATH%

SET MWSDK=1

cd /D %WD%\%RD%
start %RN%
ECHO LAUNCHED ECLIPSE
GOTO _End

:_Err
echo PLEASE RUN ON MWSDK TOP DIRECTORY...
PAUSE
GOTO _End

:_End
