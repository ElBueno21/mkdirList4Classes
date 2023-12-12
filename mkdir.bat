:: By ElBueno21
@echo off

:: The Program goes ahead and makes folders from 0 to 
:: whatever limit the user wishes

set /p "num=Enter How Many Module Folder(s) Would You Like To Make: "
set /p "welcome=Would You Like To Add A Welcome! Start Here Page [Y/N]?: "
set /p "resource=Would You Like To Add A Course Resources Page [Y/N]?: "

:: NOTE /L means to loop iterativly through the number range
:: 	The () first digit means lowest limit
::	Next num mean the increment
::	Final num means the highest limit
::	So for the example below it means that the lowest number
::	is 0 and will print out all the numbers incrementing by one 
::	until it makes it to 5

::  FOR /L %%variable IN (start, step, end) DO command

::  Example:
::	FOR /L %%x IN (0, 1, 5) DO ECHO %%x
::	0 1 2 3 4 5

if /I %welcome% EQU "Y" (
    mkdir "Welcome! Start Here"
)

if /I %resource% EQU "Y" (
    mkdir "Course Resources"
)

:Modules
FOR /L %%x IN (1, 1,%num%) DO (
set dir_name="Module %%x - "
setlocal EnableDelayedExpansion
mkdir !dir_name!
endlocal
)

pause