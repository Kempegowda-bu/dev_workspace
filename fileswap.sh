#!/bin/sh
linecount1=$(wc -l abc.txt | cut -d\  -f 1 )
linecount2=$(wc -l xyz.txt | cut -d\  -f 1 )
i=1 j=1
while [ $i -le $linecount1 -a $j -le $linecount2 ]; 
do
    sed -n -e "${i}p" abc.txt >> output.txt
    sed -n -e "${j}p" xyz.txt >> output.txt
    echo "-----" >> output.txt
    i=$(( i + 1 )) 
    j=$(( j + 1))
done
cat output.txt
rm output.txt
