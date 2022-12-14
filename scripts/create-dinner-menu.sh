#!/bin/sh

# In this script, we will log in guest selection for a three course dinner menu

# The script will log the guest's name and their selection of appetizers, entrees,
# and desserts into a file to send to the caterer and servers.

# create a file containing the headers
echo "Guest_name, Appetizers, Entree, Dessert" > orders.csv

# Obtain the number of guests within the group
# Check if a number is indicated
read -p "How many people are in your party? " NUM_GUESTS

while [ -z $NUM_GUESTS ]
do
    read -p "Please enter the number of guests: " NUM_GUESTS
    if ! [[ $NUM_GUESTS =~ "^[0-9][0-9]0-9]"]]
    then
        read -p "Please enter the number of guests: " NUM_GUESTS
    fi
done



NUM=0
while [ $NUM -lt ${NUM_GUESTS} ]
do
    read -p "What's your name? " GUEST_NAME
    if [ "$GUEST_NAME" == "" ]
    then
        read -p "Please enter your name: " GUEST_NAME
    else

    echo "Hi ${GUEST_NAME}! \n"
    echo "We have the following selections for appetizers \n
         A1 - Beef tataki \n
         A2 - Sous vide chicken roulade \n
         A3 - Grilled portebello salad \n"
    read -p "What is your selection for appetizers? A1, A2, A3: " APP

    case $APP in
        A1) 
            echo "Great choice!"
            ;;
        A2) 
            echo "Great choice!"
            ;;
        A3)
            echo "Great choice!"
            ;;
        "")
            read -p "Please make a selection from the following choices: A1, A2, A3: " APP
            ;;
        *)
            read -p "Your selection doesn't exist. Please choose from the following: A1, A2, A3: " APP
            ;;
    esac 

    echo "For entrees, we have the following selections: \n
             E1 - Fragrant chicken and almond curry
             E2 - Idaho red trout
             E3 - Fricassee of wild mushrooms
             E4 - Tenderloin of beef Wellington \n"
    read -p "What is your selection for the entree? E1, E2, E3, E4: " ENTREE

    case $ENTREE in
        E1) 
            echo "Great choice!"
            ;;
        E2) 
            echo "Great choice!"
            ;;
        E3)
            echo "Great choice!"
            ;;
        E4)
            echo "Great choice!"
            ;;
        "")
            read -p "Please make a selection from the following choices: E1, E2, E3, E4: " ENTREE
            ;;
        *)
            read -p "Your selection doesn't exist. Please choose from the following: E1, E2, E3, E4: " ENTREE
            ;;
    esac 

    echo "And last but not least, for desserts we have the following selections: \n
             D1 - Creme Brulee 
             D2 - Caramel apple crisp 
             D3 - Chocolate lava cake with vanilla ice cream \n"
    read -p "What is your selection for the desserts? D1, D2, D3: " DESSERT

    case $DESSERT in
        D1) 
            echo "Great choice! The creme is super sweet"
            ;;
        D2) 
            echo "Great choice! Fresh apples harvested this morning"
            ;;
        D3)
            echo "Great choice! Home made vanilla ice cream pairs well with the cake"
            ;;
        "")
            read -p "Please make a selection from the following choices: D1, D2, D3: " DESSERT
            ;;
        *)
            read -p "Your selection doesn't exist. Please choose from the following: D1, D2, D3: " DESSERT
            ;;
    esac 

    echo "Thank you for your selection"

    # record selection to file
    echo "${GUEST_NAME}, ${APP}, ${ENTREE}, ${DESSERT}" >> orders.csv
    fi

    # add to counter for number in the group
    NUM=`expr $NUM + 1`
done
