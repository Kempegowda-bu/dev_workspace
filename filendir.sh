#!/bin/bash
echo "enter name to check"
read var
echo
if [ -f $var ];
then
echo "content of the file $var is :"
cat $var
num=`cat $var | wc -l`
echo
echo "total number of lines in the file $var is: $num"
echo
elif [ -d $var ];
then
ls -lrt $var | grep '^-' | awk '{print $NF}'
 else
echo "$var not exist"
fi

