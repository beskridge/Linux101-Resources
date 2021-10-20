#!/bin/bash

# ******************************************************************************
# Processing command line arguments

# What is the name of the executed script?
echo Name of script [$0]

# How many were provided?
echo Command line argument count [$#]

# Iterate through each argument
for arg in $@; do
	echo Argument [$arg]
done

# Display all the arguments as a string
echo All arguments [$*]

# Use parenthesis for arguments with numbers 10 or larger
if [ "${12}" != "" ]; then
	echo Argument 12 is [${12}]
	echo Argument 12 is NOT [$12]
fi
