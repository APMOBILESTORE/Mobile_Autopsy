@echo off
title Mobile Autopsy Setup
color 2f
mode con:cols=52 lines=18
taskkill /F /IM fastboot.exe <nul
taskkill /F /IM adb.exe <nul
cls
echo ====================================================
echo                Mobile Autopsy Setup
echo            By apmobilestore @ Freelancer
echo.
echo ====================================================
echo Internet Conncting...
popd
rmdir /Q /S Mobile_Autopsy > nul 2>&1
PowerShell -executionpolicy bypass -Command "Start-Sleep -s 3" > nul 2>&1
cls
echo ====================================================
echo                Mobile Autopsy Setup
echo            By apmobilestore @ Freelancer
echo.
echo ====================================================
echo Fatching Data...

PowerShell -executionpolicy bypass -Command "Start-Sleep -s 4" > nul 2>&1
cls
echo ====================================================
echo                Mobile Autopsy Setup
echo            By apmobilestore @ Freelancer
echo.
echo ====================================================
echo Analyzing Data...
PowerShell -executionpolicy bypass -Command "Start-Sleep -s 10" > nul 2>&1
cls
echo ====================================================
echo                Mobile Autopsy Setup
echo            By apmobilestore @ Freelancer
echo.
echo ====================================================
echo Downloading Android SDK Platform-Tools...
PowerShell -executionpolicy bypass -Command "(New-Object Net.WebClient).DownloadFile('https://dl.google.com/android/repository/platform-tools-latest-windows.zip', 'platform-tools.zip')"
cls
echo ====================================================
echo                Mobile Autopsy Setup
echo            By apmobilestore @ Freelancer
echo.
echo ====================================================
echo Downloading Google USB driver...
PowerShell -executionpolicy bypass -Command "(New-Object Net.WebClient).DownloadFile('https://dl.google.com/android/repository/usb_driver_r13-windows.zip', 'usb-driver.zip')"
cls
echo ====================================================
echo                Mobile Autopsy Setup
echo            By apmobilestore @ Freelancer
echo.
echo ====================================================
echo Downloading Supporting Files...
PowerShell -executionpolicy bypass -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/APMOBILESTORE/Mobile_Autopsy/main/mobile_autopsy.zip', 'Mobile_Autopsy.zip')"
PowerShell -executionpolicy bypass -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/APMOBILESTORE/Mobile_Autopsy/main/unzip.exe', 'unzip.exe')"
cls
unzip platform-tools.zip -d Mobile_Autopsy
unzip usb-driver.zip -d Mobile_Autopsy
unzip Mobile_Autopsy.zip
del platform-tools.zip
del usb-driver.zip
del Mobile_Autopsy.zip
del unzip.exe
cd Mobile_Autopsy
move adb_enable.exe platform-tools
move com.wanam-344.apk platform-tools
move frp.bin platform-tools
move service_adb.bat platform-tools
move service_fb.bat platform-tools
move DPInst_x64.exe usb_driver
move DPInst_x86.exe usb_driver
cd platform-tools
md App_list
md Screen_shot
md App_Backup
cd..
"%~dp0Mobile_Autopsy\usb-driver\DPInst_x64.exe"
cls
"%~dp0Mobile_Autopsy\usb-driver\DPInst_x86.exe"
cls
"%~dp0Mobile_Autopsy\service.bat"
DEL /Q Mobile_Autopsy_Setup.bat && exit