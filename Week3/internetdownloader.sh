#!/bin/bash
echo "Please type the URL of the file you wish to download or type 'Exit' to quit"
read input
if [ $input == Exit ]
then
exit 0
else
echo "Type the location of where you want the file to be saved"
read des_var
wget $input | export $des_var
fi