#!/bin/bash

arroser() {
boucleImp $1
}



#boucleImp() {
#for (( i=0; $i<=$1-1; i++ ))
#do
#	read val < plante
#	expr $i + 1
#done
#} 
#boucleImp $1


boucleRec(){
x=$1
if [ "$x" -ne 0 ]; then
	read line < plante
	line=$((line+1))
	echo $line > plante
	
	x=$((x-1)) 
	boucleRec $x
else
	echo "x n'est plus"
fi
}

boucleRec $1
