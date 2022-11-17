# 05 - Passing arguments into shell scripts

**Presenter:** Brandon Le  
**Estimated Time:** 10-15 minutes

In this lesson, we will learn how to pass arguments on the command line as variables to a script.

We will use the following script for this exercise:  
[passing-arguments.sh](../scripts/passing-arguments.sh)

## Passing Arguments
---
Passing arguments into a script is a great way to re-use the script for different parameters or conditions. This way, you don't need to hard code values within your script.

**Command Line:**
```
passing-arguments.sh var1 var2 var3 ...
```
$0 - the script (my_script.sh)  
$1 - first input (var1)  
$2 - second input (var2)  
$3 - third input (var3)    

**passing-argument.sh**:
```
#!/bin/sh

echo "This is variable 1: $1"
echo "This is variable 2: $2"
echo "This is variable 3: $3"
```

**output:**
```
This is variable 1: var1
This is variable 2: var2
This is variable 3: var3
```
