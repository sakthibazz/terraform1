#!/bin/bash

read -p "Enter the limit for the Fibonacci series: " user_input

# Initialize the Fibonacci sequence with the first two elements
answer=(0 1)

# Print the first two Fibonacci numbers
echo "${answer[0]}"
echo "${answer[1]}"

# Loop to generate Fibonacci numbers less than or equal to the input value
while [[ ${answer[1]} -le $user_input ]]; do
    new=$((answer[0] + answer[1]))
    if [[ $new -le $user_input ]]; then
        echo "$new"
        answer=("${answer[1]}" "$new")
    else
        break
    fi
done

