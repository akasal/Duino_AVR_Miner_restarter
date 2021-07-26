# Duino_AVR_Miner_restarter
An automated 'restarter' for the Duino-Coin AVR Miner application.

This AHK script has been created by Alpay Kasal of https://Bignoodle.com .
Contact alpay at bignoodle.com or ALduino on discord.
Feel free to edit however you wish. To recompile to .exe , you'll want https://www.autohotkey.com/ . This utility pertains to the Duinocoin (DUCO) cryptocurrency project https://github.com/revoxhere/duino-coin

***Why was this made?***

My AVR_Miner.exe (v2.56) worked well with my first batch of arduinos (metro mini's based on 328p), and I added some very cheap off-brand nano clones which started producing intermittant errors, delays, and changes in difficulty level (from 6 to 16 or 128) after about 40-60 minutes of mining. I could not isolate the problem. I looked at usb power, thermals, usb cables, and my hubs. I learned others were having similar issues (via discord). Restarting the mining app would consistently solve things, but only for another 40-60 minutes. This script kills the miner, then restarts the miner based on the number of minutes listed in the .cfg file (default is 30 minutes). It then loops. Tested, by me, on Win10 home 64bit.


***TIP :*** You may mouse over the tray icon for this app to see how many times it has looped since it was first run (maybe useful for unattended mining), the current time interval, and a countdown to miner restart.

***TIP :*** You don't need the .ahk script if you don't plan to recompile this. Just the .exe and .cfg is required.


![duino_tray_screenshot](https://user-images.githubusercontent.com/31149874/126837438-0039413c-10e0-473b-bef3-7c57bee5760d.jpg)


 
***Requirements:***

1- Enter the amount of time between miner restarts in Duino_AVR_Miner_restarter.cfg with a text editor in minutes time scale. The default is 30 minutes.

2- Run this from the same folder containing AVR_Miner.exe (it relies on being relatively next to the miner)

3- This is Windows only as it has been quickly whipped up in AutoHotKey
