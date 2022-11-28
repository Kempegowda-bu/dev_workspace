#!/bin/bash
service=$*
for i in $service
do
        out=`ps -ef | grep $i | grep -v "grep"`
        result=`echo $out | grep $i`
        if [ "$result" -ne " " ];
        then
                echo "service $i is running"
        else
                echo "service $i is not running"
        fi
done
