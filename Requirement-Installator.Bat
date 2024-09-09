:: Script: Requirement-Installator.Bat

:: Initialization
@echo off
echo Initialization Done

:: Globals
set "PYTHON_VERSION_NODECIMAL=311"
set "SCRIPT_DIRECTORY_PATH=%~dp0"
set "PIP_VERSION=Not Detected"
set "SETUPTOOLS_VERSION=Not Detected"
set "REQUIREMENTS_STATUS=Missing"
set "PYTHON_EXE_TO_USE="
echo Globals Done

:: Initialize Display
call :banner

:: Check Admin
net session >nul 2>&1 || (
    echo Error: Admin privileges required. Right-click and select "Run as administrator".
    timeout /t 3 >nul
    goto :end_of_script
)
echo Admin Status: Administrator
timeout /t 1 >nul

:: Initialization Done
goto :menu

:banner
cls
echo ========================================================================================================================
echo     Requirement-Installator
echo ========================================================================================================================
echo.
timeout /t 1 >nul
goto :eof

:menu
call :banner
call :find_python
call :get_versions_and_check_requirements
echo.
echo.
echo.
echo     1. Change Python Version
echo         (v%PYTHON_VERSION_NODECIMAL%)
echo.
echo     2. Install Requirements
echo         (Status: %REQUIREMENTS_STATUS%)
echo.
echo     3. Upgrade Pip To Latest
echo         (v%PIP_VERSION%)
echo.
echo     4. Re-Install Setup-Tools
echo         (v%SETUPTOOLS_VERSION%)
echo.
echo     5. Check Dependencies
echo         (Including Unrelated)
echo.
echo.
echo.
echo.
echo ========================================================================================================================
set /p user_choice="Selection; Menu Options = 1-5, Exit Program = X: "
if /i "%user_choice%"=="1" goto :change_python_version
if /i "%user_choice%"=="2" goto :install_requirements
if /i "%user_choice%"=="3" goto :upgrade_pip
if /i "%user_choice%"=="4" goto :reinstall_setuptools
if /i "%user_choice%"=="5" goto :check_dependencies
if /i "%user_choice%"=="X" exit /b 0
goto :menu

:find_python
for %%I in (
    "C:\Program Files\Python%PYTHON_VERSION_NODECIMAL%\python.exe"
    "C:\Users\%USERNAME%\AppData\Local\Programs\Python\Python%PYTHON_VERSION_NODECIMAL%\python.exe"
) do if exist "%%~I" set "PYTHON_EXE_TO_USE=%%~I"
if not defined PYTHON_EXE_TO_USE (
    echo Error: Python %PYTHON_VERSION_NODECIMAL% not found. Please install it before running this script.
    timeout /t 3 >nul
    goto :end_of_script
)
goto :eof

:change_python_version
call :banner
set /p PYTHON_VERSION_NODECIMAL="Enter the new Python version (e.g., 310 for Python 3.10): "
goto :menu

:upgrade_pip
call :banner
if defined PYTHON_EXE_TO_USE (
    "%PYTHON_EXE_TO_USE%" -m pip install --upgrade pip && echo Pip successfully upgraded || echo Pip upgrade failed.
) else (
    echo Error: Python executable not found.
)
pause
goto :menu

:reinstall_setuptools
call :banner
if defined PYTHON_EXE_TO_USE (
    "%PYTHON_EXE_TO_USE%" -m pip install --upgrade --force-reinstall setuptools wheel && echo Setup-Tools and Wheel reinstalled successfully || echo Failed to reinstall setuptools and wheel.
) else (
    echo Error: Python executable not found.
)
pause
goto :menu

:install_requirements
call :banner
if not exist "%SCRIPT_DIRECTORY_PATH%\requirements.txt" (
    echo Error: `requirements.txt` not found in the script directory.
    set /p requirements_path="Enter the full-path to requirements.txt: "
    if not exist "%requirements_path%" (
        echo Error: File was not found, check the path/filename.
        pause
        goto :menu
    )
) else (
    set "requirements_path=%SCRIPT_DIRECTORY_PATH%\requirements.txt"
)
if defined PYTHON_EXE_TO_USE (
    "%PYTHON_EXE_TO_USE%" -m pip install -r "%requirements_path%" && echo Requirements installed successfully || echo Failed to install requirements.
) else (
    echo Error: Python executable not found.
)
pause
goto :menu


:check_dependencies
call :banner
if defined PYTHON_EXE_TO_USE (
    "%PYTHON_EXE_TO_USE%" -m pip check && echo All dependencies are installed and conflict-free. || echo Warning: Some package conflicts detected.
) else (
    echo Error: Python executable not found.
)
pause
goto :menu

:get_versions_and_check_requirements
if defined PYTHON_EXE_TO_USE (
    "%PYTHON_EXE_TO_USE%" -c "import pip; print(pip.__version__)" 2>nul > %temp%\pip_version.txt
    if %errorlevel% equ 0 (
        for /f "delims=" %%a in (%temp%\pip_version.txt) do set "PIP_VERSION=%%a"
    ) else (
        set "PIP_VERSION=Not Detected"
    )

    "%PYTHON_EXE_TO_USE%" -c "import setuptools; print(setuptools.__version__)" 2>nul > %temp%\setuptools_version.txt
    if %errorlevel% equ 0 (
        for /f "delims=" %%a in (%temp%\setuptools_version.txt) do set "SETUPTOOLS_VERSION=%%a"
    ) else (
        set "SETUPTOOLS_VERSION=Not Detected"
    )

    if exist "%SCRIPT_DIRECTORY_PATH%\requirements.txt" (
        set "REQUIREMENTS_STATUS=Present"
    ) else (
        set "REQUIREMENTS_STATUS=Missing"
    )
) else (
    echo Debug: PYTHON_EXE_TO_USE is not defined
    set "PIP_VERSION=Not Detected"
    set "SETUPTOOLS_VERSION=Not Detected"
    set "REQUIREMENTS_STATUS=Not Detected"
)
goto :eof

:end_of_script
echo ...All processes finished.
pause
exit /b