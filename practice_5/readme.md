# Practice Exercises - While Loops

## Exercise 1:
Write a shell script that loops through the /etc/passwd file one line at a time. Prepend each line
with a line number followed by a colon and then a space.

Example output:

1: root:x:0:0:root:/root:/bin/bash  
2: daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin  
3: bin:x:2:2:bin:/bin:/usr/sbin/nologin  
4: sys:x:3:3:sys:/dev:/usr/sbin/nologin

```sh
#!/bin/bash

line_no=1

while read -r line;do
  echo "${line_no}: ${line}"
  ((line_no++))
done < /etc/passwd

```
## Exercise 2:

Write a shell script that asks the user for the number of lines they would like to display from the /etc/passwd file and display those lines.

Example output:  
How many lines of /etc/passwd would you like to see? 3 

root:x:0:0:root:/root:/bin/bash  
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin  
bin:x:2:2:bin:/bin:/usr/sbin/nologin  

```sh
#!/bin/bash

echo "How many lines do you print from /etc/passwd?: "
read number

count=0
while read line && [ "$count" -lt "$number" ]; do
  echo "${line}"
  count=$((count+1))
  

done < /etc/passwd
```

## Exercise 3:
Write a shell script that that allows a user to select an action from the menu. The actions are to show the disk usage, show the uptime on the system, and show the users that are logged into the system. Tell the user to enter q to quit. Display "Goodbye!" just before the script exits.

If the user enters anything other than 1​,​2,3 or q tell them that it is an "Invalid option."  

You can show the disk usage by using the d​f​ command. To show the uptime, use the u​ptime command. To show the users logged into the system, use the who​ command. Print a blank line after the output of each command.

```sh
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
```