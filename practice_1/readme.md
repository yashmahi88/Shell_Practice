# Practice​ ​Exercises​ ​-​ ​Shell​ ​Scripting​ ​Succinctly

## Exercise​ ​1:
Write​ ​a​ ​shell​ ​script​ ​that​ ​prints​ ​"Shell​ ​Scripting​ ​is​ ​Fun!"​ ​to​ ​the​ ​screen.
Hint​ ​1:
Remember​ ​to​ ​make​ ​the​ ​shell​ ​script​ ​executable​ ​with​ ​the​ ​chmod​ ​command.
Hint​ ​2:
Remember​ ​to​ ​start​ ​your​ ​script​ ​with​ ​a​ ​shebang!

```sh
#!/bin/bash 

echo "Scripting is fun!"

```
## Exercise​ ​2:
Modify​ ​the​ ​shell​ ​script​ ​from​ ​exercise​ ​1​ ​to​ ​include​ ​a​ ​variable.​ ​ ​The​ ​variable​ ​will​ ​hold​ ​the​ ​contents
of​ ​the​ ​message​ ​"Shell​ ​Scripting​ ​is​ ​Fun!".

```sh
#!/bin/bash 
var="Scripting is fun!"

echo "${var}"
```
## Exercise​ ​3:
Store​ ​the​ ​output​ ​of​ ​the​ ​command​ ​"hostname"​ ​in​ ​a​ ​variable.​ ​ ​Display​ ​"This​ ​script​ ​is​ ​running​ ​on
_______."​ ​where​ ​"_______"​ ​is​ ​the​ ​output​ ​of​ ​the​ ​"hostname"​ ​command.
Hint:
It's​ ​a​ ​best​ ​practice​ ​to​ ​use​ ​the​ ​${VARIABLE}​ ​syntax​ ​if​ ​there​ ​is​ ​text​ ​or​ ​characters​ ​that​ ​directly
precede​ ​or​ ​follow​ ​the​ ​variable.

```sh
#!/bin/bash

server=$(hostname)
echo "This script is running on ${server}."
```
## Exercise​ ​4:
Write​ ​a​ ​shell​ ​script​ ​to​ ​check​ ​to​ ​see​ ​if​ ​the​ ​file​ ​"/etc/shadow"​ ​exists.​ ​ ​If​ ​it​ ​does​ ​exist,​ ​display
"Shadow​ ​passwords​ ​are​ ​enabled."​ ​ ​Next,​ ​check​ ​to​ ​see​ ​if​ ​you​ ​can​ ​write​ ​to​ ​the​ ​file.​ ​ ​If​ ​you​ ​can,
display​ ​"You​ ​have​ ​permissions​ ​to​ ​edit​ ​/etc/shadow."​ ​ ​If​ ​you​ ​cannot,​ ​display​ ​"You​ ​do​ ​NOT​ ​have
permissions​ ​to​ ​edit​ ​/etc/shadow."

```sh
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
```

## Exercise​ ​5:
Write​ ​a​ ​shell​ ​script​ ​that​ ​displays​ ​"man",​ ​"bear",​ ​"pig",​ ​"dog",​ ​"cat",​ ​and​ ​"sheep"​ ​to​ ​the​ ​screen​ ​with
each​ ​appearing​ ​on​ ​a​ ​separate​ ​line.​ ​ ​Try​ ​to​ ​do​ ​this​ ​in​ ​as​ ​few​ ​lines​ ​as​ ​possible.
Hint:​ ​Loops​ ​can​ ​be​ ​used​ ​to​ ​perform​ ​repetitive​ ​tasks.

```sh
#!/bin/bash

for object in man bear pig dog cat sheep
do
  echo "$object"
done

```
## Exercise​ ​6:
Write​ ​a​ ​shell​ ​script​ ​that​ ​prompts​ ​the​ ​user​ ​for​ ​a​ ​name​ ​of​ ​a​ ​file​ ​or​ ​directory​ ​and​ ​reports​ ​if​ ​it​ ​is​ ​a
regular​ ​file,​ ​a​ ​directory,​ ​or​ ​other​ ​type​ ​of​ ​file.
Also​ ​perform​ ​an​ ​ls​ ​command​ ​against​ ​the​ ​file​ ​or​ ​directory​ ​with​ ​the​ ​long​ ​listing​ ​option.

```sh
#!/bin/bash

echo "Enter the name of the file:"
read file

if [ -e $file ];then
  if [ -d $file ]; then
    echo "This file is a directory!"
  elif [ -f $file ]; then
    echo "this file is a regular file!"
  else
    echo"this file is other type of file"
  fi

  ls -l "$file"
else
  echo "this file does not exists."
fi

```
## Exercise​ ​7:
Modify​ ​the​ ​previous​ ​script​ ​so​ ​that​ ​it​ ​accepts​ ​the​ ​file​ ​or​ ​directory​ ​name​ ​as​ ​an​ ​argument​ ​instead​ ​of
prompting​ ​the​ ​user​ ​to​ ​enter​ ​it.

- Hint: here while executing the file u need to pass the file name
- e.g. ./filecheck.sh newfile

```sh
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
```
## Exercise​ ​8:
Modify​ ​the​ ​previous​ ​script​ ​to​ ​accept​ ​an​ ​unlimited​ ​number​ ​of​ ​files​ ​and​ ​directories​ ​as​ ​arguments.
Hint:​ ​You'll​ ​want​ ​to​ ​use​ ​a​ ​special​ ​variable.

```sh
#!/bin/bash

# Check if any arguments were provided
if [ "$#" -eq 0 ]; then
    echo "No files or directories provided."
    exit 1
fi

# Iterate over all arguments
for file in "$@"; do
    echo "Processing: $file"

    # Check if the file or directory exists
    if [ -e "$file" ]; then
        # Check if it is a directory
        if [ -d "$file" ]; then
            echo "$file is a directory."
        # Check if it is a regular file
        elif [ -f "$file" ]; then
            echo "$file is a regular file."
        else
            echo "$file is another type of file or special file."
        fi

        # Perform 'ls -l' on the file or directory
        ls -l "$file"
    else
        echo "$file does not exist."
    fi

    echo # Print a blank line for readability between files
done
```