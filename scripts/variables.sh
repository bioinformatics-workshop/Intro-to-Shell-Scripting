#!/bin/sh

# practicing with variables

# Setting variables and calling them
MY_NAME="Brandon"
echo "MY_NAME = $MY_NAME \n"

# Changing variable name
MY_NAME="Bob"
echo "MY_NAME = $MY_NAME \n"

# Integer variables
MY_SAVINGS=10000000
ONE_BITCOIN=18000
TOTAL_BITCOIN=`expr $MY_SAVINGS / $ONE_BITCOIN`
echo "I can buy $TOTAL_BITCOIN bitcoins \n"

# Another way to explicitly calculate without saving to a variable
echo "I can buy `expr $MY_SAVINGS / $ONE_BITCOIN` bitcoins \n"

# Find the error in the code section below
TOTAL_STUDENTS="30"
NUM_OUTLETS=10
OUTLETS_PER_STUDENT=`expr $TOTAL_STUDENTS/$NUM_OUTLETS`

echo "Each student have access to $OUTLETS_PER_STUDENT outlets"
