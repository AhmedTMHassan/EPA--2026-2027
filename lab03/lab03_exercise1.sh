#!/bin/bash

ct=$(ps -ef | wc -l)

if [ $ct -gt $1 ]; then
    echo "Maximum number of processes exceeded"
else
    echo "The maximum number of processes NOT exceeded"
fi
