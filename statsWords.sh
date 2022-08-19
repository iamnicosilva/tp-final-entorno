CONT_MIN=99999999999
CONT_MAX=0
CONT=0
SUMA=0
for PALABRA in $(cat $1)
do
N=${#PALABRA}

[ $N -lt $CONT_MIN ] && CONT_MIN=$N
[ $N -gt $CONT_MAX ] && CONT_MAX=$N
CONT=$(($CONT+1))
SUMA=$(($SUMA+$N))

done


echo "Pal: $CONT Min: $CONT_MIN Max: $CONT_MAX Prom: $(($SUMA/$CONT)) Total: $SUMA"
