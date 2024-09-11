#!/bin/bash

if [ -e $1 ];then
  if [ -d $1 ];then
    exit 1
  elif [ -f $1 ];then
    exit 0
  else
    exit 2
  fi
else
  echo "{$1} file does no exists"
fi
