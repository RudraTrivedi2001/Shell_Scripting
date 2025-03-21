#!/bin/bash


read -p "Enter the email address you want to send the mail to: " recipient


read -p "Enter the subject of the mail: " subject


echo "Enter the message you want to send (End with Ctrl+D):"
message=$(</dev/stdin)  
if [ -z "$message" ]; then
   echo "Message cannot be empty. Please try again."  
   exit 1
fi


echo "$message" | mail -s "$subject" "$recipient"

echo "Email sent successfully to $recipient"
 
