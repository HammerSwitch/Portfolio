#!/bin/bash
Green='\033[0;32m'
Red='\033[0;31m'
NC='\033[0m'

echo "Let's play a number guessing game!"
getNumber() 
    while (( $1 -eq 42 )); do
        echo -e " ${Green} Correct!"
     
    done

if [ $1 -gt 42 ]
    then
    printError "Too high"   

elif [ $1 -lt 42 ]
    printError "Too low"   

fi

getNumber "Guess a number between 1 and 100" 1 100
