#! /bin/bash

if [ $# -ne 1 -o -d $1 ]; then 
    echo "Bad arguments !" >&2
    exit 1
fi

echo 0 > $1

while true; 
do 
    read n < $1
    expr $n + 1 > $1
    sleep 1
done

exit 0