#!/bin/bash

clear

echo "======================================="
echo "            LOG SUMMARY"
echo "======================================="
echo

read -p "Enter log file path: " logfile

if [ ! -f "$logfile" ]
then
    echo "File not found!"
    exit
fi

echo
echo "File Name      : $(basename "$logfile")"
echo "Total Lines    : $(wc -l < "$logfile")"
echo "INFO Entries   : $(grep -ic "INFO" "$logfile")"
echo "WARNING Entries: $(grep -ic "WARNING" "$logfile")"
echo "ERROR Entries  : $(grep -ic "ERROR" "$logfile")"

echo
echo "Last 5 Log Entries"
echo "--------------------------------"

tail -5 "$logfile"

echo
read -p "Press Enter to continue..."
