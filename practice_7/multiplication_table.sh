#!/bin/bash

echo "Enter a number: " 
read num

echo  #THis will print a blank line 

for mul in {1..10}; do
    num1=$((num*mul))
    echo "$num1"
done
