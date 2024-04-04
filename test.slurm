#!/bin/bash

#SBATCH --job-name=pytorch_job
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=8G
#SBATCH --partition=batch
#SBATCH --time=02:00:00
#SBATCH --output=pytorch_job_%j.out
#SBATCH --error=pytorch_job_%j.err

# Use module avail to find the correct module name for Python
# module load python/3.x

# If module load doesn't work, you may need to use conda or another environment manager, like so:
# module load miniconda3
# source activate myenv

# Alternatively, you might try loading Python as follows if 'python3' is a correct module name:
module --ignore-cache load python3
module load torch 
module load torchvision
# Make sure the virtual environment tool is available

which python3
which venv

# Create and activate the virtual environment
python3 -m venv ~/test
source ~/test/bin/activate

# Now that the virtual environment is activated, pip should be available
which pip
pip install --upgrade pip
pip install torch torchvision

# Run the Python script
python main.py

# Deactivate the virtual environment
deactivate
