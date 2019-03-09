#!/bin/bash

gcc openmp/openmp-mm.c -o openmp -fopenmp    

iterations()
{
for i in 1 2 3 4 5
do
  time ./openmp 1000
  >&2 echo "openmp 1k $i"
  echo "openmp 1k x 1k iteration: $i"
done



for i in 1 2 3 4 5
do
  time ./openmp 4000
  >&2 echo "openmp 4k $i"
  echo "openmp 4k x 4k iteration: $i"
done


for i in 1 2 3 4 5
do
  time ./openmp 5000
  >&2 echo "openmp 5k $1"
  echo "openmp 5k x 5k iteration: $i"
done
}


for i in 1 2 3 4 8 12 16 24
do
  >&2 echo "Openmp $1 Threads"
  echo "THREADS = $i"
  export OMP_NUM_THREADS=$i
  echo $OMP_NUM_THREADS
  iterations
  echo "END THREADS = $i"
  echo "__________________________"
  >&2 echo "END Openmp $1 Threads"
done
