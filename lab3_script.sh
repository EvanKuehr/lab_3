#!/bin/bash
# Authors : Evan Kuehr
# Date: 9-19-19

echo "Enter a file name"
read fileName
echo "Enter a regular expression"
read regExInput
grep -P $regExInput $fileName
echo "Number of phone numbers: "
grep -P -c "[0-9]{3}-{1}[0-9]{3}-{1}[0-9]{4}" regex_practice.txt
echo "Number of email addresses: "
grep -P -c -i "\b[A-Z0-9._-]+@{1}[A-Z0-9._-]+\.{1}[A-Z]{2,}\b" regex_practice.txt
echo "303 phone numbers: "
grep -P -o "3{1}0{1}3{1}-{1}[0-9]{3}-{1}[0-9]{4}" regex_practice.txt
echo "Storing geocities.com emails in email_results.txt"
grep -P -i -o "\b[A-Z0-9._-]+@{1}geocities.com$\b" regex_practice.txt >> email_results.txt
git add "email_results.txt"
git commit -m "geocities.com emails are in the email_results text file"
