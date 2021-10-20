#!/bin/bash

# ******************************************************************************
# For loop examples

echo -----------------------------------
echo For loops

# Iterate through the numbers 1 through 5 and print them out
echo Print out a hard-coded sequence
for i in 1 2 3 4 5; do
    echo Index=[$i]
done

# Same as above, but generate the sequence
echo Print out a generated sequence
for i in {1..5}; do
    echo Index=[$i]
done

# Same as above, but use a more conventional format
#   NOTE: Double parenthesis are used since we are doing arithmetic
echo Print out a generated sequence using the 3-expression format
for(( i=1; i<=5; i++ ))
do
    echo Index=[$i]
done

# Print out the last line of each shell script in the current directory
echo Print out the last line of each shell script
for FILE in *.sh
do
    echo =====================================
    echo File=[$FILE]
    tail -n 1 $FILE
done

echo ''

# ******************************************************************************
# While loop example

echo -----------------------------------
echo While loop

# Countdown to blastoff
echo Executing a while loop to countdown to blastoff
counter=5
while [[ $counter -gt 0 ]]; do
    echo Countdown [$counter]
    counter=$(($counter - 1))
done
echo Blastoff
