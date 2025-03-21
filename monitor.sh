#!/bin/bash
echo "Starting System Monitoring Script..."

ps aux> process.txt

echo "Checking if Firefox is running"
grep firefox process.txt > firefox_process.txt

echo "Firefox info saved to the firefox_process.txt"

echo "DISK USAGE -"
df -h 

echo "System Uptime"
uptime

echo "Memory Status"
free -h
echo "Monitoring complete"
