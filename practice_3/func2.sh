#!/bin/bash

file_count(){
  dir="$1"
  if [ -d "$dir" ];then
    count=$(ls | wc -l)
    echo "$dir:"
    echo "the count is ${count}"
  else
    echo "$dir is not a valid directory."
  fi
}
file_count "/etc"
file_count "/var"
file_count "/usr/bin"
 
