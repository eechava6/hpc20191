#!/bin/bash

mpicc -O2 -w mpi-c/vecsum-mpi1.c  -o vecsum1MPI


iterations()
{
np=$1

echo -e  "\n MPI 4k"
for i in 1 2 3
do
  mpirun -np $np -f hosts_mpi  ./vecsum1MPI 4000
done


echo -e  "\n MPI 5k"
for i in 1 2 3 
do
   mpirun -np $np -f hosts_mpi  ./vecsum1MPI 5000
done

echo -e  "\n MPI 10k"
for i in 1 2 3 
do
   mpirun -np $np -f hosts_mpi  ./vecsum1MPI 10000
done

}


for h in 2 3 4 8 12 16 32 48 64 70
do
  echo -e  "NP $h"
  iterations $h
  echo -e  "_______________________________\n"

done

