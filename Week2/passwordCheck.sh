#!/bin/bash
Red='\033[0;31m'
NC='\033[0m'
Green='\033[0;32m'
echo -e "${Red} Enter Password:"
read -s var_spass
var_hash=$(echo $var_spass | sha256sum)
hashfile="secret.txt"
myvariable=$(cat "$hashfile")
if [ "$var_hash" == "$myvariable" ]; then
echo -e "${Green} Access Granted ${NC}"
exit 0
else
echo -e "${Red} Access Denied"
exit 1
fi