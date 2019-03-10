#!/bin/bash

gcc openmp/openmp-mm.c -o mmopenmp -fopenmp    

iterations()
{
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
}


for h in 1 2 3 4 8 12 16 24
do
  >&2 echo "Openmp $h Threads"
  echo "THREADS = $h"
  export OMP_NUM_THREADS=$h
  echo $OMP_NUM_THREADS
  iterations
  echo "END THREADS = $h"
  echo "__________________________"
  >&2 echo "END Openmp $h Threads"
done
