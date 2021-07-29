@echo off
echo "Init uMod and Installing"
set wrkdir="%cd%\Server-Files"
md %wrkdir%\steamapps\common\rust_dedicated\temp_zip
:finish      
    move "Server-Files\steamapps\common\rust_dedicated\temp_zip\RustDedicated_Data\Managed\*dll**.*" "Server-Files\steamapps\common\rust_dedicated\RustDedicated_Data\Managed"
    echo "Deleted umod.zip"
    del "Server-Files\umod.zip" /f /q
    bitsadmin /transfer "start_installer" "https://raw.githubusercontent.com/dev-nolant/one-click-install-RustDedicatedServer/main/start.bat" "%cd%\start.bat"
    cls
    echo "Finished - Starting Server"
    call start.bat
    del "zipjsalt.bat" /f /q
    del "zipjs.bat" /f /q
:zipjs
    zipjs.bat unzip -source "%wrkdir%\umod.zip" -destination "%wrkdir%\steamapps\common\rust_dedicated\temp_zip" -keep yes -force yes
    GOTO finish
GOTO zipjs
