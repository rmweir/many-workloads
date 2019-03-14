#!/usr/bin/env bash
  
ITERATIONS=$1
START=$2

for ((i=1;i<=$ITERATIONS;i++)); do
    echo \\\"Workload number: $i\\\"
    let sum=($i + $START - 1)
    let prior=($sum - 1)
    echo $prior
    python replace.py \"abcdefghr$prior\" \"abcdefghr$i\"
    paste curl command on this line
done
