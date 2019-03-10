#!/bin/bash

mpicc -O2 -w mpi-c/mpi-mm.c -o mmMPI


iterations()
{
np=$1

echo "\n MPI 1k"
for i in 1 2 3
do
  mpirun -$np $ -f hosts_mpi  ./mmMPI 1000
done


echo "\n MPI 4k"
for i in 1 2 3 
do
   mpirun -$np $ -f hosts_mpi  ./mmMPI 4000
done

echo "\n MPI 5k"
for i in 1 2 3 
do
   mpirun -$np $ -f hosts_mpi  ./mmMPI 5000
done

}


for h in 2 3 4 8 12 16 32 48 64 70
do
  echo "NP $h"
  iterations $h
  echo "_______________________________\n"

done

