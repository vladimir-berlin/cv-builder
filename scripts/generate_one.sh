#!/bin/bash
echo "$1"

SRC="$1"
echo $SRC

SRC_FILE="${SRC##*/}"     # remove path → example.test.js
SRC_NAME="${SRC_FILE%.*}"      # remove extension → example.test

# SRC_NAME=CV_arch

BASE_PATH=`pwd`
# SRC=$BASE_PATH/src/$SRC_NAME.md
DST=$BASE_PATH/generated/$SRC_NAME.docx
PDF=$BASE_PATH/generated/$SRC_NAME.pdf
TEMPLATE=$BASE_PATH/templates/reference_clean_A4_lists_tight.docx

pandoc $SRC --reference-doc=$TEMPLATE -f markdown+autolink_bare_uris -t docx -o $DST