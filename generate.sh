#!/bin/bash
pandoc CV.md --reference-doc=reference_clean_A4.docx -f markdown+autolink_bare_uris -t docx -o CV_generated.docx