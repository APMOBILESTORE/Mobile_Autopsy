@echo off
title ADB_Autopsy Installer
color 2f
mode con:cols=52 lines=18
echo ====================================================
echo                ADB_Autopsy Installer
echo            By apmobilestore @ Freelancer
echo.
echo ====================================================
echo Internet Conncting...
popd
rmdir /Q /S ADB_Autopsy > nul 2>&1
PowerShell -executionpolicy bypass -Command "Start-Sleep -s 3" > nul 2>&1
cls
echo ====================================================
echo                ADB_Autopsy Installer
echo            By apmobilestore @ Freelancer
echo.
echo ====================================================
echo Fatching Data...

PowerShell -executionpolicy bypass -Command "Start-Sleep -s 4" > nul 2>&1
cls
echo ====================================================
echo                ADB_Autopsy Installer
echo            By apmobilestore @ Freelancer
echo.
echo ====================================================
echo Analyzing Data...
PowerShell -executionpolicy bypass -Command "Start-Sleep -s 10" > nul 2>&1
cls
echo ====================================================
echo                ADB_Autopsy Installer
echo            By apmobilestore @ Freelancer
echo.
echo ====================================================
echo Downloading Android SDK Platform-Tools...
PowerShell -executionpolicy bypass -Command "(New-Object Net.WebClient).DownloadFile('https://dl.google.com/android/repository/platform-tools-latest-windows.zip', 'adb-tool.zip')"
cls
echo ====================================================
echo                ADB_Autopsy Installer
echo            By apmobilestore @ Freelancer
echo.
echo ====================================================
echo Downloading Google USB driver...
PowerShell -executionpolicy bypass -Command "(New-Object Net.WebClient).DownloadFile('https://dl.google.com/android/repository/usb_driver_r13-windows.zip', 'usb-driver.zip')"
cls
echo ====================================================
echo                ADB_Autopsy Installer
echo            By apmobilestore @ Freelancer
echo.
echo ====================================================
echo Downloading Data... 5.4%
PowerShell -executionpolicy bypass -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/APMOBILESTORE/Mobile_Autopsy/main/mobile_autopsy.zip', 'Mobile_Autopsy.zip')"
PowerShell -executionpolicy bypass -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/APMOBILESTORE/Mobile_Autopsy/main/unzip.exe', 'unzip.exe')"
cls
unzip adb-tool.zip -d Mobile_Autopsy
unzip usb-driver.zip -d Mobile_Autopsy
unzip Mobile_Autopsy.zip
del adb-tool.zip
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
exit