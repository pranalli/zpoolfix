#!/bin/bash

# This is designed for the purposes of "fixing" an overly-full ZFS zpool, but, more generally, is just a script that "psuedo-deletes" files by
# overwriting their contents with a single byte.  Once enough space is cleaned up by using this script, you can start using normal rm to begin
# removing the files overwritten by the script, and any further you choose to either remove or move away from the zpool to regain proper
# functionality and performance. 

DIR=${1}
if [ -z ${DIR} ] 
	then
		echo "Proper use: zpoolfx [PATH]"
		exit -1 
fi

cd ${DIR}
for i in *
	do
		if [ -d ${i} ]
			then
				echo "${i} is a directory"
		fi
		if [ -f ${i} ]     
			then 
				echo "${i} is a file"
		fi
	done 
