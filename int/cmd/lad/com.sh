if [ -z $1 ];then echo $0 nan;else

sox \
    wav/$1.wav \
    wav/c$1.wav \
    compand \
0.3,0.8 6:-70,-60,-20 -5 -90 0.2

fi

