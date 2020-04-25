#!/usr/bin/env bash
cd "$(dirname "$0")"
OUTPUT=${PWD}/output
EXTENSION=.tex
COVERPATH=private/cover-letters

build_filename () {
        echo "Building $1..."
        echo "--------------------"
        filenameWithoutPath=$(basename $1)
        filenameWithoutExtension="${filenameWithoutPath%.*}"
        jobname="${filenameWithoutExtension}-Cover-Letter"
        # Passing parameter \Filename https://tex.stackexchange.com/a/1495/213552
        pdflatex -output-format=pdf -output-directory=$OUTPUT -jobname=$jobname "\def\filename{${1}} \input{cover-letter.tex}"
}

build_all () {
    # Check if there is at least one .tex file in the coverpath directory
    # https://unix.stackexchange.com/a/87476/408649
    if ls ${COVERPATH}/*.tex &>/dev/null
    then
        echo "Building all cover letters..."
        echo "--------------------"
        # Looping through all files in a directory with the same extension
        # https://stackoverflow.com/a/14505622/11046178
        for filename in $COVERPATH/*.tex; do
            [ -f "$filename" ] || break
            build_filename $filename
        done
    else
        build_filename Company
    fi
}

if [ -z "$1" ]
then
    echo "No arguments supplied"
    build_all
else
    echo "Arguments supplied"
    # Iterate over all arguments
    # https://stackoverflow.com/a/255913/11046178
    for filenameWithoutPathNorExtension in "$@"
    do
        fullFilename=$COVERPATH/$filenameWithoutPathNorExtension$EXTENSION
        build_filename $fullFilename
    done
fi
