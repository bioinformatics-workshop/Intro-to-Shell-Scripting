#!/bin/sh
read -p "what is your project name? " PROJECT_NAME
NAMES="raw code report analysis"
if [ -d $PROJECT_NAME ]
then
    echo "Project folder already exists"
else
    echo "Creating files and folders..."
    mkdir $PROJECT_NAME
    for NAME in $NAMES
    do
        mkdir $PROJECT_NAME/$NAME
    done
    for num in 1 2 3 4 5
    do
        mkdir $PROJECT_NAME/"analysis/analysis"$num
    done
    touch $PROJECT_NAME/"README.md"
fi

