#! /bin/bash
if [ $# -ne 1 ] ; then
echo "il en faut qu'un" >&2
exit 1
elif [ -d $1 ] ; then
echo "ca existe déjà" >&2
exit 1
fi

exec 3>$1

while read line ;
do	
	echo $line 
	echo $line >&3
done


exit 0
