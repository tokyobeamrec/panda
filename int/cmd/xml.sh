p=/mnt/sdb1/vox/abc2xml/abc2xml.py
if test -z $1;then echo $0;else

python  $p \
abc/$1.abc > xml/$1.xml

fi
