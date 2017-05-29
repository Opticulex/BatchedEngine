@echo off 
title BE Background Runner 
mode 70,20 
color f0 
:LOOP 
cls 
if exist C:\BatchedEngine\Prefs\Backgroundrunner.bat call C:\BatchedEngine\Prefs\Backgroundrunner.bat 
echo _BE_v1.1.0 
echo .BGRunner 
goto LOOP 
