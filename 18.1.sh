#!/bin/bash

# 1. My own cronjob (inspiration: https://chatgpt.com/c/6841590c-8708-8007-a55e-81307fee6562)

while true; do
    current_time=$(date +%H:%M:%S)
    echo $current_time

    target_time="14:46:50"
    if [ "$current_time" == "$target_time" ]; then
        echo ✅ The time is $target_time.
    fi
    sleep 1
done
