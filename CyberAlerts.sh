#!/bin/bash

#welcomes user and connects to the cyber crime alert site

echo "Hello, welcome to the ACSc Alerts"

echo "Connecting to https://www.cyber.gov.au/acsc/view-all-content/alerts"

wget https://www.cyber.gov.au/acsc/view-all-content/alerts

#exports the html to a page called alerts then uses sed to filter and parse text

sed -n 's/<[^>]*>//g; s/[!@#$%&*(){},?><./\";:-]//g; 592,937p' alerts > alerts2.txt

exit 0
