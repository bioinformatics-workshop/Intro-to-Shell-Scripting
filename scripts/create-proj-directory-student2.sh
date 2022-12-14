#!/bin/bash

# Ask the user for their name
echo "Hello, what is the name of the directory?"

read varname 

#check if foldername exist.
while [ -d $varname ]
do
       echo Directory $varname exist, please provide a new name
       read varname
done
#making folder and subfolder
echo As you wish, making directory $varname
mkdir $varname
touch $varname/README.md
mkdir $varname/raw
mkdir $varname/code
mkdir $varname/report
mkdir $varname/analysis
mkdir $varname/analysis/analysis{1..5}
