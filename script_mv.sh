#!/bin/bash
for i in {121..140}
do
cd sbs_s$i
#rm EP_bigger_TAD_distance.dat
mv CP_smaller_TAD_distance.dat CP_smaller_TAD_distance_$i.dat
mv CP_bigger_TAD_distance.dat CP_bigger_TAD_distance_$i.dat
mv EP_smaller_TAD_distance.dat EP_smaller_TAD_distance_$i.dat
mv EP_bigger_TAD_distance.dat EP_bigger_TAD_distance_$i.dat
!
cd ..
done

