#!/bin/bash

# ******************************************************************************
# Process variable examples

# What is the current process ID?
echo Current process ID $$

# Execute a command
ls > /dev/null &

# What was its PID
echo Last process PID $!

# What was its exit status?
echo Child process exit status $?
