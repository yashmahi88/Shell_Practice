#!/bin/bash

file= "/etc/shadow"

if [ -e "$file" ]; then
   echo "Shadow password enable"
   if [ -w "$file" ]; then
      echo "you have permissions to edit"
   else
      echo "You have no permissions to edit."
   fi
else
   echo "The file does not exists"
fi
