#!/bin/bash


check_age() {
    read -p "Enter your age: " age
    if [ "$age" -ge 18 ]; then
        echo "You are eligible to proceed."
        ask_for_file_creation
    else
        echo "You are not eligible to proceed. Age restriction applies."
        exit 1
    fi
}


ask_for_file_creation() {
    read -p "Do you want to create a text file with all disk space details? (y/n): " choice
    if [ "$choice" = "y" ] || [ "$choice" = "Y" ]; then
        create_file
    else
        echo "Operation cancelled."
        exit 0
    fi
}


create_file() {
    filename="disk_space_info.txt"
    echo "Generating disk space information..."

    
    sudo df -h > "$filename"
    
    
    chmod 644 "$filename"

    echo "File '$filename' created successfully and is ready for download."
}


check_age
