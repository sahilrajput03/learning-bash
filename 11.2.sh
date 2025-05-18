#!/bin/bash -x
# we enable debug mode with above -x

# 🚀 Kill all background jobs on exit using `jobs -p`

# create two processes with sleep 5 in background and kill them on exit with trap
sleep 5 &
sleep 5 &

# Kill all background jobs on exit:
trap 'kill $(jobs -p)' EXIT

# In any temrinal you can check if the process is running with:
# ps aux | grep '[s]leep 5'
