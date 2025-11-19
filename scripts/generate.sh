#!/bin/bash
# echo "$@"

BASE_PATH=`pwd`
for file in "$@"; do
    # echo "Processing $file"
    $BASE_PATH/scripts/generate_one.sh $file
done