@echo off
del "step-two.bat"/f /q
cls
echo "Deleted Temp files"
echo "launching server, please wait."
del "umod.zip" /f /q
cd Server-Files\steamapps\common\rust_dedicated\
:start
RustDedicated.exe -batchmode +server.port 28015 +server.level "Procedural Map" +server.seed 50500 +server.worldsize 2500 +server.maxplayers 10 +server.hostname "You did it!"
goto start
