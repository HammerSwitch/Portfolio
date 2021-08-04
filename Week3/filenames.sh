#!/bin/bash
IFS=$'\n'
echo "input file to check"
read input
for i in $(cat < "$input");
do
if [ -d "$i" ];then
echo "$i Thats a directory";
else
if [ -e "$i" ];then
echo "$i That file exists";
else
echo "$i I don't know what that is";
fi
fi
done