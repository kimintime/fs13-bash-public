#!/usr/local/bin/bash

# usage: sh calculate Header Button Footer

if [ $# -lt 1 ]; then
    echo "You should provid a valid arguement" && exit 1
fi

while [ $# -gt 0 ]; do
    sum=0
    component=$1
    files=$(find . -name "$component.tsx")

    for _ in $files;do
        sum=$(sum + 1)
    done

    echo "$component" = "$sum" 
    shift

done


