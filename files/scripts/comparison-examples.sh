#!/bin/bash

# ******************************************************************************
# Numerical comparison examples

# Create some variables
x=1
echo x=["$x"]
y=2
echo y=["$y"]
z=2
echo z=["$z"]


# Perform some comparisons
# Numeric: Not equals
if [[ "$x" -ne "$y" ]]; then
	echo ["$x"] ne ["$y"]
fi

# Numeric: Equals
if [[ "$y" -eq "$z" ]]; then
	echo ["$y"] eq ["$z"]
fi

# Numeric: Greater than
if [[ "$y" -gt "$x" ]]; then
	echo ["$y"] gt ["$x"]
fi

# Numeric: Greater than or equal to
if [[ "$y" -ge "$z" ]]; then
	echo ["$y"] ge ["$z"]
fi

# Numeric: Less than
if [[ "$x" -lt "$y" ]]; then
	echo ["$x"] lt ["$y"]
fi

# Numeric: Less than or equal to
if [[ "$y" -le "$z" ]]; then
	echo ["$y"] le ["$z"]
fi


# ******************************************************************************
# String comparison examples

# Create some variables
a="A"
echo a=["$a"]
b="B"
echo b=["$b"]
anotherA="A"
echo anotherA=["$anotherA"]

# Perform some comparisons
# String: Equals
if [[ "$a" == "$anotherA" ]]; then
	echo ["$a"] "==" ["$anotherA"]
fi

# String: Not equals
if [[ "$a" != "$b" ]]; then
	echo ["$a"] "!=" ["$b"]
fi

# String: Less than
if [[ "$a" < "$b" ]]; then
	echo ["$a"] "<" ["$b"]
fi

# String: Greater than
if [[ "$b" > "$a" ]]; then
	echo ["$b"] ">" ["$a"]
fi
