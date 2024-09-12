#!/bin/bash

my_function(){
    echo "Please select one from the options:"
    echo "1 for showing the disk usage "
    echo "2 for showing the uptime "
    echo "3 for showing the user that are logged "
    echo "Press q for quitting"
    echo "Please enter your choice: "
}

while true; do
    my_function
    read choice 

    if [ "$choice" -eq "1" ]; then
    df -h

    elif [ "$choice" -eq "2" ]; then
    uptime

    elif [ "$choice" -eq "3" ]; then
    who

    elif [ "$choice" == "q" ]; then
    echo "Goodbye!"
    exit 0

    else 
    echo "Invalid option"

    fi
    echo
done