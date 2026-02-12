#!/bin/bash
BASE_PATH=`pwd`

SRC="$1"
SRC_FILE="${SRC##*/}"
SRC_NAME="${SRC_FILE%.*}"

DST=$BASE_PATH/generated/$SRC_NAME.docx
PDF=$BASE_PATH/generated/$SRC_NAME.pdf
# TEMPLATE=$BASE_PATH/templates/reference_clean_A4_lists_tight.docx
TEMPLATE=$BASE_PATH/templates/reference_template_spacing_adjusted.docx


pandoc $SRC --reference-doc=$TEMPLATE -f markdown+autolink_bare_uris -t docx -o $DST