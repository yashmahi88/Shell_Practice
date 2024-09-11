#!/bin/bash

today=$(date +%F)
echo "Enter the file extension (eg; jpg,txt): "
read ext
echo "Enter a file prefix: (Press ENTER for ${today} ): "
read pref

if [ -z "$pref" ];then
  pref=$today
fi
for file in *.$ext; do
  mv "$file" "${pref}.${ext}"
  echo "Renamed file $file to ${pref}.${ext}"
done
