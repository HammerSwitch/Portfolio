#!/bin/bash
Red='\033[0;31m'
Blue='\033[0;34m'
Green='\033[0;32m'
Purple='\033[0;35m'
NC='\033[0m'
echo "Select an option"
echo -e "$Blue 1. Addition" "$Green 2. Subtraction" "$Red 3. Multiplication" "$Purple 4. Division" "$NC 0. Exit"
read input
case $input in
1) echo "input first integer"
read fir_var
echo "input second integer"
read sec_var
echo $fir_var + $sec_var | bc
;;
2) echo "input first integer"
read fir_var
echo "input second integer"
read sec_var
echo $fir_var - $sec_var | bc
;;
3) echo "input first integer"
read fir_var
echo "input second integer"
read sec_var
echo $fir_var \* $sec_var | bc
;;
4) echo "input first integer"
read fir_var
echo "input second integer"
read sec_var
echo $fir_var / $sec_var | bc
;;
*)
exit=0
;;

esac