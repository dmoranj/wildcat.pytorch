#!/usr/bin/env bash

python3 -m wildcat.demo_voc2007 /data/VOC2007 --image-size 448 --batch-size $BATCH --lrp 0.1 --lr 0.01 --epochs $EPOCHS --k 0.2 --maps 8 --alpha 0.7

cp -R /expes/models /data




