#!/usr/bin/env sh


# Copyright 2021 Inference

# 1.0.0.1


## Kill all polybar instances.
killall -q polybar

## Launch polybar0
polybar polybar0 &

## Wait for polybar0 to launch before continuing.
sleep 1

## Launch polybar1
polybar polybar1 &
