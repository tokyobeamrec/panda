if [ -z $1 ];then ewah $0; else

cmd/amid.sh $1

ecasound \
    -n kos \
    -i wav/$1.wav \
    -o wav/2$1.wav \
    -el:autowah,0,.5,.5,.5,.5 \
    -kos:3,.1,.8,1,0

# cmd/2.sh ah/$1.wav 3

fi

