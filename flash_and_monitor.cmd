@echo off
setlocal

echo Starting ClearCore flash and serial monitor...
echo.

REM Run the flash command
echo Flashing ClearCore...
call "data\flash_clearcore.cmd" "put-firmware-bin-here\firmware.bin"

REM Check if flash was successful
if %errorlevel% equ 0 (
    echo.
    echo Flash successful! Starting serial monitor...
    echo Press Ctrl+C to exit serial monitor when done.
    echo.

    REM Wait a moment for the device to restart
    timeout /t 3 /nobreak >nul

    REM Start the serial monitor
    "data\SimplySerial_0.9.0_standalone\ss.exe"
) else (
    echo.
    echo Flash failed with error code: %errorlevel%
    echo Serial monitor will not be started.
    pause
    exit /b %errorlevel%
)

echo.
echo Script completed.
pause
