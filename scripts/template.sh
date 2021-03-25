#!/bin/bash

SCRIPTS_DIR="$(dirname ${BASH_SOURCE[0]})"

source $SCRIPTS_DIR/../python_venv/bin/activate

python3 $SCRIPTS_DIR/../hello_world.py $@
