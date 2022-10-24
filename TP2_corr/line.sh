#! /bin/bash

if [ $# -ne 2 -o ! -e fic -o -d fic ]; then 
    echo "Bad arguments !" >&2
    exit 1
fi 

while read line; do 
    num=0
    for word in $line; do 
        if [ $num -eq $2 ]; then 
            echo $word
        fi
        # let "num=$num + 1"
        num=$(($num + 1))
    done
done < $1


exit 0