#!/bin/bash
echo "ENTER THE NAME OF THE SERVICE TO CHECK"
read NAME
VAR=$(ps -ef | grep -i $NAME | grep -v "grep" |  wc -l)

if [[ "$VAR" -gt 0 ]];
then
       echo "SERVICE $NAME is running"
else
       echo "SERVICE $NAME is not running"

fi
