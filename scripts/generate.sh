#!/bin/bash
SRC_NAME=CV_arch

SRC=src/$SRC_NAME.md
DST=generated/$SRC_NAME.docx

TEMPLATE=templates/reference_clean_A4_lists_tight.docx

pandoc $SRC --reference-doc=$TEMPLATE -f markdown+autolink_bare_uris -t docx -o $DST