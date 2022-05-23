#!/bin/bash

status=$( if [ -f storage/$1/.backup/$2 ];then echo "found";else echo "missing";fi)

if [ $status = "found" ]
then
	mkdir -p storage/$1/.temp/
	tar -xzf storage/$1/.backup/$2 -C storage/$1/.temp/
	(./script.sh $1)
	rm -r ./storage/$1/*
	cp -r ./storage/$1/.temp/* ./storage/$1/
	rm -r ./storage/$1/.temp/
else
	exit 1
fi

