@echo off 
setlocal enableDelayedExpansion 

set MYDIR=%1
for /F %%x in ('dir /B/D/S %MYDIR%\pcl\*.pdb') do (
  set FILENAME=%%x
  GitLink\build\GitLink.exe !FILENAME!
)