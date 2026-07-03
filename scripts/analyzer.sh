#!/bin/bash

while true
do
clear

echo "=========================================="
echo "         Linux Log Analyzer v1.0"
echo "=========================================="
echo
echo "1. Error Counter"
echo "2. Warning Counter"
echo "3. Keyword Search"
echo "4. Log Summary"
echo "5. Top Errors"
echo "6. Exit"
echo

read -p "Enter your choice: " choice

case $choice in

1)
    ./error_counter.sh
    ;;

2)
    ./warning_counter.sh
    ;;

3)
    ./keyword_search.sh
    ;;

4)
    ./log_summary.sh
    ;;

5)
    ./top_errors.sh
    ;;

6)
    exit
    ;;

*)
    echo "Invalid Choice"
    sleep 2
    ;;

esac

done
