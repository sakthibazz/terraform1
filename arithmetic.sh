#!/bin/bash

# Function to perform arithmetic operations on digits
perform_operations() {
    local number="$1"
    local result=${number:0:1}  # Initialize result with the first digit
    local operator="+"

    # Loop through each character of the string starting from the second character
    for ((i = 1; i < ${#number}; i++)); do
        local char="${number:i:1}"
        case $char in
            [0-9])  # If the character is a digit, perform the operation
                case $operator in
                    "+") result=$((result + char)) ;;
                    "-") result=$((result - char)) ;;
                    "*") result=$((result * char)) ;;
                    "/") result=$((result / char)) ;;
                esac ;;
            *)  # If the character is an operator, update the operator variable
                operator="$char" ;;
        esac
    done

    echo "Result: $result"
}

# Main script starts here

# Read input string from the user
read -p "Enter a string ending with an operator symbol: " input

# Extract the number part (excluding the operator)
number="${input:0:${#input}-1}"

# Perform arithmetic operations on digits
perform_operations "$number"
