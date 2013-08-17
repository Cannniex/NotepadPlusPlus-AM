echo off
rem this file is part of installer for Notepad++
rem Copyright (C)2006 Don HO <don.h@free.fr>
rem 
rem This program is free software; you can redistribute it and/or
rem modify it under the terms of the GNU General Public License
rem as published by the Free Software Foundation; either
rem version 2 of the License, or (at your option) any later version.
rem 
rem This program is distributed in the hope that it will be useful,
rem but WITHOUT ANY WARRANTY; without even the implied warranty of
rem MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
rem GNU General Public License for more details.
rem 
rem You should have received a copy of the GNU General Public License
rem along with this program; if not, write to the Free Software
rem Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

echo on

rmdir /S /Q .\build
mkdir .\build

rem Notepad++ minimalist package
rmdir /S /Q .\minimalist
mkdir .\minimalist

copy /Y ..\bin\license.txt .\minimalist\
If ErrorLevel 1 PAUSE
copy /Y ..\bin\readme.txt .\minimalist\
If ErrorLevel 1 PAUSE
copy /Y ..\bin\change.log .\minimalist\
If ErrorLevel 1 PAUSE
copy /Y ..\src\config.model.xml .\minimalist\
If ErrorLevel 1 PAUSE
copy /Y ..\src\langs.model.xml .\minimalist\
If ErrorLevel 1 PAUSE
copy /Y ..\src\stylers.model.xml .\minimalist\
If ErrorLevel 1 PAUSE
copy /Y ..\src\contextMenu.xml .\minimalist\
If ErrorLevel 1 PAUSE
copy /Y ..\src\shortcuts.xml .\minimalist\
If ErrorLevel 1 PAUSE
copy /Y ..\bin\doLocalConf.xml .\minimalist\
If ErrorLevel 1 PAUSE
copy /Y ..\bin\"notepad++.exe" .\minimalist\
If ErrorLevel 1 PAUSE
copy /Y ..\bin\SciLexer.dll .\minimalist\
If ErrorLevel 1 PAUSE


rem Notepad++ Unicode package
rmdir /S /Q .\zipped.package.release

mkdir .\zipped.package.release
mkdir .\zipped.package.release\updater
mkdir .\zipped.package.release\localization
mkdir .\zipped.package.release\themes
mkdir .\zipped.package.release\user.manual
mkdir .\zipped.package.release\plugins
mkdir .\zipped.package.release\plugins\APIs
mkdir .\zipped.package.release\plugins\Config
mkdir .\zipped.package.release\plugins\Config\Hunspell
mkdir .\zipped.package.release\plugins\doc
mkdir .\zipped.package.release\plugins\CodeAlignment

rem TextFx
mkdir .\zipped.package.release\plugins\Config\tidy

rem SherloXplorer
mkdir .\zipped.package.release\plugins\doc\SherloXplorer
mkdir .\zipped.package.release\plugins\SherloXplorer
mkdir .\zipped.package.release\plugins\PythonScript
mkdir .\zipped.package.release\plugins\PythonScript\lib

rem SourceCookifier
mkdir .\zipped.package.release\plugins\SourceCookifier
mkdir .\zipped.package.release\plugins\SourceCookifier\icons

rem NppExec
mkdir .\zipped.package.release\plugins\NppExec
mkdir .\zipped.package.release\plugins\doc\NppExec

rem FingerText
mkdir .\zipped.package.release\plugins\Config\FingerText
mkdir .\zipped.package.release\plugins\doc\FingerText

rem AutoRecover/Backup
mkdir .\zipped.package.release\auto.recover
mkdir .\zipped.package.release\auto.backup

rem mkdir .\zipped.package.release\ansi
rem mkdir .\zipped.package.release\ansi\updater
rem mkdir .\zipped.package.release\ansi\themes
rem mkdir .\zipped.package.release\ansi\user.manual
rem mkdir .\zipped.package.release\ansi\plugins
rem mkdir .\zipped.package.release\ansi\plugins\APIs
rem mkdir .\zipped.package.release\ansi\plugins\Config
rem mkdir .\zipped.package.release\ansi\plugins\doc

