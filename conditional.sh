#!/bin/bash

echo "Enter a number"

read num 

if [ "$num" -gt 10 ]; then 
    echo "THe number is greater than 10"
elif [ "$num" -lt 5 ]; then
    echo "Number is less than 5" 
else 
    echo "The number is less than or equal to or zero"

fi 
