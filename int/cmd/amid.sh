gm=/mnt/sdc3/mus/sf/mul/gm.sf2

if [ -z $1 ];then echo $0;else

abc2midi abc/$1.abc -o mid/$1.mid

fluidsynth \
-g 2 \
-R 0 \
-C 0 \
-l \
-r 48000 \
-F wav/$1.wav \
$gm \
mid/$1.mid

# cmd/wav.sh $1

fi