If ErrorLevel 1 PAUSE
copy /Y ..\bin\backupNppData.bat .\zipped.package.release\
If ErrorLevel 1 PAUSE
copy /Y ..\bin\license.txt .\zipped.package.release\
If ErrorLevel 1 PAUSE
copy /Y ..\bin\AlliedModsEdition.xml .\zipped.package.release\
If ErrorLevel 1 PAUSE
copy /Y ..\bin\readme.txt .\zipped.package.release\
If ErrorLevel 1 PAUSE
copy /Y ..\bin\license.txt .\zipped.package.release
If ErrorLevel 1 PAUSE
copy /Y ..\bin\change.log .\zipped.package.release\
If ErrorLevel 1 PAUSE
copy /Y ..\src\config.model.xml .\zipped.package.release\
If ErrorLevel 1 PAUSE
copy /Y ..\src\langs.model.xml .\zipped.package.release\
If ErrorLevel 1 PAUSE
copy /Y ..\src\stylers.model.xml .\zipped.package.release\
If ErrorLevel 1 PAUSE
copy /Y ..\src\contextMenu.xml .\zipped.package.release\
If ErrorLevel 1 PAUSE
copy /Y ..\src\shortcuts.xml .\zipped.package.release\
If ErrorLevel 1 PAUSE
copy /Y ..\src\functionList.xml .\zipped.package.release\
If ErrorLevel 1 PAUSE
copy /Y ..\bin\doLocalConf.xml .\zipped.package.release\
If ErrorLevel 1 PAUSE
copy /Y ..\bin\"notepad++.exe" .\zipped.package.release\
If ErrorLevel 1 PAUSE
copy /Y ..\bin\SciLexer.dll .\zipped.package.release\
If ErrorLevel 1 PAUSE

rem Plugins

copy /Y "..\bin\plugins\DSpellCheck.dll" .\zipped.package.release\plugins\
rem copy /Y "..\bin\plugins\Config\DSpellCheck.ini" .\zipped.package.release\plugins\Config\
rem If ErrorLevel 1 PAUSE
copy /Y "..\bin\plugins\Config\Hunspell\dictionary.lst" .\zipped.package.release\plugins\Config\Hunspell\
If ErrorLevel 1 PAUSE
copy /Y "..\bin\plugins\Config\Hunspell\en_GB.dic" .\zipped.package.release\plugins\Config\Hunspell\
If ErrorLevel 1 PAUSE
copy /Y "..\bin\plugins\Config\Hunspell\en_GB.aff" .\zipped.package.release\plugins\Config\Hunspell\
If ErrorLevel 1 PAUSE
copy /Y "..\bin\plugins\Config\Hunspell\README_en_GB.txt" .\zipped.package.release\plugins\Config\Hunspell\
If ErrorLevel 1 PAUSE
copy /Y "..\bin\plugins\Config\Hunspell\en_US.dic" .\zipped.package.release\plugins\Config\Hunspell\
If ErrorLevel 1 PAUSE
copy /Y "..\bin\plugins\Config\Hunspell\en_US.aff" .\zipped.package.release\plugins\Config\Hunspell\
If ErrorLevel 1 PAUSE
copy /Y "..\bin\plugins\Config\Hunspell\README_en_US.txt" .\zipped.package.release\plugins\Config\Hunspell\
If ErrorLevel 1 PAUSE

rem TextFx
copy /Y "..\bin\plugins\NPPTextFX.dll" .\zipped.package.release\plugins\
If ErrorLevel 1 PAUSE

copy /Y "..\bin\plugins\NppFTP.dll" .\zipped.package.release\plugins\
If ErrorLevel 1 PAUSE
copy /Y "..\bin\plugins\NppExport.dll" .\zipped.package.release\plugins\
If ErrorLevel 1 PAUSE
copy /Y "..\bin\plugins\NppConverter.dll" .\zipped.package.release\plugins\
If ErrorLevel 1 PAUSE

