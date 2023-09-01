@echo off
set ver=2.7
set title=Mobile Autopsy Setup
set devloper=Manoj Kumar - Freelancer
title %title% %ver%
color 2f
mode con:cols=52 lines=10
taskkill /F /IM fastboot.exe <nul
taskkill /F /IM adb.exe <nul
cls
echo ====================================================
echo                 %title% %ver%
echo            Developer: %devloper%
echo.
echo ====================================================
echo Internet Conncting...
popd
rmdir /Q /S Mobile_Autopsy > nul 2>&1
PowerShell -executionpolicy bypass -Command "Start-Sleep -s 2" > nul 2>&1
cls
echo ====================================================
echo                 %title% %ver%
echo            Developer: %devloper%
echo.
echo ====================================================
echo Fatching Data...

PowerShell -executionpolicy bypass -Command "Start-Sleep -s 2" > nul 2>&1
cls
echo ====================================================
echo                 %title% %ver%
echo            Developer: %devloper%
echo.
echo ====================================================
echo Analyzing Data...
PowerShell -executionpolicy bypass -Command "Start-Sleep -s 2" > nul 2>&1
cls

echo ====================================================
echo                 %title% %ver%
echo            Developer: %devloper%
echo.
echo ====================================================
echo Downloading Support Files...

PowerShell -executionpolicy bypass -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/APMOBILESTORE/Mobile_Autopsy/main/mobile_autopsy.zip', 'Mobile_Autopsy.zip')"

PowerShell -executionpolicy bypass -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/APMOBILESTORE/Mobile_Autopsy/main/unzip.exe', 'unzip.exe')"


unzip Mobile_Autopsy.zip
cls

del Mobile_Autopsy.zip
cls

move unzip.exe Mobile_Autopsy
cls

echo ====================================================
echo                 %title% %ver%
echo            Developer: %devloper%
echo.
echo ====================================================
echo Downloading Android SDK Platform-Tools...

PowerShell -executionpolicy bypass -Command "(New-Object Net.WebClient).DownloadFile('https://dl.google.com/android/repository/platform-tools-latest-windows.zip', 'Mobile_Autopsy\platform-tools.zip')"
cls

echo ====================================================
echo                 %title% %ver%
echo            Developer: %devloper%
echo.
echo ====================================================
echo Downloading Google USB driver...

PowerShell -executionpolicy bypass -Command "(New-Object Net.WebClient).DownloadFile('https://dl.google.com/android/repository/usb_driver_r13-windows.zip', 'Mobile_Autopsy\usb-driver.zip')"
cls

cd Mobile_Autopsy

unzip platform-tools.zip
unzip usb-driver.zip
cls

del platform-tools.zip
del usb-driver.zip
del unzip.exe
cls

move adb_enable.exe platform-tools
move frp.bin platform-tools
move service_adb.bat platform-tools
move service_fb.bat platform-tools
move DPInst_x64.exe usb_driver
move DPInst_x86.exe usb_driver
cls

cd platform-tools
md App_list
md Screen_shot
md App_Backup
cls

:: Creat Short cut

cd..
set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"
echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "%USERPROFILE%\Desktop\Mobile Autopsy.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "%~dp0mobile_autopsy\service.bat" >> %SCRIPT%
echo oLink.WorkingDirectory = "%~dp0mobile_autopsy" >> %SCRIPT%
echo oLink.IconLocation = "%SystemRoot%\system32\SHELL32.dll, 80" >> %SCRIPT%
echo oLink.Description = "Manoj Kumar" >> %SCRIPT%
echo oLink.HotKey = "ALT+CTRL+M" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%
cscript /nologo %SCRIPT%
del %SCRIPT%

set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"
echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "%USERPROFILE%\Desktop\Aotupsy App Backup.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "%~dp0mobile_autopsy\platform-tools\App_Backup" >> %SCRIPT%
echo oLink.WorkingDirectory = "%~dp0mobile_autopsy" >> %SCRIPT%
echo oLink.IconLocation = "%SystemRoot%\system32\SHELL32.dll, 85" >> %SCRIPT%
echo oLink.Description = "Manoj Kumar" >> %SCRIPT%
echo oLink.HotKey = "ALT+CTRL+B" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%
cscript /nologo %SCRIPT%
del %SCRIPT%

set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"
echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "%USERPROFILE%\Desktop\Aotupsy Screen Shot.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "%~dp0mobile_autopsy\platform-tools\Screen_shot" >> %SCRIPT%
echo oLink.WorkingDirectory = "%~dp0mobile_autopsy" >> %SCRIPT%
echo oLink.IconLocation = "%SystemRoot%\system32\SHELL32.dll, 19" >> %SCRIPT%
echo oLink.Description = "Manoj Kumar" >> %SCRIPT%
echo oLink.HotKey = "ALT+CTRL+S" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%
cscript /nologo %SCRIPT%
del %SCRIPT%

cd..

::"%~dp0Mobile_Autopsy\usb_driver\DPInst_x64.exe"
::"%~dp0Mobile_Autopsy\usb_driver\DPInst_x86.exe"
cls

"%~dp0Mobile_Autopsy\service.bat"
DEL /Q Mobile_Autopsy_Setup.bat && exit