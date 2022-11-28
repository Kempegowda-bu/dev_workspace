#!/bin/bash
declare -a even_list=()
declare -a odd_list=()
for i in {1..100}
do
if [ `expr $i % 2` == 0 ];
then
even_list+=($i)
else
odd_list+=($i)
fi
done
echo "list of even number:${even_list[@]}"
echo "list of odd number:${odd_list[@]}"
