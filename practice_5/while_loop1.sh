#!/bin/bash

line_no=1

while read -r line;do
  echo "${line_no}: ${line}"
  ((line_no++))
done < /etc/passwd
