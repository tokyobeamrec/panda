ar=(808 rea avl
   met mag rav
   b4a b4b b5
)
dir=/mnt/sdb3/mus/sf/dr
sf=$dir/${ar[1]}.sf2

if [ -z $1 ];then echo $0 ;else

abc2midi abc/$1.abc -o mid/$1.mid

fluidsynth -a alsa -g 0.3 \
    -o synth.chorus.active=no \
    -o synth.reverb.active=no \
    -o synth.sample-rate=48000 \
-F org/$1.wav \
$sf \
mid/$1.mid

cmd/ass.sh $1

fi
