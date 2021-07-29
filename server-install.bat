@echo off 
set wrkdir="%cd%\Server-Files"
md "Server-Files"
bitsadmin /transfer "steamcmd"  https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip "%cd%\steamcmd.zip"
bitsadmin /transfer "zipjsbat" https://raw.githubusercontent.com/npocmaka/batch.scripts/master/hybrids/jscript/zipjs.bat "%cd%\zipjs.bat"
bitsadmin /transfer "zipjsbat" https://raw.githubusercontent.com/dev-nolant/one-click-install-RustDedicatedServer/main/zipjs_alt.bat "%cd%\zipjsalt.bat"
bitsadmin /transfer "zipjsbat" https://raw.githubusercontent.com/dev-nolant/one-click-install-RustDedicatedServer/main/step-two.bat "%cd%\step-two.bat"
bitsadmin /transfer "uMod" https://umod.org/games/rust/download?tag=public "%cd%\umod.zip"

call zipjsalt.bat f
del "%cd%\steamcmd.zip"
echo "Success 1/2"

call zipjsalt.bat s
