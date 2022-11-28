#!/bin/bash
str=$1
rev=" "
len=${#str}
for(( i=$len-1; i>=0; i-- ))
do
rev="$rev${str:$i:1}"
done
echo "reverse of $str is $rev"

