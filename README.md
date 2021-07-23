# Duino_AVR_Miner_restarter
A looping restarter for the Duino-Coin AVR Miner application

This AHK script has been created by Alpay Kasal of https://Bignoodle.com, alpay at bignoodle.com .

Feel free to edit however you wish. To recompile to .exe , you'll want https://www.autohotkey.com/

Why was this made?

My AVR_Miner.exe (v2.56) worked well with my first batch of arduinos (metro mini's based on 328p), and I added some very cheap off-brand nano clones which started producing intermittant errors, delays, and changes in difficulty level (from 6 to 16 or 128) after about 40-60 minutes of mining. I could not isolate the problem. I looked at usb power, thermals, usb cables, and my hubs. Restarting the mining app would consistently solve things, but only for another 40-60 minutes. This script kills the miner (based on window title), waits 3 seconds for any clean-up windows might want to do, then restarts the miner based on the number of second in the .cfg file (default is 1800 seconds). It then loops.

You may mouse over the tray icon for this app to see how many times it has looped since it was first run.

Requirements:

1- Enter the amount of time between miner restarts in Duino_AVR_Miner_restarter.cfg with a text editor in seconds. The default is 1800 seconds (30 minutes).

2- Run this from the same folder containing AVR_Miner.exe (it relies on being relatively next to the miner)

3- This is Windows only as it has been quickly whipped up in AutoHotKey
