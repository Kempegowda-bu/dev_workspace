#!/bin/bash
big=0
sbig=0
for i in $*
do
if [ $i -gt $sbig ];
then
if [ $i -gt $big ];
then
sbig=$big
big=$i
else
sbig=$i
fi
fi
done
echo "secong biggest of $* is :$sbig"

