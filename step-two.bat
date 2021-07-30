@echo off
echo "Init uMod and Installing"
set wrkdir="%cd%\Server-Files"
md %wrkdir%\steamapps\common\rust_dedicated\temp_zip  
call zipjsalt.bat t
move "Server-Files\steamapps\common\rust_dedicated\temp_zip\RustDedicated_Data\Managed\*dll**.*" "Server-Files\steamapps\common\rust_dedicated\RustDedicated_Data\Managed"

bitsadmin /transfer "start_installer" "https://raw.githubusercontent.com/dev-nolant/one-click-install-RustDedicatedServer/main/start.bat" "%cd%\start.bat"
cls
echo "Finished - Starting Server"
del "zipjsalt.bat" /f /q
del "zipjs.bat" /f /q
del "server-install.bat" /f /q
start start.bat
exit
