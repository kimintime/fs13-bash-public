#!/usr/local/bin/bash

#!/bin/bash

# Check if the number of arguments is valid
if [ $# -lt 1 ]; then
    echo "Usage: $0 path/to/repo [author1] [author2] ..."
    exit 1
fi

# Get the repository directory as the first argument
repo_dir=$1

# Move to the repository directory
cd "$repo_dir" || exit 

# If author names are provided as arguments, filter the contributors list
if [ $# -gt 1 ]; then
    # Get the list of contributors with the number of commits for each author
    for author in "${@:2}"
    do
        echo -n "$author - "
        git log --author="$author" --pretty=tformat: --numstat \
        | awk '/^[[:digit:]]/ {add+=$1; subs+=$2; loc+=($1-$2)} END {printf "%d\n", loc}'
    done
else
    # Get the list of all contributors with the number of commits for each
    git shortlog -sn
fi


