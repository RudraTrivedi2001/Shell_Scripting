#!/bin/bash
read -p "Type the path directory: " dir
if [ -d "$dir" ]; then
   cd "$dir" || exit


   echo "current files in the directories are :  "

   ls -al 
else 
   echo "THe directory does not exists" 
fi
