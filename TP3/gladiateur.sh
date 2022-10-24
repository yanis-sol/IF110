#! /bin/bash

export pidInit

if [ -z $pidInit ]; then 
    let "pidInit = $$"
fi

if [ $# -ne 1 ]; then 
    echo "Bad arguments !" >&2
    exit 1
fi

echo "Processus $$ start with Initial PID $pidInit"

if [ $1 -gt 1 ]; then 
    echo "Il reste $(($1 - 1)) processus à créer"
    ./gladiateur.sh $(($1 - 1)) &
    wait $!
else
    echo "Fin de chaine"
fi


trap 'echo $$ : Morituri Te Salutant; exit 0' USR1
trap './caesar.sh' INT 
trap './caesar.sh' KILL
echo "$$" >> arene.txt

while true 
do
	echo "$$ : Ave Caesar"
	sleep 5 &
	wait $!
done
exit 0
