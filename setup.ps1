$ErrorActionPreference = "Stop"

Write-Host "Upgrading pip..."
py -m pip install --upgrade pip

Write-Host "Installing uv..."
py -m pip install uv
powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"

Write-Host "Checking uv..."
uv --version

Write-Host "Running uv sync..."
uv sync

Write-Host "Done."