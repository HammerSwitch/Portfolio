
#!/bin/bash
echo "Input first integer of range"
read first_var
echo "Input second integer of range"
read sec_var

#For every number between the first argument and the last

for ((i = $first_var; i <= $sec_var; i++))

do

    #Create a new folder for that number

    echo "Creating directory number $i"

    mkdir "week$i"

done