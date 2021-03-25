@echo off

set location=%~dp0..

echo Checking %location%\%1 for virtual environment
if exist %location%\%1\ (
  echo Virtual environment already exists
) else (
  echo Creating virtual environment
  python -m venv %location%\%1
  echo Created the virtual environment
)

echo Activating the virtual environment using %location%\%1\Scripts\activate.bat
call %location%\%1\Scripts\activate.bat

if exist %location%\requirements.txt (
  echo Populating virtual environment using %location%\requirements.txt
  python -m pip install -r requirements.txt
  echo Successfully populated the virtual environment
) else (
  echo Couldn\'t find %location%\requirements.txt
)
