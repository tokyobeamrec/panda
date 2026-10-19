lim=-20;wet=1;res=1

if [ -z $1 ];then echo $0 wav;else

sox wav/$1.wav \
    wav/l-$1.wav \
    ladspa -r \
    hard_limiter_1413.so \
    hardLimiter $lim $wet $res \
    reverb 4 \
    gain -n


fi


