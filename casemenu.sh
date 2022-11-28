#!/bin/bash
echo -e "select the option below\n 1)search files based on words\n 2)check name\n 3)edit file\n 4)create softlink\n 5)find file\n 6)rename file\n 7)exit"
read var
case $var in
1) echo "enter the world to search files"
   read word
   grep -l -R "$word" * >file1
   if [ $? -eq 0 ];
   then
   echo "below files have word $word"
   cat file1
   rm file1
   else
   echo "$word not found in any files"
   fi
;;

2)/home/ec2-user/linuxcmds/scripts/filendir.sh
;;

3) echo "enter file to edit"
   read file
   if [ -f $file ];
   then
   vi $file
   else
   echo "$file not exist"
   fi
;;

4) echo "enter file name to create soft link"
   read name1
   if [ -f $name1 ];
   then 
   echo "enter link name"
   read link
   if [ -L $link ];
   then
   echo "$link already exists "
   exit
   fi
   else 
    echo "$name1 does not exist"
   exit 1
   fi

   ln -s $name1 $link
   ;;
5) echo "enter file to find its location"
   read file2
   find /home -type f -name "$file2" >location
   if [ $? -eq 0 ];
   then
   echo "$file2 found in below locaton"
   cat location
   rm location
   else 
   echo "$file2 not found in any location"
   fi
;;
6) echo "enter file to rename"
   read file3
   if [ -f $file3 ];
   then
   echo "enter rename name"
   read file4
   mv $file3 $file4
   else
   echo "file does not exist"
   fi
;;
7) echo "exit"
;;
esac
