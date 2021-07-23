;This AHK script has been created by Alpay Kasal of Bignoodle, alpay at bignoodle.com
;Feel free to edit however you wish. To recompile to .exe , you'll want https://www.autohotkey.com/
;
;Timetorebootinseconds=1800
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
FileRead,Timetorebootinseconds,Duino_AVR_Miner_restarter.cfg
addMS:="000"
LoopInMS:=Timetorebootinseconds addMS
MsgBox,%LoopInMS%
Loopcount=0
Loop{
if (WinExist("Duino-Coin AVR Miner ("))
	{
	WinClose ; Use the window found by WinExist.
	Sleep 3000
	Run, AVR_Miner.exe
	Menu,Tray,Tip, AVR_Miner has restarted %Loopcount% times
	Sleep %LoopInMS%
	Loopcount++
	}
}