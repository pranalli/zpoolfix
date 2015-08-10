#!/bin/sh -x

# This is designed for the purposes of "fixing" an overly-full ZFS zpool, but, more generally, is just a script that "pseudo-deletes" files by
# overwriting their contents with a single byte.  Once enough space is cleaned up by using this script, you can start using normal rm to begin
# removing the files overwritten by the script, and any further you choose to either remove or move away from the zpool to regain proper
# functionality and performance.  Use this script with extreme caution!

if [ -z ${1} ] 
    then
        echo "Proper use: zpoolfix [file1 file2] or [path1 path2] (mixing file/paths and wildcards are allowed)]"
        exit -1 
fi

FILES=${@}
for i in ${FILES}
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

exit 0
