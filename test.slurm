#!/bin/bash

#SBATCH --job-name=pytorch_job
#SBATCH --nodes=1
#SBATCH --ntasks=10
#SBATCH --cpus-per-task=4  # Assuming each task will use 4 CPUs.
#SBATCH --mem=8G  # Adjust the memory to fit the requirements of your job.
#SBATCH --partition=scavenger  # Make sure this is a valid partition.
#SBATCH --time=02:00:00  # Adjust the wall-clock time as needed.
#SBATCH --output=pytorch_job_%j.out
#SBATCH --error=pytorch_job_%j.err

# Load the modules for Python and PyTorch
# The versions may need to be adjusted according to what's available on your system.
module load python/3.12.1
module load pytorch/2.2.1

# Your system might require loading CUDA module if GPUs are needed
module load cuda/11.0

# If the modules do not exist, you'll need to set up a Python virtual environment instead

# Setup a Python virtual environment and activate it
# Replace 'myenv' with your desired virtual environment name
python -m venv test1
source test1/bin/activate

# Upgrade pip and install the required packages
pip install --upgrade pip
pip install torch==2.2.1 torchvision==0.17.1 torchaudio==2.2.1

# Now you can run your Python script
python main.py

# Deactivate the virtual environment at the end of the script
deactivate
