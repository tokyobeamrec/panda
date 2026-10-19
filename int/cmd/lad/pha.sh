
rat=.5;lfo=0;dep=.75;spr=.75;res=.5

if [ -z $1 ];then echo $0 wav;else

sox wav/$1.wav \
    wav/p-$1.wav \
    ladspa -r \
    caps.so \
    PhaserII $rat $lfo $dep $spr $res \
    reverb 30

fi