If ErrorLevel 1 PAUSE
copy /Y "..\bin\plugins\Config\NppTextFX.ini" .\zipped.package.release\plugins\Config\
If ErrorLevel 1 PAUSE
copy /Y "..\bin\plugins\doc\NPPTextFXdemo.TXT" .\zipped.package.release\plugins\doc\
If ErrorLevel 1 PAUSE

If ErrorLevel 1 PAUSE
xcopy /Y /S ..\bin\plugins\Config\tidy\*.* .\zipped.package.release\plugins\Config\tidy\

rem plugins manager and its updater 
copy /Y "..\bin\plugins\PluginManager.dll" .\zipped.package.release\plugins\
If ErrorLevel 1 PAUSE
copy /Y "..\bin\updater\gpup.exe" .\zipped.package.release\updater\
If ErrorLevel 1 PAUSE

rem SourceCookifier
copy /Y "..\bin\plugins\SourceCookifier.dll" .\zipped.package.release\plugins\
If ErrorLevel 1 PAUSE
xcopy /Y /S ..\bin\plugins\SourceCookifier\*.* .\zipped.package.release\plugins\SourceCookifier\
If ErrorLevel 1 PAUSE
xcopy /Y ..\bin\plugins\doc\SourceCookifier\*.* .\zipped.package.release\plugins\doc\SourceCookifier\
If ErrorLevel 1 PAUSE
copy /Y "..\bin\plugins\Config\SourceCookifier.config.xml" .\zipped.package.release\plugins\Config\
If ErrorLevel 1 PAUSE
copy /Y "..\bin\plugins\Config\SourceCookifier.languages.model.xml" .\zipped.package.release\plugins\Config\
If ErrorLevel 1 PAUSE
copy /Y "..\bin\plugins\Config\SourceCookifier.languages.xml" .\zipped.package.release\plugins\Config\
If ErrorLevel 1 PAUSE
rem copy /Y "..\bin\pawn.includes.c00k!e" .\zipped.package.release\
rem If ErrorLevel 1 PAUSE

rem NotepadSharp
copy /Y "..\bin\plugins\NotepadSharp.dll" .\zipped.package.release\plugins\
If ErrorLevel 1 PAUSE

rem SherloXplorer
copy /Y "..\bin\plugins\SherloXplorer.dll" .\zipped.package.release\plugins\
If ErrorLevel 1 PAUSE
xcopy /Y     ..\bin\plugins\SherloXplorer\*.* .\zipped.package.release\plugins\SherloXplorer\
If ErrorLevel 1 PAUSE
xcopy /Y /S ..\bin\plugins\PythonScript\*.* .\zipped.package.release\plugins\PythonScript\
If ErrorLevel 1 PAUSE
copy /Y "..\bin\plugins\Config\SherloXplorer.config.xml" .\zipped.package.release\plugins\Config\
If ErrorLevel 1 PAUSE
copy /Y "..\bin\plugins\doc\SherloXplorer\SherloXplorer.README.TXT" .\zipped.package.release\plugins\doc\SherloXplorer\
If ErrorLevel 1 PAUSE

rem NppTodoPlugin
copy /Y "..\bin\plugins\NppTaskList.dll" .\zipped.package.release\plugins\
copy /Y "..\bin\plugins\Config\npp_task_list.cfg" .\zipped.package.release\plugins\Config\

If ErrorLevel 1 PAUSE

rem NppExec
copy /Y "..\bin\plugins\NppExec.dll" .\zipped.package.release\plugins\
If ErrorLevel 1 PAUSE
xcopy /Y ..\bin\plugins\NppExec\*.* .\zipped.package.release\plugins\NppExec\
If ErrorLevel 1 PAUSE
copy /Y "..\bin\plugins\Config\npes_saved.txt" .\zipped.package.release\plugins\Config\
If ErrorLevel 1 PAUSE
copy /Y "..\bin\plugins\Config\NppExec.ini" .\zipped.package.release\plugins\Config\
If ErrorLevel 1 PAUSE
xcopy /Y ..\bin\plugins\doc\NppExec\*.* .\zipped.package.release\plugins\doc\NppExec\
If ErrorLevel 1 PAUSE
xcopy /Y /S ..\bin\pawn.compiler\*.* .\zipped.package.release\pawn.compiler\
If ErrorLevel 1 PAUSE

