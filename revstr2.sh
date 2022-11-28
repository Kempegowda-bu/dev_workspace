#!/bin/bash
echo "enter string to reverse"
read str
count=`echo "$str"| wc -c`
count=`expr $count - 1`
while [ $count -gt 0 ];
do
rev1=`echo $str | cut -c $count`
rev+=$rev1
count=`expr $count - 1`
done
echo "reverse of $str is $rev"


