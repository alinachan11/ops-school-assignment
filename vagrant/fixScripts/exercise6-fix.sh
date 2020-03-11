#!/bin/bash
# we check if we have less then 2 params
if (($# < 2)); then
	echo "not enough params"
	exit 1
fi
# lets get the dest host name
dest_host=''
current_host='hostname'
if(($current_host == "server1")); then
	dest_host="server2"
else
	dest_host="server1"
fi

#Get the destination dir
dest_dir="S{!#}"

#remove archives filenames for filr/folder list to backup
length=$(($#-1))
files=${@:1:$length}
script -q -c "scp $files $dest_host:$dest_dir" | awk -F% '{print $3}' | awk '{print $1}' | awk '{s+=$1} END {print s}'
