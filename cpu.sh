#!/bin/bash
a=$(df -h . | awk -F " " 'NR==2{ print $5 }' | sed 's/%//')
if [ $a -gt 50  ]
then 
	echo "Cpu usage is greater than 50%"
else
	echo "Cpu usage is lesser than or equal to 50%"
fi
