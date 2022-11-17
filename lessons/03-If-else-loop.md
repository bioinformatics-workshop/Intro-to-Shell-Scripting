# 03 - IF, IF-ELSE, and ELSE-IF Loops

**Presenter:** Brandon Le  
**Estimated Time:** 15-20 minutes

In this lesson, we will learn about the `if`, `if-else` , and `else-if`  loops.

We will use the following script for this exercise:  
[if-elsle.sh](../scripts/if-else.sh)

## A Simple IF Statement
---
A simple IF statement have the structure: 
```
if [ conditions ]
then
    perform some task
fi
```
As an example,
```
NAME=Brad

if [ "$NAME" == "Brandon" ]
then
    echo "Your name is Brandon"
fi
```

## A Simple IF-ELSE Statement
---
In the previous statement, we have two outcomes but only one is specified. To specify the specific outcome, we can use the IF-ELSE statement.

Structure:

```
if [ condition ]
then
    perform task 1
else 
    perform task 2
fi
```
Example:
```
NAME=Brad

if [ "$NAME" == "Brandon" ]
then
    echo "Your name is Brandon"
else
    echo "Your name is not Brandon, it's ${NAME}"
fi
```

## ELSE-IF Statement
---
If we have more conditions to consider, an else-if statement is more suitable.

Structure:
```
if [ condition1 ]
then
    perform task 1
elif [ condition2 ]
then
    perform task 2
elif [ condition3 ]
then
    perform task 3
else
    perform task 4
fi
```

```
NAME=Brad

if [ "$NAME" == "Brandon" ]
then
  echo "Your name is Brandon"
elif [ "$NAME" == "Jack" ]
then  
  echo "Your name is Jack"
elif [ "$NAME" == "Bob" ]
then  
  echo "Your name is Bob"
else 
  echo "Your name is NOT Brandon, Jack or Bob! What's your name?"
fi
```

## Comparisons [True/False]
---
In the previous section, we looked at different usage of the if, if-else, and else-if loops. In each statement, there's a "condition" or "comparison" that determines the task to perform. We will examine the different types of comparisons one might encounter.

### Comparing strings

    STRING1 == STRING2  : Returns true if the strings are the same  
    STRING1 != STRING2  : Returns true if the strings are different

### Comparing numbers


    VAL1 -eq VAL2 : Returns true if the values are equal
    VAL1 -ne VAL2 : Returns true if the values are not equal
    VAL1 -gt VAL2 : Returns true if VAL1 is greater than VAL2
    VAL1 -ge VAL2 : Returns true if VAL1 is greater than or equal to VAL2
    VAL1 -lt VAL2 : Returns true if VAL1 is less than VAL2
    VAL1 -le VAL2 : Returns true if VAL1 is less than or equal to VAL2


### Comparing files


    -d file : Returns true if the file is a directory
    -e file : Returns true if the file exists (note that this is not particularly portable, thus -f is generally used)
    -f file : Returns true if the provided string is a file
    -g file : Returns true if the group id is set on a file
    -r file : Returns true if the file is readable
    -s file : Returns true if the file has a non-zero size
    -u file : Returns true if the user id is set on a file
    -w file : Returns true if the file is writable
    -x file : Returns true if the file is an executable
