#!/usr/bin/env bash

# 2. My own cronjob (inspiration: https://chatgpt.com/c/6841590c-8708-8007-a55e-81307fee6562)

# ! [NOT TESTED YET]

target_epoch=$(date -d "14:05" +%s)
current_epoch=$(date +%s)
sleep_seconds=$((target_epoch - current_epoch))
[ $sleep_seconds -gt 0 ] && sleep $sleep_seconds
