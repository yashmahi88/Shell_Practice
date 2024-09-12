#!/bin/bash 

set -x
set +e
ls 

#set +e 
ls /notexists/  || echo "This path does not exists"

#set -e 
ls
