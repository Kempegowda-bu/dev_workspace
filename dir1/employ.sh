#!/bin/bash
sed '1d' $1 >file
echo "Name of the employes who's age is more than 30 is :"
while read line
do
AGE=`echo "$line" | awk -F ":" '{print $NF}'`
if [ $AGE -gt 30 ];
then
NAME=`echo "$line" | awk -F ":" '{print $1}'`
echo "$NAME" 
fi
done <file
