#!/bin/bash

cd /home/client/storage/$1/.backup

list=$(ls)

touch .webpage

cat /dev/null > .webpage

for file in $list
do
echo	>> .webpage
echo " backup name : $file " >> .webpage
echo >> .webpage
tar -tf $file	>> .webpage
done


sshpass -p 'client' rsync -az .webpage client@www.mycloud.com:/var/www/html/$1.txt
rm .webpage
