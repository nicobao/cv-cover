#!/usr/bin/env bash
cd "$(dirname "$0")"



pdflatex -output-format=pdf -output-directory=./output -jobname=$filename "\def\filename{qonto.tex} \input{cover-letter.tex}"
