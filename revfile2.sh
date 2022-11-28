#!/bin/bash
echo "enter file to reverse"
read file
num=`cat $file | wc -l`
while [ $num -gt 0 ];
do
head -$num $file | tail -1 >>revfile1
num=`expr $num - 1`
done
cat revfile1
rm revfile1
