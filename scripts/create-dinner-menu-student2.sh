#!/bin/bash
touch orders.txt
chmod u+x orders.txt
NAMES="Brad Emma"
echo Guest list $NAMES
#echo $NAMES >> orders.txt

# Ask the user for their name

for NAME in $NAMES
do
echo $NAME
echo $NAME >> orders.txt
read -p "A1 to A3, What's your choice of Appetizers?" Appetizers
case $Appetizers in
     A1)
        echo "A1 - Beef tataki" >>orders.txt
        ;;
     A2)
        echo "A2 - Sous vide chicken roulade" >>orders.txt
        ;;
     A3)
        echo "A3 - Grilled portebello salad" >>orders.txt
        ;;
      *)
        echo "Wrong answer, no appetizers for you!"
esac

read -p "E1 to E4, what's your choice of Entrees?" Entrees
case $Entrees in
     E1)
        echo "E1 - Fragrant chicken and almond curry" >>orders.txt
        ;;
     E2)
        echo "E2 - Idaho Red Trout" >>orders.txt
        ;;
     E3)
        echo "E3 - Fricassee of wild mushrooms" >>orders.txt
        ;;
     E4)
        echo "E4 - Tenderloin of Beed Wellington" >>orders.txt
        ;;
     *)
        echo "We don't have that, let me know if you change you mind later."
esac

read -p "D1 to D3, what's your choice of Desserts?" Desserts
case $Desserts in
     D1)
        echo "D1 - Creme Brulee" >>orders.txt
        ;;
     D2)
        echo "D2 - Caramel apple crisp" >>orders.txt
        ;;
     D3)
        echo "D3 - Chocolate lava cake with vanilla ice cream" >>orders.txt
        ;;
      *)
        echo "Are you sure? our desserts are oganic, zero calorie and gluten free!"
esac

done


cat orders.txt
