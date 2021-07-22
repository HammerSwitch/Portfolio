#!/bin/bash
echo "Type Password"
read -sp 'password'
sha256sum -c passmatch
if [ "$password" -eq "$passmatch" ]; then
echo "Access Granted"
exit 0
else
echo "Access Denied"
exit 1
fi