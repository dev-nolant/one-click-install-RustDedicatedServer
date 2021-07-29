@echo off
echo "Init uMod and Installing"
set wrkdir="%cd%\Server-Files"
md %wrkdir%\steamapps\common\rust_dedicated\temp_zip


:zipjs
    zipjs.bat unzip -source "%cd%\umod.zip" -destination "%wrkdir%\steamapps\common\rust_dedicated\temp_zip" -keep yes -force yes
    call :finish
GOTO zipjs

:finish      
    move "Server-Files\steamapps\common\rust_dedicated\temp_zip\RustDedicated_Data\Managed\*dll**.*" "Server-Files\steamapps\common\rust_dedicated\RustDedicated_Data\Managed"
    echo "Deleted umod.zip"
    del "umod.zip" /f /q
    bitsadmin /transfer "start_installer" "https://raw.githubusercontent.com/dev-nolant/one-click-install-RustDedicatedServer/main/start.bat" "%cd%\start.bat"
    cls
    echo "Finished - Starting Server"
    del "zipjsalt.bat" /f /q
    del "zipjs.bat" /f /q
    del "server-install.bat" /f /q
    start start.bat
    exit
