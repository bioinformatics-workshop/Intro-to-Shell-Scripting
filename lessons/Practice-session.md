# Practice Session

**Presenter:** Brandon Le  
**Estimated Time:** 30-40 minutes

In this section, you will get into groups of two or three and help each other to create scripts that solves the underlying problem.

## Creating a Bioinformatics Project Directory
---
> You've been hired to analyze new sets of data that's coming steaming hot from the Illumina NextSeq Infinity sequencer. In fact, there are three distinct projects. To keep organize, you want to create a new directory containing sub-folders and files for each project. You're lazy so you want to write a script that will help you to create a project folder, sub-folders and files, that you can re-use for future analysis projects. The project directory should look like the tree below

```
ProjectName
    ├── README.md
    ├── raw
    ├── code
    ├── report
    └── analysis
        ├── analysis1
        ├── analysis2
        ├── analysis3
        ├── analysis4
        └── analysis5
```

The script should do the following:
- Ask the user's input for the directory name
- There should be checks included to make sure the directory doesn't already exist

**Hints:**   

- Use information from lesson **04-for-while-loop** for taking in user's input 
- Use information from lesson **03-if-else-loop** to check file status  
- Use the `mkdir -p` command to create folders and sub-folders (e.g., mkdir folder1/folder2)
- Use the `touch` command to create files (e.g., touch file.txt)

## Creating a Dinner Menu List
---
> We are putting together an extravagant three course wedding dinner venue at the Bel Air Hotel that consists of three appetizers, four main entrees, and three desserts. The caterers would like to have a list of the guest's name and their selections. You're creating a script that your assistance will use for data entry.


<figure>

<img src="../images/Fake-menu.png" alt="Menu" width="300" />

</figure>

Appetizers:  

    A1 - Beef tataki
    A2 - Sous vide chicken roulade
    A3 - Grilled portebello salad

Entrees:

    E1 - Fragrant chicken and almond curry
    E2 - Idaho Red Trout
    E3 - Fricassee of wild mushrooms
    E4 - Tenderloin of Beef Wellington

Desserts:

    D1 - Creme Brulee
    D2 - Caramel apple crisp
    D3 - Chocolate lava cake with vanilla ice cream

Create a script that will do the following:

  - Take in the user's name and food selection
  - Store the information into a file
  - Repeat for all users within the group
  - To help the assistance from typing in the dishes, you can come up with a numbering system.

Note: All the selection choices should be stored into a single file

**Hints:**   
- Use the ">>" redirection to append a file


## Solutions
---
Below are some solutions for this exercise including solutions provided by workshop attendees.

### Project Directory - Solution 1 
([create-proj-directory.sh](../scripts/create-proj-directory.sh))
```
#!/bin/sh

# This shell script will create a project directory with sub-directories and files
# based on the user-specified project name

# Get the project name
echo "What's the project name?"
read -p "Enter the project name:
(Use only characters, numbers, or underscore) " PROJ_NAME

# Check whether project name already exists

if [ -d $PROJ_NAME ]
then
    echo "This project name already exists"
else
    for FOLDER in raw code report
    do 
        mkdir -p $PROJ_NAME/${FOLDER}
    done
    touch $PROJ_NAME/README.md 
    for NUM in 1 2 3 4 5
    do 
        mkdir -p $PROJ_NAME/analysis/analysis${NUM}
    done
fi 

# Visualize new project folder (optional)
tree $PROJ_NAME
```
### Project Directory - Solution 2 ([create-proj-directory-student1.sh](../scripts/create-proj-directory-student1.sh))
```
#!/bin/sh
read -p "what is your project name? " PROJECT_NAME
NAMES="raw code report analysis"
if [ -d $PROJECT_NAME ]
then
    echo "Project folder already exists"
else
    echo "Creating files and folders..."
    mkdir $PROJECT_NAME
    for NAME in $NAMES
    do
        mkdir $PROJECT_NAME/$NAME
    done
    for num in 1 2 3 4 5
    do
        mkdir $PROJECT_NAME/analysis/analysis$num
    done
    touch $PROJECT_NAME/README.md
fi
```
### Project Directory - Solution 3 ([create-proj-directory-student2.sh](../scripts/create-proj-directory-student2.sh))
```
#!/bin/bash
# Ask the user for their name
echo Hello, what is the name of the directory?

read varname


#check if foldername exist.

while [ -d $varname ]
do
       echo Directory $varname exist, please provide a new name
       read varname
done

#making folder and subfolder
echo As you wish, making directory $varname
mkdir $varname
touch $varname/README.md
mkdir $varname/raw
mkdir $varname/code
mkdir $varname/report
mkdir $varname/analysis
mkdir $varname/analysis/analysis{1..5}
```

### Dinner menu - Solution 1 ([create-dinner-menu.sh](../scripts/create-dinner-menu.sh))
```


```

### Dinner menu - Solution 2 ([create-dinner-menu-student1.sh](../scripts/create-dinner-menu-student1.sh))
```


```

### Dinner menu - Solution 3 ([create-dinner-menu-student2.sh](../scripts/create-dinner-menu-student2.sh))
```
