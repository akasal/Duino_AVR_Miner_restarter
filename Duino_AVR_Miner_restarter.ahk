﻿;This AHK script has been created by Alpay Kasal of Bignoodle, alpay at bignoodle.com
;Feel free to edit however you wish. To recompile to .exe , you'll want https://www.autohotkey.com/
;
;Why was this made?
;My AVR_Miner.exe (v2.56) worked well with my first batch of arduinos (metro mini's based
;on 328p), and I added some very cheap off-brand nano clones which started producing
;intermittant errors after about 40-60 minutes of mining. I could not isolate the problem. I looked
;at usb power, thermals, usb cables, and my hubs. Restarting the mining app would always solve
;things, but only for another 40-60 minutes. This script kills the miner (based on window title),
;waits 3seconds for any clean-up windows might want to do, then restarts the miner. It then
;sleeps for 30minutes and loops.
;
;Requirements:
;1- Run this from the same folder containing AVR_Miner.exe (it relies on being relatively next to the miner)
;2- This is Windows only as it has been quickly whipped up in AutoHotKey
;
;
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
Loop{
if (WinExist("Duino-Coin AVR Miner ("))
	{
	WinClose ; Use the window found by WinExist.
	Sleep 3000
	Run, AVR_Miner.exe
	Sleep 1800000
	}
}