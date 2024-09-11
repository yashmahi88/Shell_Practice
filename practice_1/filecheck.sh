#!/bin/bash

echo "Enter the name of the file:"
read file

if [ -e $file ];then
  if [ -d $file ]; then
    echo "This file is a directory!"
  elif [ -f $file ]; then
    echo "this file is a regular file!"
  else
    echo"this file is other type of file"
  fi

  ls -l "$file"
else
  echo "this file does not exists."
fi
