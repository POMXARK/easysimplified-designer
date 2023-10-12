@echo off
set msBuildExe="C:\Program Files (x86)\Mono\bin\xbuild"
set solutionsFile="easysimplified-designer.sln"
rem Build the solutions:  
%msBuildExe% /t:Build /p:Configuration=Debug /p:Platform="Any CPU" %solutionsFile%  
