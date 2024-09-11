#!/bin/bash

today=$(date +%F)

for file in *.jpg; do
  mv "$file" "${today}.jpg"
  echo "Files renamed from '$file' to ${today}.jpg"
done
 
