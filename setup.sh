#!/usr/bin/env bash
set -euo pipefail

echo "Upgrading pip..."
python3 -m pip install --upgrade pip

echo "Installing uv..."
python3 -m pip install uv

echo "Checking uv..."
uv --version

echo "Running uv sync..."
uv sync

echo "Done."