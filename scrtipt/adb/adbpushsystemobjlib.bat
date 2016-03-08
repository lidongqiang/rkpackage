@echo off
set dist=%1
set appname=%2
set SERVERPATH=:\sofia3gr\out\target\product\sofia3gr\obj\lib\
set DEVICEPATH=/system/lib
if "%dist%"=="/h" (
    echo "%SERVERPATH%"
    echo "ÍÆËÍµ½%DEVICEPATH%"
    goto et
)
@echo on
adb push %dist%%SERVERPATH%%appname% %DEVICEPATH%
:et