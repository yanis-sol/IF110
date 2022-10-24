#! /bin/bash
# traite le cas dans lequel les arguments du script sont erronés
if [ $# -ne 1 ] ; then
echo "il faut exactement 1 arg apprends à compter" >&2 # &2 est la sortie d’erreur
exit 1 # un code de retour faux
elif [ -d $@ ]  ; then
echo "ça marche pas sois creatif"
exit 1
fi
n=1
echo 0 > $1
while [ $n -ge 0 ];
do
	read n < $1
	expr $n + 1 > $1
	echo $n
	sleep 1
done
exit 0
