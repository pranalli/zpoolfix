#!/bin/bash

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
