@ECHO OFF
set wrkdir="%cd%\Server-Files"
IF "%1"=="f" GOTO First
IF "%1"=="s" GOTO Second
IF "%1"=="t" GOTO Third
SHIFT
:First
zipjs.bat unzip -source "%cd%\steamcmd.zip" -destination %wrkdir% -keep yes -force yes
exit
:Second
cd %wrkdir%
start steamcmd.exe +login anonymous +app_update 258550 valdiate +quit
exit
:Third
cd %wrkdir%
zipjs.bat unzip -source "%wrkdir%\umod.zip" -destination %wrkdir%\steamapps\common\rust_dedicated -keep yes -force yes
exit
