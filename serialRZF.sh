#!/bin/bash

gcc serial/serial-rzf.c -o rzfserial

for i in 1 2 3 4 5
do
  time ./rzfserial 100000
  echo "Serial 100k iteration: $i"
  >&2 echo "Serial 100k iteration: $i"
done
>&2 echo "_____________________________"


for i in 1 2 3 4 5
do
  time ./rzfserial 1000000
  echo "Serial 1m iteration: $i"
   >&2 echo "Serial 1m iteration: $i"
done
>&2 echo "_____________________________"

for i in 1 2 3 4 5
do

  time ./rzfserial 100000000
  echo "Serial 100m iteration: $i"
   >&2 echo "Serial 100m iteration: $i"
done
>&2 echo "_____________________________"


for i in 1 2 3 4 5
do

  time ./rzfserial 1000000000
  echo "Serial 1000m iteration: $i"
   >&2 echo "Serial 1000m iteration: $i"
done
>&2 echo "_____________________________"



