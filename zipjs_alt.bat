@ECHO OFF
set wrkdir="%cd%\Server-Files"

IF "%1"=="f" GOTO First
IF "%1"=="s" GOTO Second
IF "%1"=="t" GOTO temp-keep
SHIFT
:First
echo "Transfering Files to Unzipped Folder 1/2"
zipjs.bat unzip -source "%cd%\steamcmd.zip" -destination %wrkdir% -keep yes -force yes
echo "moving on"
exit
:Second
echo "Installing Rust-Dedicated Server Files"
start Server-Files\steamcmd.exe +login anonymous +app_update 258550 valdiate +quit
exit
:temp-keep 
zipjs.bat unzip -source "%cd%\umod.zip" -destination "%wrkdir%\steamapps\common\rust_dedicated\temp_zip" -keep yes -force yes
exit

