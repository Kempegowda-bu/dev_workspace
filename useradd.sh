#!/bin/bash
echo "enter name to create user"
echo

read name
sudo useradd $name
echo "user $name created successfully"
echo
echo "do you want add user to a group [y/n]"
read res
if [ $res == n ]
then
exit
else
echo "enter group name"
read grp
sudo usermod -a -G $grp $name
echo

echo "user $name added to $grp group successfully"
fi
 
