mea=1; mod=1; t=.5; sr=.25; a=.75; r=.5; g=-5; st=12

if [ -z $1 ];then echo $0;else

sox wav/$1.wav wav/v$1.wav \
    ladspa -r \
    valve_1209.so \
    valve .7 .9

fi

