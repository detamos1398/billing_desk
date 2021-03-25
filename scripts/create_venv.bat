@echo off

echo "Checking %1 for virtual environment"
if exist %1\ (
  echo "Virtual environment already exists"
) else (
  echo "Creating virtual environment"
  python3 -m venv %1
  echo "Created the virtual environment"
)

echo "Activating the virtual environment"
%1\Scripts\activate.bat

if exist requirements.txt (
  echo "Populating virtual environment using requirements.txt"
  python3 -m pip install -r requirements.txt
  echo "Successfully populated the virtual environment"
)
