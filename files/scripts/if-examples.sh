#!/bin/bash

# ******************************************************************************
# If examples

if [[ -d /etc/ ]]; then
	echo /etc/ is indeed a directory
fi

# Check to see if a file exists
if [[ -e sample.txt ]]; then
	echo The file sample.txt exists
else
	echo The file sample.txt does NOT exist
fi

# Check a variable's value
TEST_VAR="test"
if [[ $TEST_VAR == "test" ]]; then
	echo TEST_VAR has a value of "test"
elif [[ $TEST_VAR == "again" ]]; then
	echo TEST_VAR has a value of "again"
else
	echo TEST_VAR has an unknown value
fi
