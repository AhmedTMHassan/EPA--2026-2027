#!/bin/bash

required=$1
cores=$(grep -c '^processor' /proc/cpuinfo)

if [ "$cores" -lt "$required" ]; then
    echo "Error: Not enough CPU cores"
    exit 1
fi

echo "Enough CPU cores available"
