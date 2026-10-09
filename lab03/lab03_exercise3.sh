#!/bin/bash

ct=$(ps -ef | wc -l)

echo "Choose an option:"
echo "1. Display result on screen"
echo "2. Write result to file"

read choice

if [ $ct -gt $1 ]; then
    message="Maximum number of processes exceeded"
else
    message="The maximum number of processes NOT exceeded"
fi

if [ $choice -eq 1 ]; then
    echo "$message"
elif [ $choice -eq 2 ]; then
    date >> process.log
    echo "$message" >> process.log
fi
