#!/usr/bin/env bash


python3 -m wildcat.demo_voc2007 ~/VOC2007 --image-size 448 --batch-size 4 --lrp 0.1 --lr 0.01 --epochs 20 --k 0.2 --maps 8 --alpha 0.7


