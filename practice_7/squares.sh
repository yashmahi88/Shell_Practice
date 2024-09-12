#!/bin/bash

echo "Enter the number upto you want the squares: "
read num
echo

for square in $(seq 1 $num); do
    num1=$((square*square))
    echo "The square of $num is $num1"
done 