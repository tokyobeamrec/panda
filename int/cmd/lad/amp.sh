
if test -z $1;then echo $0 gai mod;else

mod=0;bas=.5;mid=.5;tre=.5

sox wav/$1.wav -b 16 wav/t$1.wav \
    ladspa -r \
    caps.so \
    ToneStack $mod $bas $mid $tre \
    gain -n

#cmd/1.sh ton/$1-$2.wav

fi
