#!/bin/bash

# Check if an argument is provided
if [ $# -ne 1 ]; then
    echo "enter multiple integer value"
    exit 1
fi

number=$1
reverse=""

# Loop through each digit of the number in reverse order and append to the reverse variable
while [ $number -gt 0 ]; do
    digit=$(( $number % 10 ))
    reverse="${reverse}${digit}"
    number=$(( $number / 10 ))
done
#hshs
# Print the reversed number
echo "Reversed number: $reverse"
