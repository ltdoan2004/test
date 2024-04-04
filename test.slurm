#!/bin/bash

#SBATCH --job-name=pytorch_job
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=8G
#SBATCH --partition=batch  # Assuming 'batch' is a suitable partition
#SBATCH --time=02:00:00
#SBATCH --output=pytorch_job_%j.out
#SBATCH --error=pytorch_job_%j.err

# Load the appropriate Python module
module load python3  # Use 'module avail' to find the correct version

# Create and activate the virtual environment
python -m venv ~/test
source ~/test/bin/activate

# Make sure pip is available
which pip
# Upgrade pip and install the required packages
pip install --upgrade pip
pip install torch torchvision

# Now you can run your Python script
python main.py

# Deactivate the virtual environment at the end of the script
deactivate
