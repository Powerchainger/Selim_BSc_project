
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

# File Tree

```.
├── README.md
├── setup.sh
├── setup.ps1
├── Temp_data.py
├── Combi_Pwc.ipynb
├── Combi_Pwc_nilm.ipynb
├── Combi_Refit_Agg.ipynb
├── Combi_Refit_AggS.ipynb
├── Combi_Refit_AggS_nilm.ipynb
├── Figures_complete.ipynb
├── Figures_pwc.ipynb
├── Data_analysis_REFIT_dbscan.ipynb
├── Data_analysis_REFIT_dbscan_agg.ipynb
├── Data_analysis_Pwc_dbscan.ipynb
├── XG_Pwc_nilm_Abl.ipynb
├── XG_Refit_nilm_Abl.ipynb
├── Result_Abl_pwc.ipynb
├── Result_Abl.ipynb
├── Predictions (Directory)
```

# Notes
- The Jupyter Notebooks contain the code for data analysis, model training, and result visualization.
- The `Temp_data.py` file is used to retrieve and store temperature data from the Open-Meteo API.
- The `Predictions` directory contains the output predictions from the models.
- File Names are indicative of their content, with "pwc" referring to the Powerchainger dataset and "REFIT" referring to the REFIT dataset. Agg refers to treating all houses as one aggregate, while AggS refers to treating each house separately. NILM refers to the addition of appliance-level data, and Abl refers to Ablation studies.
- The files named Combi_\*.ipynb contain the code for training and evaluating the models, while the files named Data_analysis_\*.ipynb contain the code for analyzing the behavior of houses with dbscan. The files with Figures_\*.ipynb contain the code for accuracy metrics and creating visualizations. The files named XG_\*.ipynb contain the code for performing the Ablation studies. The files named Result_\*.ipynb contain the code for visualizing the final results of the Ablation studies.
- There is currently no functionality for saving the trained models, but this can be added in the future if needed and can be implemented using libraries such as `joblib` or others.

# Running the notebooks with different datasets
- In order to run the notebooks with different houses, you will need to change the path specified in the "Import Data" section of the notebooks and in the "Import Temperature Information" section. Make sure to update the path accordingly before running the notebooks. Additionally, if the columns/features in the new dataset differ then make sure to update the "Feature Engineering" section of the notebooks to reflect the changes in the dataset, specifically the "get_weather_for_day" function.
- If working with a new dataset, make sure to update the cv_splits variable and other relevant variables in the "Tuning Functions for XGBoost, LightGBM, and Random Forest" section of the notebooks to ensure that the cross-validation is performed correctly. Additionally, update the starting day of the testing period and the number of days in the testing period in the "Main prediction Loop" section of the notebooks to ensure that the testing period is correctly defined for the new dataset.
- Finally, when working with a new dataset, if working with nilm or the ablation studies, make sure to update the device columns/names and thresholds in the "Import Data" section of the notebooks as well as in the "Feature Engineering" section of the notebooks, specifically, the "get_weather_for_day" function to ensure that the correct device data is being used for the analysis and modeling.