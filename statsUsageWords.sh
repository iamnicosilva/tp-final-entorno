declare -A DICCIONARIO

for PALABRA in $(cat $1)
do

N=${#PALABRA}

if [ $N -ge 4 ]
then
	if [[ -v DICCIONARIO[$PALABRA] ]]
	then
	DICCIONARIO[$PALABRA]=$((DICCIONARIO[$PALABRA]+1))
	else
	DICCIONARIO[$PALABRA]=1
	fi
fi
done

for CLAVE in "${!DICCIONARIO[@]}"
do
	echo "$CLAVE - ${DICCIONARIO[$CLAVE]}"
done | sort -rn -k3 | head -n 10