rem FingerText
copy /Y "..\bin\plugins\FingerText.dll" .\zipped.package.release\plugins\
If ErrorLevel 1 PAUSE

xcopy /Y ..\bin\plugins\Config\FingerText\*.* .\zipped.package.release\plugins\Config\FingerText\
If ErrorLevel 1 PAUSE

copy /Y "..\bin\plugins\doc\FingerText\README.rdoc" .\zipped.package.release\plugins\doc\FingerText\
If ErrorLevel 1 PAUSE

rem AutoSave
copy /Y "..\bin\plugins\AutoSave.dll" .\zipped.package.release\plugins\
If ErrorLevel 1 PAUSE
copy /Y "..\bin\plugins\Config\AutoSave.ini" .\zipped.package.release\plugins\Config\
If ErrorLevel 1 PAUSE

rem XBrackets light
copy /Y "..\bin\plugins\XBrackets.dll" .\zipped.package.release\plugins\
If ErrorLevel 1 PAUSE
copy /Y "..\bin\plugins\Config\XBrackets.ini" .\zipped.package.release\plugins\Config\
If ErrorLevel 1 PAUSE

rem Regex Helper
copy /Y "..\bin\plugins\nppRegEx.dll" .\zipped.package.release\plugins\
If ErrorLevel 1 PAUSE

rem Code Alignment

copy /Y "..\bin\plugins\CodeAlignment\CodeAlignment.Common.dll" .\zipped.package.release\plugins\CodeAlignment\
copy /Y "..\bin\plugins\CodeAlignmentNpp.dll" .\zipped.package.release\plugins\
If ErrorLevel 1 PAUSE


rem document
xcopy /Y /S ..\bin\user.manual\*.* .\zipped.package.release\user.manual\
If ErrorLevel 1 PAUSE


rem localizations
copy /Y ".\nativeLang\*.xml" .\zipped.package.release\localization\
If ErrorLevel 1 PAUSE

rem files API
copy /Y ".\APIs\*.xml" .\zipped.package.release\plugins\APIs\
If ErrorLevel 1 PAUSE

rem theme
copy /Y ".\themes\*.xml" .\zipped.package.release\themes\
If ErrorLevel 1 PAUSE




"C:\Program Files\7-Zip\7z.exe" a -r .\build\npp.bin.minimalist.7z .\minimalist\*
If ErrorLevel 1 PAUSE
"C:\Program Files\7-Zip\7z.exe" a -tzip -r .\build\npp.bin.zip .\zipped.package.release\*
If ErrorLevel 1 PAUSE
"C:\Program Files\7-Zip\7z.exe" a -r .\build\npp.bin.7z .\zipped.package.release\*
If ErrorLevel 1 PAUSE
"C:\Program Files (x86)\NSIS\Unicode\makensis.exe" nppSetup.nsi

@echo off

setlocal enableDelayedExpansion 

cd .\build\

for %%a in (npp.*.Installer.exe) do (
  rem echo a = %%a
  set nppInstallerVar=%%a
  set zipvar=!nppInstallerVar:Installer.exe=bin.zip!
  set 7zvar=!nppInstallerVar:Installer.exe=bin.7z!
  set 7zvarMin=!nppInstallerVar:Installer.exe=bin.minimalist.7z!
  rem set md5var=!nppInstallerVar:Installer.exe=release.md5!
)
ren npp.bin.zip !zipvar!
ren npp.bin.7z !7zvar!
ren npp.bin.minimalist.7z !7zvarMin!
rem ..\externalTools\md5.exe -o!md5var! !nppInstallerVar! !zipvar! !7zvar!

cd ..

endlocal
