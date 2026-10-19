if test -z $1;then echo $0;else

sox org/$1.wav \
wav/$1.wav \
bass -10 50 \
rate 48000 \
gain -n

fi
