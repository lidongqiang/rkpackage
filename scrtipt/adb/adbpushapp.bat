@echo off
set dist=%1
set appname=%2
set SERVERPATH=:\sofia3gr\out\target\product\sofia3gr\system\bin\
set DEVICEPATH=/system/bin
if "%dist%"=="/h" (
    echo "%SERVERPATH%"
    echo "ÍÆËÍµ½%DEVICEPATH%"
    goto et
)
@echo on
adb push %dist%%SERVERPATH%%appname% %DEVICEPATH%
:et