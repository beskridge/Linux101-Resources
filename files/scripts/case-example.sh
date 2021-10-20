#!/bin/bash

# ******************************************************************************
# Case example

# Switch off of the first command line argument
case $1 in
[1-3])
	message="Argument is between 1 and 3 inclusive"
	;;
[4-6])
	message="Argument is between 4 and 6 inclusive"
	;;
[7-9])
	message="Argument is between 7 and 9 inclusive"
	;;
1[0-9])
	message="Argument is between 10 and 19 inclusive"
	;;
*)
	message="I don't understand the argument or it is missing"
	;;
esac

# Print out a message describing the result
echo $message
