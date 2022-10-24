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
    ./chaine.sh $(($1 - 1)) &
    wait $!
else
    echo "Fin de chaine"
fi

echo "Processus $$ terminé"

exit 0
