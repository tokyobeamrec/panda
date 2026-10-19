t=10; wid=3; rat=1;
ble=.5; for=.5; fee=.5

if [ -z $1 ];then echo $0 wav;else

sox \
    wav/$1.wav \
    wav/c-$1.wav \
ladspa -r caps.so ChorusI \
$t $wid $rat \
$ble $for $fee \
reverb 30 \
gain -10 \

fi
