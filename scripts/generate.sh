#!/bin/bash
SRC=CV.md
DST=CV_generated.docx
TEMPLATE=templates/reference_clean_A4.docx
pandoc $SRC --reference-doc=$TEMPLATE -f markdown+autolink_bare_uris -t docx -o $DST