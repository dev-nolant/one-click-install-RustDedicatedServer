echo "Init uMod and Installing"
set wrkdir="%cd%\Server-Files"
md %wrkdir%\steamapps\common\rust_dedicated\temp_zip
zipjs.bat unzip -source "%wrkdir%\umod.zip" -destination "%wrkdir%\steamapps\common\rust_dedicated\temp_zip" -keep yes -force yes
exit
