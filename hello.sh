#!/bin/bash

INFO_FILE="/home/boss/Script_Practice_Programs/info.txt"

ps aux > "$INFO_FILE"

echo "Info saved successfully to $INFO_FILE"

