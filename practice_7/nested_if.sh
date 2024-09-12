#!/bin/bash

echo "Print the number you want to check: "
read num

if [ $num -ge 0 ]; then
    if [ $num -eq 0 ]; then
        echo "Number is zero!"
    else
        echo "Number is positive!"
    fi 
else
    echo "Number is negative!"
fi
    