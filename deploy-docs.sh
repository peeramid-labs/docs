#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Initialize Python virtual environment
python3 -m venv .venv

# Source the virtual environment
source .venv/bin/activate

# Install dependencies from requirements.txt
pip install -r requirements.txt

# Run mkdocs gh-deploy
mkdocs gh-deploy

# Deactivate the virtual environment
deactivate