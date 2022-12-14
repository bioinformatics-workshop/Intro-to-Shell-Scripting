#!/bin/sh

echo "Hello, my name is Sjors and today I will be taking up your orders."
echo "Let's start with the first person in the group."

echo "name,appetizer, entree, dessert"> order.csv

LAST="No"
while [ $LAST != "Yes" ]
do
    read -p "What is your name? " NAME
    echo "What would you like as appetizers? Your choices are:"
    echo "A1 - Beef tataki"
    echo "A2 - Sous vide chicken roulade"
    echo "A3 - Grilled portebello salad"
    read -p "Please type A1, A2 or A3: " APP
    echo "Great choice! What would you like as Entree? Your choices are:"
    echo "E1 - Fragrant chicken and almond curry"
    echo "E2 - Idaho Red Trout"
    echo "E3 - Fricassee of wild mushrooms"
    echo "E4 - Tenderloin of Beed Wellington"
    read -p "Please type E1, E2, E3 or E4: " ENT
    echo "Excellent. What would you like as Dessert? Your choices are:"
    echo "D1 - Creme Brulee"
    echo "D2 - Caramel apple crisp"
    echo "D3 - Chocolate lava cake with vanilla ice cream"
    read -p "Please type D1, D2 or D3: " DES
    echo "Again, and excellent choice."
    read -p "Are you the last person of the group? Please type Yes/No: " LAST
    echo $NAME,$APP,$ENT,$DES >> order.csv
done
echo "Thank you very much for your order. "

