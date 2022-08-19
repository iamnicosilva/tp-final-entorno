CONT_MIN=99999999999
CONT_MAX=0
CONT=0
SUMA=0


readarray -d . -t ORACIONES <<< $(cat $1)


for ORACION in "${ORACIONES[@]}"
do

N=${#ORACION}
if [[ $N -gt 5 ]]
then
[ $N -lt $CONT_MIN ] && CONT_MIN=$N
[ $N -gt $CONT_MAX ] && CONT_MAX=$N
CONT=$(($CONT+1))
SUMA=$(($SUMA+$N))
fi
done




echo "Oraciones: $CONT Oracion mas chica: $CONT_MIN Oracion mas grande: $CONT_MAX Long Prom: $(($SUMA/$CONT))"
