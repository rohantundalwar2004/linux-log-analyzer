#!/bin/bash

clear

echo "======================================="
echo "           TOP ERRORS"
echo "======================================="
echo

read -p "Enter log file path: " logfile

if [ ! -f "$logfile" ]
then
    echo "File not found!"
    exit
fi

echo
echo "Most Frequent Error Messages"
echo "-------------------------------------"

grep -i "ERROR" "$logfile" | sort | uniq -c | sort -nr

echo
echo "Total Errors : $(grep -ic "ERROR" "$logfile")"

echo
read -p "Press Enter to continue..."
