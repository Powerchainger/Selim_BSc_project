# Project setup

This project uses `uv` to manage dependencies and create the local virtual environment.

## First-time setup

Make sure Python is installed.

### Linux

```bash
chmod +x setup.sh
./setup.sh
```
### Windows

```powershell
.\setup.ps1
```

## Running the Jupyter Notebooks

You will find a kernel named "selim-bsc-project" in the Jupyter Notebook interface. Select this kernel to run the notebooks in this project.

## Alternative: Use Jupyter Lab
If you do not have VS Code installed, you can use Jupyter Lab to run the notebooks in a browser. After running the setup script, you can start Jupyter Lab with the following command:

```bash
uv run jupyter lab
```