#!/bin/sh

# learning about for, while, and case loops

# A simple FOR loop
# NAMES="Brad Kevin Alice Mark"
# for NAME in $NAMES
# do
#     echo "Hello $NAME"
# done

# # Another FOR loop example
# for num in 1 2 3 4 5
# do
#     square=`expr $num \* $num`
#     echo "The square of ${num} = ${square}"
# done

# While loop
# NAME="Bob"
# while [ $NAME != "Brandon" ]
# do
#     echo "Who are you: Enter name"
#     read NAME
#     echo "You wrote ${NAME}. Not who I was looking for. Next!"
# done

# # WHILE loop
# while IFS="," read -r fname lname character
# do
#     echo "$fname $lname is $character"
# done < examples/superheroes.csv

# Case loop
read -p "What's your name? Enter name: " NAME
read -p "What language do you speak? Enter language: " LANGUAGE
case $LANGUAGE in
    english)
        echo "Hello! ${NAME}"
        ;;
    chinese)
        echo "Nihao! ${NAME}"
        ;;
    italian)
        echo "Salve! ${NAME}"
        ;;
    french)
        echo "Bonjour! ${NAME}"
        ;;
    german)
        echo "Guten tag! ${NAME}"
        ;;
    [Jj]apanese)
        echo "Konnichiwa! ${NAME}"
        ;;
    spanish)
        echo "Hola! ${NAME}"
        ;;
    *)
        echo "Sorry ${NAME}, I'm not familiar with that language."
        break
        ;;
esac

