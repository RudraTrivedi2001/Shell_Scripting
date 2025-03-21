#!/bin/bash
file_path="/home/boss/Script_Practice_Programs/process.txt"
backup_path="/home/boss/Script_Practice_Programs/tar"


mkdir -p "$backup_path"
 
timestamp=$(date +"%Y%m%d_%H%M%S")
backup_file="${backup_path}/backup_${timestamp}.tar.gz"

tar -czvf "$backup_file" "$file_path"

if [ $? -eq 0 ]; then
   echo "Backup complete"
else
   echo "backup failed"
fi

