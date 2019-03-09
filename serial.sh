#!/bin/bash

gcc serial/serial-mm.c -o mmserial

for i in 1 2 3 4 5
do
  time ./mmserial 1000
  echo "Serial 1k x 1k iteration: $i"
done
echo "_____________________________"


for i in 1 2 3 4 5
do
  time ./mmserial 4000
  echo "Serial 4k x 4k iteration: $i"
done
echo "_____________________________"

for i in 1 2 3 4 5
do
  time ./mmserial 5000
  echo "Serial 5k x 5k iteration: $i"
done
echo "_____________________________"




