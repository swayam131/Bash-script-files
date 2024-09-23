#!/bin/bash
for i in {121..140}
do
cp a.out sbs_s$i/
cd sbs_s$i
./a.out &
!
cd ..
done
 
