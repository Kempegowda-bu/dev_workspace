#!/bin/bash
while read line
do
age=`echo $line | awk -F ":" '{print $NF}' | xargs tail -n+2`
echo $age
done <$1 
