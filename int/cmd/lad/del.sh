t=$(echo "scale=5;(60/132)*1000"|bc)
echo $t

num=3
if test -z $1;then echo $0;else

    ecasound \
    -i wav/$1.wav \
    -etd:$t,0,$num,50,90 \
    -ea:120 \
    -o wav/d-$1.wav


fi
