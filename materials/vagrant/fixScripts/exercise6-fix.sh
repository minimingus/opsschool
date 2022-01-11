#!/bin/bash
#add fix to exercise6-fix here
arguments=$#

if (($arguments < 2))
then 
	echo '0'
	exit
fi

bytes=0
host=$(hostname)

if (($host=='server1'))
then	
	targetHost='server2'
else
	targetHost='server1'
fi

destination=${@: -1}

for arg in "${@:1:$# - 1}"
do
	scp $arg vagrant@server2:$destination
	size=$(wc -c $arg | awk -F ' ' '{print $1}')
	bytes=$(($bytes+$size))
done

echo $bytes


