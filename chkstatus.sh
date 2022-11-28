#!/bin/bash
echo "enter website URL(ex:www.example.com) to check status "
read url
echo
status=`curl -Is "$url" | head -1 | awk '{print $2}'`
if [ $status -eq 200 ];
then
echo "status OK and The request succeed for $url"
else 
echo "$url status is not OK check below for status code"
echo
curl -Is "$url"
exit
fi
