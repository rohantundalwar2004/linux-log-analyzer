#!/bin/bash

clear

echo "======================================="
echo "          KEYWORD SEARCH"
echo "======================================="
echo

read -p "Enter log file path: " logfile

if [ ! -f "$logfile" ]
then
    echo
    echo "File not found!"
    exit
fi

read -p "Enter keyword: " keyword

echo
echo "Searching for \"$keyword\"..."
echo "-------------------------------------"

grep -i "$keyword" "$logfile"

count=$(grep -i "$keyword" "$logfile" | wc -l)

echo
echo "Total Matches : $count"

echo
read -p "Press Enter to continue..."
