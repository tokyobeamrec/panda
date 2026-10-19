t=10; wid=3; rat=1;
ble=.5; for=.5; fee=.5

if [ -z $1 ];then echo $0 wav;else

sox \
wav/$1.wav \
wav/a-$1.wav \
ladspa -r \
autotalent.so \
440 0 0 \
1 -1 1 1 \
-1 1 -1 1 \
-1 1 1 -1 \
1 0.5 0 0 \
0 5 1 0 0 \
0 0 1 \
0 0 0 

fi
