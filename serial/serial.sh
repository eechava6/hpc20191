#!/bin/bash

gcc serial-mm.c -o serial

time ./serial 1000
echo "Serial 1k x 1k done"
time ./serial 4000
echo "Serial 4k x 4k done"
time ./serial 20000
echo "Serial 4k x 4k done"


