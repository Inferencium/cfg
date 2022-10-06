#!/usr/bin/env bash

# Copyright 2021 Inference

# 1.0.0.1


sensors | grep "Tctl" | tr -d '+' | awk '{print $2}'
