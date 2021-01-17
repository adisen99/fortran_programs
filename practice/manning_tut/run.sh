#!/bin/sh

fpm build
fpm run > out.txt 
python plot.py out.txt
rm water_height.mp4
./png2mp4.sh
cd images
rm *.png
cd ..
