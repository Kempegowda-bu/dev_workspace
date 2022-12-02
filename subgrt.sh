#!/bin/bash
echo"hello"
var1=$1
var2=$2
sum=`expr $var1 + $var2`
mul=`expr $var1 \* $var2`
if [ $var1 -gt $var2 ];
then 
subtr=`expr $var1 - $var2`
div=`expr $var1 / $var2`
else
subtr=`expr $var2 - $var1`
div=`expr $var2 / $var1`
fi
echo "sum of $var1 and $var2 is $sum"
echo "subtraction of $var1 and $var2 is $subtr"
echo "multiplaction of $var1 and $var2 is $mul"

echo "divission of $var1 and $var2 is $div"




