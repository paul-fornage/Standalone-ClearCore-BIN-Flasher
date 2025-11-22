### Flash da clearcore

Windows only! If you are using Linux you don't need a helper script, and if you are on Mac we have beef.

- Unzip the folder if it came in a `.zip`

- Put `firmware.bin` in `put-firmware-bin-here`. 

- Run Flash ClearCore to flash, `flash_and_monitor.cmd` to flash and then view the output

- To just view the output without flashing, run `monitor.cmd`

### If that doesn't work, it's possible the shortcut broke. Here are the steps you can take _if the shortcut does not work_:

- Open the root folder from a terminal. Windows tries to make this impossible because it assumes the user doesn't mean 
to use the terminal. But basically open terminal (`win + r`, type `powershell`, enter) and then navigate the folder with `Flash ClearCore`
You can verify you are in the right place by doing `ls`, You should see the `data` folder, the `put-firmware-bin-here` folder,
and `Flash ClearCore`.
- Type `.\data\flash_clearcore.cmd put-firmware-bin-here\firmware.bin`

- To also view serial output, type `data/SimplySerial_0.9.0_standalone/ss.exe`


This should do the same thing but with extra steps 



## I did not make these tools

[SimplySerial](https://github.com/fasteddy516/SimplySerial)

[ClearCore Flasher](https://github.com/Teknic-Inc/ClearCore-library/tree/master/Tools)

[BOSSAC](https://github.com/shumatech/BOSSA)

