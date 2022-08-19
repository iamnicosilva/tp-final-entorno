NOMBREPROPIO="^[A-Z]+[a-z]+[a-z]*"

echo "Nombres Propios:"

for PALABRA in $(cat $1)
do


if [[ $PALABRA =~ $NOMBREPROPIO ]] && [[ ${#PALABRA} -ge 3 ]] 
then
	echo -n "$PALABRA, "
fi
done

echo
