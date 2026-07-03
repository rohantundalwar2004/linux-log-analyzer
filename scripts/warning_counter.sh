#!/bin/bash

clear

echo "======================================="
echo "         WARNING COUNTER"
echo "======================================="
echo

read -p "Enter log file path: " logfile

if [ ! -f "$logfile" ]
then
    echo
    echo "File not found!"
    exit
fi

count=$(grep -i "warning" "$logfile" | wc -l)

echo
echo "Total WARNING entries : $count"

echo
echo "Warning Lines:"
echo "------------------------------------"

grep -i "warning" "$logfile"

echo
read -p "Press Enter to continue..."
