#!/bin/bash
read -p "Enter a fileName You want to check if it exists or not : " filename

if [ -e "$filename" ] && [ -r "$filename" ]; then 
   echo "The file exists and is readable"
else
   echo "file either does not exist or is not readable"
fi

