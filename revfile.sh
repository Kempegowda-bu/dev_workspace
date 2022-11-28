#!/bin/bash
textArray[0]=""
c=0
while read line
do 
textArray[$c]=$line
c=$(expr $c + 1) 
done <$1
len=$(expr $c - 1 )
for (( i=$len; i>=0; i-- ));
do
  echo ${textArray[$i]}
done
