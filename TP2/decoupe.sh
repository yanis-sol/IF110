#! /bin/bash
# traite le cas dans lequel les arguments du script sont erronés

if [ $# -ne 2 ] ; then
echo "c'est deux args putainnnnnn" >&2 # &2 est la sortie d’erreur
exit 1 

elif [ ! -e $1 ] ; then 
echo "fais avec ce que t'as ici sale ingrat" >&2
exit 1

elif [ -d $1 ] ; then 
echo "ce dossier existe déjà cher monsieur, jrigole ntm" >&2
exit 1
fi

num=0

while 	read line ; 
do 

for word in $line ;
do
	if [ $num -eq $2 ]; then
		echo $word
	fi
	num=$(($num + 1))
done
num=0
done <$1
exit 0

