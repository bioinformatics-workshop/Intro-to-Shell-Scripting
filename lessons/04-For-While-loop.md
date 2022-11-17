# 04 - For, While, and Case Loops

**Presenter:** Brandon Le  
**Estimated Time:** 15-20 minutes

In this lesson, we will learn about the `For`, `While` , and `Case`  loops.

We will use the following script for this exercise:  
[for-while.sh](../scripts/for-while.sh)

## For Loop
---
The `for` loop takes in a finite number of inputs and run through those inputs one by one.

Structure:
```
for values
do
    perform task for each value
done
```
Example 1:
```
NAMES="Brad Kevin Alice Mark"
for NAME in $NAMES
do
echo "Hello $NAME"
done
```

Example 2:
```
for num in 1 2 3 4 5
do
    square=`expr $num \* $num`
    echo "The square of ${num} = ${square}"
done
```

## While Loop
---
The `while` loop runs continuously until a **"stop"** condition exists.

Structure:
```
while condition is true
do
    perform task
done
```
Example 1:
```
NAME="Bob"
while [ $NAME != "Brandon" ]
do
    echo "Who are you: Enter name"
    read NAME
    echo "You wrote ${NAME}. Not who I was looking for. Next!"
done
```

Example 2:
Useful for reading in files with multiple columns as variables
```
while IFS="," read -r fname lname character
do
    echo "$fname $lname is $character"
done < examples/superheroes.csv
```
**IFS=","** : this specify the internal field separator is a comma  
**read -r** : read in a long line where backslash does not act as an escape character  
**< examples/superheroes.csv** : file containing info that's feeding into the loop


## CASE Loop
---
`Case` is useful when we don't want to go through all the if-then-else statements and can be implemented within a `while` loop.

Structure:
```
input
case $input in
    A)
        perform task for input A
        ;;
    B)
        perform task for input B
        ;;
    C)
        perform task for input C
        ;;
    *)  
        perform task if input is neither A, B, or C
        break
        ;;
esac
```

Example:
```
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
```
