#!/usr/bin/env bash

# 2. My own cronjob (inspiration: https://chatgpt.com/c/6841590c-8708-8007-a55e-81307fee6562)
# ✅Tested in Macos

# ⭕️ Note: In bash most probably the code from chatgpt
#       link above will work because I command from above didn't work in zsh
#       and I used copilot to fix it for zsh in macos)

targetTime="19:59"
target_epoch=$(date -j -f "%Y-%m-%d %H:%M" "$(date +%Y-%m-%d) $targetTime" +%s)
echo 🚀 ~ target_epoch: $target_epoch
current_epoch=$(date +%s)
echo 🚀 ~ current_epoch: $current_epoch
sleep_seconds=$((target_epoch - current_epoch))
echo 🚀 ~ sleep_seconds: $sleep_seconds

if [ $sleep_seconds -gt 0 ]; then
    sleep $sleep_seconds
else
    echo "❌Error: Sleep seconds must be greater than 0" >&2
    exit 1
fi
