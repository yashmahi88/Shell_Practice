# Practice Problems: Shell

## 1) Write a shell script to find maximum number from array.

```sh
#!/bin/bash

number=(5 10 30 12 22 45)

max=${number[0]}

for num in "${number[@]}"; do
    if [ "$num" -gt "$max" ]; then
      max=$num 
    fi
done 

echo "The max number is: ${max}"
```

## 2) Write a shell script to print logs, cpu usage and storage information using case statement.

```sh
#!/bin/bash

echo "Please an option what u want to do:"
echo "1 for logs"
echo "2 for cpu usage"
echo "3 for storage info"

read choice

case "$choice" in
  1)
    cat /var/log/syslog
    ;;
  2)
    mpstat
    ;;
  3)
    df -h
    ;;
esac
```

## 3) Write a shell script to take number from user input and then print table of that number

```sh

#!/bin/bash

echo "Enter a number: " 
read num

echo  #THis will print a blank line 

for mul in {1..10}; do
    num1=$((num*mul))
    echo "$num1"
done
```

## 4) Write a shell script to take number from user input and print square of numbers upto that input number (ex. if you enter 10 then you need to print square of 1 to 10)

```sh
#!/bin/bash

echo "Enter the number upto you want the squares: "
read num
echo

for square in $(seq 1 $num); do
    num1=$((square*square))
    echo "The square of $num is $num1"
done 
```

## 5) Write a shell script to check weather number is positive, negative or zero but using nested if-else.

```sh
#!/bin/bash

echo "Print the number you want to check: "
read num

if [ $num -ge 0 ]; then
    if [ $num -eq 0 ]; then
        echo "Number is zero!"
    else
        echo "Number is positive!"
    fi 
else
    echo "Number is negative!"
fi
```

## 6) Write a shell script to make a simple calculator using case statement.

```sh
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
```

## 7) Write a shell script to print number of files are available in present working directory.

```sh
#!/bin/bash


files=$(ls | wc -l) 

echo "$files"
```

## 8) Given two integers X and Y, identify whether  X < Y or X > Y or X=Y . 

Exactly one of the following lines:
- X is less than Y
- X is greater than Y
- X is equal to Y

```sh
#!/bin/bash

echo "Enter the first number"
read num1

echo "Enter the second number"
read num2

if [ $num1 -gt $num2 ]; then
  echo "${num1} is greater than ${num2}"
elif [ $num1 -lt $num2 ]; then
  echo "${num1} is less than ${num2}"
else
  echo "${num1} is equal to ${num2}"
fi

```
