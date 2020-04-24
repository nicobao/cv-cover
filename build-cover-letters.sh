#!/usr/bin/env bash
cd "$(dirname "$0")"

pdflatex -output-format=pdf -output-directory=./output -jobname=Cover-Letter cover-letter-1.tex
