mea=1; mod=1; t=.5; sr=.25; a=.75; r=.5; g=-5; st=12


# sox wav/su3.wav -b 16 wav/su4.wav \
#     ladspa -r \
#     caps.so \
#     Compress $mea $mod $t $sr $a $r $g $st

# sox wav/su4.wav wav/su5.wav \
#     ladspa -r \
#     valve_1209.so \
#     valve .7 .9

sox wav/su4.wav wav/su5.wav \
    ladspa -r \
    valve_1209.so \
    valve .7 .9



