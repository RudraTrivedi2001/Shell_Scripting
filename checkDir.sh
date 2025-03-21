#!/bin/bash
read -p "type the path of the dir : " dir
if [ -d "$dir" ]; then
   echo "DIR is already there"
else
    mkdir -p "$dir"
    echo "DIr created succesfully"
fi


