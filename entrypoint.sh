#!/bin/sh -l
echo "Input: $1"
time=$(date)
echo "::set-output name=time::$time"