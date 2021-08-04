#!/bin/bash
./passwordCheck.sh
if [ $? -eq 0 ]; then
echo "select an option 1.create folder 2.copy folder 3.set password 4. Calculator 5. Create week folder 6. Check file neames 7. Download a file"
read input
case $input in
1) echo "input folder name"
./foldermaker.sh
;;
2) echo "iput name of folder to copy"
./foldercopier.sh
;;
3) echo "set password"
./setPassword.sh
;;
4) ./calculator.sh
;;
5) ./megafoldermaker.sh
;;
6) ./filenames.sh
;;
7) ./internetdownloader.sh
;;
*)
echo "invalid input"
;;
esac
fi