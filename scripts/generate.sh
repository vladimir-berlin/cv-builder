#!/bin/bash
SRC_NAME=CV_arch

BASE_PATH=`pwd`
SRC=$BASE_PATH/src/$SRC_NAME.md
DST=$BASE_PATH/generated/$SRC_NAME.docx
PDF=$BASE_PATH/generated/$SRC_NAME.pdf

TEMPLATE=templates/reference_clean_A4_lists_tight.docx

pandoc $SRC --reference-doc=$TEMPLATE -f markdown+autolink_bare_uris -t docx -o $DST