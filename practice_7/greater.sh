#!/bin/bash

number=(5 10 30 12 22 45)

max=${number[0]}

for num in "${number[@]}"; do
    if [ "$num" -gt "$max" ]; then
      max=$num 
    fi
done 

echo "The max number is: ${max}"
