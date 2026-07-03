#!/bin/bash

clear

echo "======================================="
echo "          ERROR COUNTER"
echo "======================================="
echo

read -p "Enter log file path: " logfile

if [ ! -f "$logfile" ]
then
    echo
    echo "File not found!"
    exit
fi

count=$(grep -i "error" "$logfile" | wc -l)

echo
echo "Total ERROR entries : $count"

echo
echo "Error Lines:"
echo "------------------------------------"

grep -i "error" "$logfile"

echo
read -p "Press Enter to continue..."
