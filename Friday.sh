#!/bin/bash
db_name="cdac_cd"
db_user="postgres"
backup_dir="/tmp/Postgres_Backups"

mkdir -p "$backup_dir"
timestamp=$(date +"%Y%m%d%H")

backup_file="${backup_dir}/${db_name}_backup_$timestamp.sql"
pg_dump -U "$db_user" -F c -b -v -f "$backup_file" "$db_name"

if [ $? -eq 0 ]; then
    echo "Backup of database '$db_name' completed successfully and saved to: $backup_file"
else
    echo "Backup failed. Please check your configurations."
fi
