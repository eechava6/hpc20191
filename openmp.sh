#!/bin/bash
 
g++ openmp/openmp-rzf.c -o rzfopenmp -fopenmp    
iterations()
{

for i in 1 2 3 4 5
do
  time ./rzfopenmp 100000
  echo "Serial 100k iteration: $i"
  >&2 echo "Serial 100k iteration: $i"
done
>&2 echo "_____________________________"


for i in 1 2 3 4 5
do
  time ./rzfopenmp 1000000
  echo "Serial 1m iteration: $i"
   >&2 echo "Serial 1m iteration: $i"
done
>&2 echo "_____________________________"

for i in 1 2 3 4 5
do

  time ./rzfopenmp 100000000
  echo "Serial 100m iteration: $i"
   >&2 echo "Serial 100m iteration: $i"
done
>&2 echo "_____________________________"


for i in 1 2 3 4 5
do

  time ./rzfopenmp 1000000000
  echo "Serial 1000m iteration: $i"
   >&2 echo "Serial 1000m iteration: $i"
done
>&2 echo "_____________________________"
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
