#!/bin/bash

FILE_TO_BACKUP="/home/boss/Script_Practice_Programs/info.txt"
BACKUP_DIR="/home/boss/backup"

TIMESTAMP=$(date +"%Y%m%d%H%M")
BACKUP_FILE="${BACKUP_DIR}/hello_backup_$TIMESTAMP.txt"

cp "$FILE_TO_BACKUP" "$BACKUP_FILE"


if [ $? -eq 0 ]; then
    echo "Backup successfully created at $BACKUP_FILE"
else
    echo "Backup failed"
fi
