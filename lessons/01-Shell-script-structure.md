# 01 - Structure of a shell script

**Presenter:** Brandon Le  
**Estimated Time:** 10-15 minutes

In this lesson, we will get familiar with the structure of a shell script and how to run the script.

We will use the following script for this exercise:  
[my-first-script.sh](../scripts/my-first-script.sh)


## A basic shell script 
---
```
1 #!/bin/sh
2 
3 # This is a comment line
4 
5 echo "Welcome class"  # Comments can be here as well
6 
```
> **Line 1** is called the **shebang**. This lets the shell know which interpreter should be used to execute the script.

```
#!/bin/bash <------ bourne-again-shell (bash)
#!/bin/zsh <------ Z shell (zsh)
#!/usr/bin/perl <------ Perl script
#!/usr/bin/env python <------ Python script
#!/usr/bin/env Rscript <------ R script 
```
> **Line 3** denotes a comment. Comments are usually preceded by a **`#`** sign. The number of # character doesn't matter. Use comments to make notes of your script including logic, assumptions, etc. 

```
# This is an example of a single comment line

# This is a multi
# line comment that
# spans three lines

$ echo 'Hello' # comments can also appear after a command
```
>** Line 5 **contains a command `echo` that will print the content to screen

## Running the shell script
---
To run the script, we type:
```
sh code/my-first-script.sh
```

To make the script executable, without having to specify `sh`, we need to change the permission of the script file.


## File Permissions
---
A file permission is defined by the **Types** and **Groups**.

### Permission Types
    r - Read  
    w - Write  
    x - Execute  

### Permission Groups
    u - Owner
    g - Group
    o - Others
    a - All users

Lets see what permission is set for our first script. We'll use the `ls -l` command to find the info.
```
ls -l scripts/my-first-script.sh
-rw-r--r--@ 1 bhle  staff  91 Nov 15 10:48 scripts/my-first-script.sh
```

rw- : the owner (**bhle**) have read (**r**) and write (**w**) privileges  
r-- : the group (**staff**) have read (**r**) privilege  
r-- : the other **users** have read (**r**) privilege  

## Changing File Permissions
---
We will use `chmod` to modify the permission of the file.
```
chmod u+x scripts/my-first-script.sh
```
**u+x** : set executable permission (x) for the owner (u)

To remove the executable (x) and write (w) permissions from the owner
```
chmod u-wx scripts/my-first-script.sh
```
```
ls -l scripts/my-first-script.sh
-r--r--r--@ 1 bhle  staff  91 Nov 15 10:48 scripts/my-first-script.sh
```

To add executable and write permissions to the owner and the group
```
chmod ug+wx scripts/my-first-script.sh
```
```
ls -al scripts/my-first-script.sh
-rwxrwxr--@ 1 bhle  staff  91 Nov 15 10:48 scripts/my-first-script.sh
```

## Running the script
---
Now we can run the script as a standalone executable.
```
scripts/my-first-script.sh
```
