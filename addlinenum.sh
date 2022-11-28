#!/bin/bash

linenum=1
while read line
do
echo "$linenum:$line" >>file7
linenum=`expr $linenum + 1`
done <abc1
