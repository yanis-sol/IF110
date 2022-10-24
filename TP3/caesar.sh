#! /bin/bash 

if [ ! -f arene.txt ]; then 
	echo "arene.txt inexistant" >&2
	exit 1
fi

while read line; do
	kill -USR1 $line 
done < arene.txt
rm arene.txt
exit 0
