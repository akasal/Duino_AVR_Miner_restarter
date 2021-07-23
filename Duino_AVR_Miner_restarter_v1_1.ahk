;This AHK script has been created by Alpay Kasal of Bignoodle, alpay at bignoodle.com
;Feel free to edit however you wish. To recompile to .exe , you'll want https://www.autohotkey.com/
;
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
Menu, Tray, Icon, duco_icon.ico
FileRead,Timetoreboot,Duino_AVR_Miner_restarter.cfg
;MsgBox,%Timetoreboot%
addMS:="000"
LoopInMS:=Timetoreboot*60 addMS
LoopInMSinterval:=LoopInMS/20
Loopcount:=0
countdown:=Timetoreboot
Loop{
if (WinExist("Duino-Coin AVR Miner ("))
	{
	WinClose
	Sleep 3000
	Run, AVR_Miner.exe
	} else {
	Run, AVR_Miner.exe
	Sleep 2000
	}
while countdown>0
	{
	Menu,Tray,Tip, AVR_Miner has restarted %Loopcount% times`nTime between restarts : %Timetoreboot% minutes`nCounting down : %countdown% minutes
	Sleep 60000
	countdown--
	}
Loopcount++
countdown:=Timetoreboot
}