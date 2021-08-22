#!/bin/bash

# start Cyber Alert script
./CyberAlerts.sh

#Format script into lines and then into a table with colours
awk 'BEGIN {

    RS="\n\n";
	FS="\n";


    print "___________________________________________________________________________________________________________________________________________________________________________________________________________________";

    print "|         \033[34mDate and Status\033[0m             |                                   \033[34mTitle\033[0m                                          |                                                       \033[34mSummary\033[0m                                                                  ";
    print "___________________________________________________________________________________________________________________________________________________________________________________________________________________";

}

{

   printf ("| \033[32m%-35s\033[0m | \033[31m%-80s\033[0m | \033[37m%-20s\033[0m \n", $1, $2, $3);

}

END {

    print("__________________________________________________________________________________________________________________________________________________________________________________________________________________");

}' alerts2.txt
exit 0
