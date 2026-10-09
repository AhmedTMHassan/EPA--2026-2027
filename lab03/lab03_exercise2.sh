#!/bin/bash

date >> process.log

ct=$(ps -ef | wc -l)

if [ $ct -gt $1 ]; then
    echo "Maximum number of processes exceeded" >> process.log
else
    echo "The maximum number of processes NOT exceeded" >> process.log
fi
