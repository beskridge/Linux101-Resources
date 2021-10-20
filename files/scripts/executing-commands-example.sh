#!/bin/bash

# ******************************************************************************
# Executing commands example

# Execute whoami command
user=$(whoami)

# Execute hostname command
hostname=$(hostname)

# Execute print working directory (pwd) command
directory=$(pwd)

# Display information
echo "User=[$user] Host=[$hostname] Working dir=[$directory]"

# Display contents of directory
echo "Contents:"
ls
