#!/bin/bash

echo "Enter the number to generate the pattern:"
read n

echo "Pattern:"

counter=1

for ((i=1; i<=n; i++)); do
    for ((j=1; j<=i; j++)); do
        echo -n "$counter "
        ((counter++))
    done
    echo
done
