@echo off
adb root
timeout 2
adb remount
adb push %1 /system/app/%2/%2.apk