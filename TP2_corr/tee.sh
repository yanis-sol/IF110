#! /bin/bash

exec 3>$1

if [ $# -ne 1 -o -d $1 ]; then 
    echo "Bad arguments ! " >&2
    exit 1
fi 


while read line; do 
    echo $line >&3
    echo $line
done 



exit 0