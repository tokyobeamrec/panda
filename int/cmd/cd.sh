
if test -z $1;then echo $0 tmp;else
cd ../ini
pwd
cmd/rel.sh $1
cd ../
pwd

fi
