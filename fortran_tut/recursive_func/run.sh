#!/bin/sh

clear
gfortran -c *.f95
gfortran *.o -o percom
rm *.o
./percom
