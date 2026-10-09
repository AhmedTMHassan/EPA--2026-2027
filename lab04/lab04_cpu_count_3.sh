
#!/bin/bash

usage() {
    echo "Usage: lab04_cpu_count_3.sh [MAX_NUM_CORES]"
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

printf "\nSystem information:\n"
printf "Working directory: "
pwd

printf "\nThe script checked the CPU requirement successfully.\n"
printf "The pwd command displays the current working directory.\n"
printf "The printf command formats and displays explanatory messages.\n"
