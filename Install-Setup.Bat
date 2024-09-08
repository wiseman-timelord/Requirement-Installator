:: SCRIPT: Install-Setup.Bat
@echo off
setlocal EnableDelayedExpansion

:: Persistence Variables
set "PYTHON_VERSION_NODECIMAL=311"
set "PYTHON_EXE_TO_USE="
set "SCRIPT_DIRECTORY_PATH="

:: Initialize Display
cls
echo ========================================================================================================================
echo     Install-Setup
echo ========================================================================================================================
echo.
timeout /t 1 >nul

:: ADMIN AND DP0, BLOCK, DO NOT MODIFY: START
net session >nul 2>&1 || (
    echo Error: Admin privileges required. Right-click and select "Run as administrator".
    timeout /t 3 >nul
    exit /b 1
)
echo Status: Administrator
timeout /t 1 >nul
set "SCRIPT_DIRECTORY_PATH=%~dp0"
set "SCRIPT_DIRECTORY_PATH=%SCRIPT_DIRECTORY_PATH:~0,-1%"
pushd "%SCRIPT_DIRECTORY_PATH%"
echo Working Folder: %SCRIPT_DIRECTORY_PATH%
timeout /t 1 >nul
:: ...ADMIN AND DP0, BLOCK, DO NOT MODIFY: END

:: FIND PYTHON BLOCK, DO NOT MODIFY: START
for %%I in (
    "C:\Program Files\Python%PYTHON_VERSION_NODECIMAL%\python.exe"
    "C:\Users\%USERNAME%\AppData\Local\Programs\Python\Python%PYTHON_VERSION_NODECIMAL%\python.exe"
) do (
    if exist "%%~I" (
        set "PYTHON_EXE_TO_USE=%%~I"
        goto :found_python_version
    )
)
:found_python_version
if not defined PYTHON_EXE_TO_USE (
    echo Error: Python %PYTHON_VERSION_NODECIMAL% not found. Please install it before running this script.
    timeout /t 3 >nul
    goto :end_of_script
)
echo Python %PYTHON_VERSION_NODECIMAL% Found
timeout /t 1 >nul
:: FIND PYTHON BLOCK, DO NOT MODIFY: END

:: Ensure setuptools and wheel are correctly installed
echo Ensuring setuptools and wheel are properly installed...
"%PYTHON_EXE_TO_USE%" -m pip install --upgrade --force-reinstall setuptools wheel
if errorlevel 1 (
    echo Failed to reinstall setuptools and wheel. Carrying On...
)
echo Setuptools and Wheel, Processes Finished.
echo.

:: Install requirements and verify Install.
echo Installing Requirements...
"%PYTHON_EXE_TO_USE%" -m pip install -r requirements.txt
echo Processed: `requirements.txt`
echo.
echo Verifying installation...
"%PPYTHON_EXE_TO_USE%" -m pip check
if errorlevel 1 (
    echo Warning: Some conflicts may still exist. Please review the output above.
) else (
    echo All packages are installed correctly with no conflicts.
)
echo.

:end_of_file
echo ...All processes finished.
pause
exit /b