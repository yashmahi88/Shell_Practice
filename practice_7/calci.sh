#!/bin/bash

echo "Enter the first number: "
read num1

echo "Enter the second number: "
read num2

echo "Enter the basic operations to be performed (+, -, /, *): "
read oprt

case $oprt in 
    "*")
        num3=$((num1*num2))
        echo "$num3"
        ;;
    "+")
        num3=$((num1+num2))
        echo "$num3"
        ;;
    "-")
        num3=$((num1-num2))
        echo "$num3"
        ;;
    "/")
        num3=$((num1/num2))
        echo "$num3"
        ;;
esac