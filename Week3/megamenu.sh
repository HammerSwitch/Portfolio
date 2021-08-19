#!/bin/bash
Red='\033[0;31m'
Blue='\033[0;34m'
Green='\033[0;32m'
Purple='\033[0;35m'
NC='\033[0m'
~/Student/Scripts/Portfolio/Week2/passwordCheck.sh
if [ $? -eq 0 ]; then
option='create-folder copy-folder Set-password Calculator Create-week-folder Check-file-names Download-file Exit'
PS3='Select an option: '
select option in $option
do
case $option in
create-folder) echo "input folder name"
./foldermaker.sh
;;
copy-folder) echo "input name of folder to copy"
~/Student/Scripts/Portfolio/Week2/foldercopier.sh
;;
Set-password) echo "set password"
./setPassword.sh
;;
Calculator) 
./calculator.sh
;;
Create-week-folder)
./megafoldermaker.sh
;;
Check-file-names)
./filenames.sh
;;
Download-file)
./internetdownloader.sh
;;
Exit) echo -e "${Purple} Goodbye"
break
;;
*)
echo -e "${Red} Invalid input ${NC}"
;;
esac
done
fi