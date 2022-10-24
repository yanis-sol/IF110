if [ $# -eq 0 ]; then 
	echo "Hello Sargeras!" 
else
	while [ $# -gt 0 ];
	do echo Hello $1!
	shift
	shift
	shift 
	shift
	done
fi
