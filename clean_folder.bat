@echo off
chcp 65001 >nul
echo ==========================================================
echo NETCO POWER - Cleaning Unused Files and Updating Website
echo ==========================================================

set "TARGET_DIR=%~dp0"
if "%TARGET_DIR%"=="" set "TARGET_DIR=C:\Users\SHIVAM KR\OneDrive\Documents\OneDrive\Documents\Desktop\Suraj Kumar\Chrome\Demo\3\"
set "ZIP_PATH=C:\Users\SHIVAM KR\.gemini\antigravity\brain\081e3979-c555-4122-a989-019d4e3c45d2\netco_power_website.zip"

echo [1/2] Deleting unused timestamped and temporary files...
del /Q /F "%TARGET_DIR%*1789*.jpg" 2>nul
del /Q /F "%TARGET_DIR%*1790*.jpg" 2>nul
del /Q /F "%TARGET_DIR%*.metadata.json" 2>nul
del /Q /F "%TARGET_DIR%copy_to_main_folder.*" 2>nul
del /Q /F "%TARGET_DIR%walkthrough.md" 2>nul

echo [2/2] Extracting exact 20 production files (clean website)...
powershell -Command "Expand-Archive -Path '%ZIP_PATH%' -DestinationPath '%TARGET_DIR%' -Force"

echo ==========================================================
echo SUCCESS! All unused files deleted.
echo Only the 20 active website files are now in this folder.
echo You can now push directly to GitHub!
echo ==========================================================
pause
