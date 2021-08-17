#!/bin/bash
Green='\033[0;32m'

echo "Let's play a number guessing game!"
echo "Guess a number between 1 and 100"

read REPLY

if [[ $REPLY -eq 42 ]]; then
      echo "Correct!"
      fi

    while (( $REPLY != 42 )); do


       if [[ $REPLY -lt 1 || $REPLY -gt 100 ]]; then

        echo "Input must be between 1 and 100"
      fi

       if [[ $REPLY -lt 42 && $REPLY -gt 0 ]]; then

        echo "Too Low!"

       elif [[ $REPLY -gt 42 && $REPLY -lt 100 ]]; then

        echo "Too High!"

          
      fi
      
        read REPLY

        if [[ $REPLY -eq 42 ]]; then
      echo "Correct!"
      fi


    done
