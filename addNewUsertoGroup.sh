#!/bin/bash
read -p "Type the user you want to add : " user
read -p "Type the group that you want to add the user in : " group

if getent group "$group"> /dev/null; then
   echo "The group '$group' already exists."
else
   echo "The group '$group' does not exist. creating the group "
   sudo groupadd "$group"
   echo "Group '$group' created successfully."
fi

sudo useradd -m -g "$group" "$user"
echo "user created successfully"
