#!/bin/bash
PROGS=("1" "2" "3" "4" "5" "6-1" "6-2" "6-3" "7-1" "7-2" "8" "9-1" "9-2")

for i in {0..12}
do
	g++ ${PROGS[i]}.cpp -o prog -O2
	(/usr/bin/time -f "%U" ./prog > discard_output;) > discard_output 2> output
	read t < output
	echo Test ${PROGS[i]}: ${t}s
done
