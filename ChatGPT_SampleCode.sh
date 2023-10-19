#!/bin/bash

grade=(50 63 76 85 90 100)

for i in "${grade[@]}"; do
	if [ $i -ge 90 ]; then
		if [ $i -gt 93 ]; then
			echo "A"
		elif [ $i -le 93 ]; then
			echo "A-"
		fi
	elif [ $i -ge 80 ]; then
		if [ $i -gt 87 ]; then
			echo "B+"
		elif [ $i -gt 83 ]; then
			echo "B"
		elif [ $i -le 83 ]; then
			echo "B-"
		fi
	elif [ $i -ge 70 ]; then
		if [ $i -gt 77 ]; then
			echo "C+"
		elif [ $i -gt 73 ]; then
			echo "C"
		elif [ $i -le 73 ]; then
			echo "C-"
		fi
	else
		echo "Come see me for help and motivation!"
	fi
done