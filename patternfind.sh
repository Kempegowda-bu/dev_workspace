#!/bin/bash
echo "enter pattern to search"
read pat
echo
grep -lw -R $pat * 
if [ $? -eq 0 ];
then
echo "above files are containing the pattern $pat"
else
echo "pattern not found in any of the files"
fi


