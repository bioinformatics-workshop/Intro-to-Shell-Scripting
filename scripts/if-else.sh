#!/bin/sh

# learning about if-else statements

# Setting up variables
NAME=Brad
FILE=lessons/03-If-else-loop.md

# A simple IF statement
if [ "$NAME" == "Brandon" ]
then
    echo "Your name is Brandon"
fi

# # An IF-ELSE statement
# if [ "$NAME" == "Brandon" ]
# then
#     echo "Your name is Brandon"
# else
#     echo "Your name is not Brandon, it's ${NAME}"
# fi

# # An ELSE-IF (elif) statement
# if [ "$NAME" == "Brandon" ]
# then
#   echo "Your name is Brandon"
# elif [ "$NAME" == "Jack" ]
# then  
#   echo "Your name is Jack"
# elif [ "$NAME" == "Bob" ]
# then  
#   echo "Your name is Bob"
# else 
#   echo "Your name is NOT Brandon, Jack or Bob! What's your name?"
# fi

# Check File/Directory status
# if [ -d $FILE ]
# then
#     echo "This is a directory"
# elif [ -f $FILE ]
# then
#     echo "This is a file"
# else
#     echo "There's something wrong! It's not a directory of file"
# fi

# Comparing values
# NUM1=31
# NUM2=5
# if [ "$NUM1" -ne "$NUM2" ]
# then
#   echo "$NUM1 is not equal to $NUM2"
# else
#   echo "$NUM1 is equal $NUM2"
# fi