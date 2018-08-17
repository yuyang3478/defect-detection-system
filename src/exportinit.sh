#!/bin/bash

set -e

cd ~/models/research/

# Update PYTHONPATH.
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim

# Set up the working environment.
CURRENT_DIR=$(pwd)

cd "${CURRENT_DIR}"
