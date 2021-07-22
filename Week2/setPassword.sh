#!/bin/bash
echo "input folder name"
read -p 'foldername : ' fold_var
# previous 2 lines ask user to input folder name
echo "set password"
read -sp 'password : ' pass_var
# previous lines ask user to set password for folder
echo $pass_var | sha256sum > secret.txt
# previous line hashes password and outputs hash into a text file into the folder