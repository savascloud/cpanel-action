#!/bin/sh -l

echo "Input: $1"
time=$(date)
echo "::set-output name=time::$time"
php -f /index.php $1 value2