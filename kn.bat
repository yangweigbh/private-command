@echo off

for /f %%i in ('adb shell ps ^| grep -i %1 ^| tr -s " " ^| cut -d " " -f 2') do set pid=%%i

echo %pid%

adb shell kill -9 %pid%