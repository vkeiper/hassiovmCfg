
@echo off
cls
Set Sleep=0
:start
if %Sleep% == 30 ( goto end )
C:\Users\keipe_v\AppData\Local\Arduino15\packages\esp8266\tools\esptool\2.5.0-3-20ed2b9/esptool.exe -vv -cd ck -cb 115200 -cp COM10 -ca 0x0 -cz 0x100000 -ca 0x00000 -cf C:\Users\keipe_v\AppData\Local\Temp\arduino_build_888875/sonoff.ino.bin
echo Run 
Set /A Sleep+=1
echo %Sleep%
goto start
:end
echo "am 30 now"
pause

