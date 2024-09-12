#!/bin/bash

echo "How many lines do you print from /etc/passwd?: "
read number

count=0
while read line && [ "$count" -lt "$number" ]; do
  echo "${line}"
  count=$((count+1))
  

done < /etc/passwd