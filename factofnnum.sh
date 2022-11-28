#!/bin/bash
for i in $*
do
fact=1
num=$i
var=$i
while [ $num -gt 1 ];
do
fact=`expr $fact \* $num`
num=`expr $num - 1`
#fact=$((fact * num))  
#num=$((num - 1))  
done
echo "factorial of $var is $fact"
done


