@echo off
set msBuildExe="C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSBuild.exe"
set solutionsFile="easysimplified-designer.sln"
rem Build the solutions:  
%msBuildExe% /t:Build /p:Configuration=Debug /p:Platform="Any CPU" %solutionsFile%  