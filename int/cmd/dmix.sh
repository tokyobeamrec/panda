ar+=($(cmd/dar.sh ))
le=${#ar[@]}

for ((j=0;j<$le;j++));do
    q=${ar[j]}
    tr+=($(echo $q|awk -F":" '{print $1}'))
    vr+=($(echo $q|awk -F":" '{print $2}'))
    pr+=($(echo $q|awk -F":" '{print $3}'))
done

# if test -z $1;then echo $0;else
# cmd/val.sh $1;fi

for ((j=1;j<$le;j++));do
    cr+=("-a:$j -i wav/${tr[j]}.wav -ea:${vr[j]} -erc:1,2 -epp:${pr[j]} \\")
done

if test -f cmd/eca.sh ;then rm cmd/eca.sh;fi
echo "ecasound \\" > cmd/eca.sh
echo "-n:eca \\" >> cmd/eca.sh
echo "-f:16,2,48000 \\" >> cmd/eca.sh

l2=${#cr[@]}
echo $l2

for ((j=0;j<$l2;j++));do
q=${cr[j]}
echo $q >> cmd/eca.sh
done

sum=sum/d0.wav
su1=sum/d1.wav
if test -f $sum;then rm $sum;fi
if test -f $su1;then rm $su1;fi
echo "-a:all -o $sum" >> cmd/eca.sh

# cat cmd/eca.sh
chmod +x cmd/eca.sh
cmd/eca.sh

sox $sum $su1 gain -n

cmd/1.sh $su1
