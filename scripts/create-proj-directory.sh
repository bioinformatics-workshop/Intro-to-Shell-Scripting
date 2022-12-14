#!/bin/sh

# This shell script will create a project directory with sub-directories and files
# based on the user-specified project name

# Get the project name
echo "What's the project name?"
read -p "Enter the project name:
(Use only characters, numbers, or underscore) " PROJ_NAME

# Check whether project name already exists

if [ -d $PROJ_NAME ]
then
    echo "This project name already exists"
else
    for FOLDER in raw code report
    do 
        mkdir -p $PROJ_NAME/${FOLDER}
    done
    touch $PROJ_NAME/README.md 
    for NUM in 1 2 3 4 5
    do 
        mkdir -p $PROJ_NAME/analysis/analysis${NUM}
    done
fi 

# Visualize new project folder (optional)
tree $PROJ_NAME
