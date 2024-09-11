#!/bin/bash

#echo "Enter the name of the file:"
#read file

$1

if [ -e $1 ];then
  if [ -d $1 ]; then
    echo "This file is a directory!"
  elif [ -f $1 ]; then
    echo "this file is a regular file!"
  else
    echo"this file is other type of file"
  fi

  ls -l "$1"
else
  echo "this file does not exists."
fi
