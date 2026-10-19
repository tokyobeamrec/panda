mea=1; mod=1; t=.5; sr=.25; a=.75; r=.8; g=.5; st=12

if [ -z $1 ];then echo $0 wav;else

sox wav/$1.wav \
    wav/c$1.wav \
    ladspa -r \
    caps.so \
    Compress $mea $mod $t $sr $a $r $g $st

fi
