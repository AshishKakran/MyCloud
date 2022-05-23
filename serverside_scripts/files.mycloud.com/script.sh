#!/bin/bash


function rotatebackup {

	count=$(ls .backup/| wc -l)
		if [ $count -ge 5 ]
		then
			oldest=$(ls -lt .backup/ | tail -1|  awk '{print$9}')
			rm -f .backup/$oldest
		fi

}			

	time=$(eval date "+%s")
	cd /home/client/storage/$1

	(rotatebackup)
	(tar -czf .backup/$time.tar.gz *) 2> /dev/null


