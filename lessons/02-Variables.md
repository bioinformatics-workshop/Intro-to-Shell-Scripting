# 02 - Variables

**Presenter:** Brandon Le  
**Estimated Time:** 10-15 minutes

In this lesson, we will learn about variables and how to implement them.

We will use the following script for this exercise:  
[variables.sh](../scripts/variables.sh)

## What are variables?
---
Variables are names we used to assign values and then read and manipulate contents. Variables can hold a string, integers, real numbers, etc. Variables are typically all uppercase by convention.

Examples of variables:
```
VAR="hello"
VAR=10
VAR="I'm the king of the world"

MY_MOVIE="Sharknado"
BANK_ACCT=2444666668888888
```

Bad example of variables:
```
VAR = "hello" # there should be no space between the = sign
MY NAME="Brandon" # variable names can't have spaces
```
## Executing math with variables
---
Set values for variables
```
NUM1=10
NUM2=20
```

Adding/subtracting variables
```
expr $NUM1 + $NUM2
expr $NUM1 - $NUM2
```

Dividing/Multiplying variables
```
expr $NUM2 / $NUM1
expr $NUM2 "*" $NUM1 
expr $NUM2 \* $NUM1 
```

Exponentials/Order of operations
```
echo $(($NUM1**2))
```
