#!/usr/bin/env bash
cd "$(dirname "$0")"
OUTPUT=${PWD}/output




# Looping through all files in a directory with the same extension
# https://stackoverflow.com/a/14505622/11046178
for filename in private/cover-letters/*.tex; do
    [ -f "$filename" ] || break
    filenameWithoutPath=$(basename $filename)
    filenameWithoutExtension="${filenameWithoutPath%.*}"
    jobname="${filenameWithoutExtension}-Cover-Letter"
    # Passing parameter \Filename https://tex.stackexchange.com/a/1495/213552
    pdflatex -output-format=pdf -output-directory=$OUTPUT -jobname=$jobname "\def\filename{${filename}} \input{cover-letter.tex}"
done

 
