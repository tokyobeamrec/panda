dir=/mnt/sdc3/mus/sf/bs
nam=moo

sf=$dir/$nam.sf2

if [ -z $1 ];then echo $0;else

abc2midi abc/$1.abc -o mid/$1.mid

fluidsynth \
-g 1 \
-R 0 \
-C 0 \
-l \
-r 48000 \
-F org/$1.wav \
$sf \
mid/$1.mid

cmd/ass.sh $1

fi
