ecasound \
-n:eca \
-f:16,2,4800 \
-a:1 -i wav/hat.wav -ea:080 -erc:1,2 -epp:50 \
-a:2 -i wav/sn.wav -ea:90 -erc:1,2 -epp:50 \
-a:3 -i wav/mel.wav -ea:050 -erc:1,2 -epp:50 \
-a:4 -i wav/hr.wav -ea:050 -erc:1,2 -epp:50 \
-a:5 -i wav/pf.wav -ea:050 -erc:1,2 -epp:50 \
-a:all -o wav/0.wav
