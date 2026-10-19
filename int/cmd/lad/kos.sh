if [ -z $1 ];then echo $0; else

ecasound \
    -n kos \
    -i wav/$1.wav \
    -o wav/k-$1.wav \
    -ef3:800,1.5,0.5 \
    -kos:1,2000,4000,1,0 \
    -efh:1000

# cmd/2.sh kos/$1.wav 3

fi

