
#!/bin/bash

usage() {
    echo "Usage: lab04_cpu_count_2.sh [MAX_NUM_CORES]"
}

if [ -z "$1" ]; then
    usage
    exit 1
fi

required=$1
cores=$(grep -c '^processor' /proc/cpuinfo)

if [ "$cores" -lt "$required" ]; then
    echo "Error: Not enough CPU cores"
    exit 1
fi

echo "Enough CPU cores available"
