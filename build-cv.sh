#!/usr/bin/env bash
cd "$(dirname "$0")"

pdflatex -output-format=pdf -output-directory=./output -jobname=Nicolas-Gimenez-CV-en nico-cv.tex
