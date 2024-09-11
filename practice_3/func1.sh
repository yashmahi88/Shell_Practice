#!/bin/bash

file_count() {
    count=$(ls | wc -l) 
    echo "the count is $count"
}
file_count
