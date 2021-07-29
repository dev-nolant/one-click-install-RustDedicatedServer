@ECHO OFF
set wrkdir="%cd%\Server-Files"

IF "%1"=="f" GOTO First
IF "%1"=="s" GOTO Second
IF "%1"=="t" GOTO Third
SHIFT
:First
echo "Transfering Files to Unzipped Folder 1/2"
call zipjs.bat unzip -source "%cd%\steamcmd.zip" -destination %wrkdir% -force yes -keep yes 
echo "moving on"
exit
:Second
echo "Installing Rust-Dedicated Server Files"
start steamcmd.exe +login anonymous +app_update 258550 valdiate +quit
exit
:Third
echo "Init uMod and Installing"
call zipjs.bat unzip -source "%wrkdir%\umod.zip" -destination %wrkdir%\steamapps\common\rust_dedicated -force yes -keep yes
exit
