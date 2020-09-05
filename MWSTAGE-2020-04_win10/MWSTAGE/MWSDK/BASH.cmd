@echo off

rem Get DIR where this CMD file is.
SET WD=%~dp0
SET WDS=%WD:\=/%
SET RD=.

SET PATH=
SET PATH=%WD%Tools\ba-elf-ba2-r36379\ba-elf\bin;%PATH%
SET PATH=%WD%Tools\ba-elf-ba2-r36379\bin;%PATH%
SET PATH=%WD%Tools\MinGW\bin;%WD%Tools\MinGW\msys\1.0\bin;%PATH%

SET MWSDK=1
SET MWSDK_ROOT=%WDS%
SET HOME=%WD%

cd /D %WD%\%RD%
%WD%Tools\MinGW\msys\1.0\bin\bash.exe
GOTO _End

:_Err
echo PLEASE RUN ON MWSDK TOP DIRECTORY...
PAUSE
GOTO _End

:_End
