if [ -z $1 ];then echo $0;else

cmd/lad/val.sh $1
cmd/lad/cmp.sh $1

# cmd/1.sh cmp/$1.wav

fi
