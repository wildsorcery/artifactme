@echo off
7za X Investigation.zip -oc:\Windows\Carbonblack\Investigation
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& 'C:\windows\carbonblack\Investigation\scripts\artifact.ps1'"
7za a -r -tzip c:\windows\carbonblack\%COMPUTERNAME%_artifacts.zip c:\windows\carbonblack\investigation\results