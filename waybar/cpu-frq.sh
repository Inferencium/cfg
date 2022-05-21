#!/usr/bin/env sh

# Copyright 2021 Inference

# 1.0.0.1


c=0;t=0

awk '/MHz/ {print $4}' < /proc/cpuinfo | (while read -r i
do
    t=$( echo "$t + $i" | bc )
    c=$((c+1))
done
echo "scale=2; $t / $c / 1000" | bc | awk '{print $1" GHz  "}')
