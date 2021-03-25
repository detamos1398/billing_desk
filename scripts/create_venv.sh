#!/bin/bash

echo "Checking $1 for virtual environment";

if [[ -d "$1" ]]
then
    echo "Virtual environment already exists";
else
    echo "Creating virutal environment using : python3 -m venv $1";
    python3 -m venv $1;
    echo "Created the virutal environment";
fi

echo "Activating the virtual environment";
source $1/bin/activate;


if [[ -f "requirements.txt" ]]
then
    echo "Populating virtual envrionment using requirements.txt";
    python3 -m pip install -r requirements.txt;
    echo "Successfully populated the virtual environment";
fi

