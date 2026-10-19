nam=2amp
mea=1; mod=1; t=.5; sr=.25; a=.75; r=.5; g=.5; st=12
ga=.75;br=.75;pow=.5;to=0;b=.25;m=.75;tr=1;a=.25;q=.75;l=.75;

if [ -z $1 ];then echo $0 wav;else

sox gtr/$1.wav -b 16 cmp/$1.wav \
    ladspa -r \
    caps.so \
    Compress $mea $mod $t $sr $a $r $g $st

sox cmp/$1.wav -b 16 fov/$1.wav \
    ladspa -r \
    foverdrive_1196.so \
    foverdrive 3 \
    gain -5

cmd/1.sh fov/$1.wav

# sox cmp/$1.wav vts/$1.wav \
#     ladspa -r \
#     caps.so \
#     AmpVTS $g $br $pow $to $b $m $tr $a $q $l

# mod=0; gai=0

# sox vts/$1.wav cab/$1.wav \
#     ladspa -r \
#     caps.so \
#     CabinetIV $mod $gai


fi
