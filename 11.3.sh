#!/bin/bash -x
# we enable debug mode with above -x

# 🚀 Kill all background jobs on exit using `jobs -p`

# create two processes with sleep 5 in background and kill them on exit with trap
sleep 1000 &
sleep 1000 &

# Kill all background jobs on exit:
trap 'kill $(jobs -p)' EXIT

# In any temrinal you can check if the process is running with:
# ps aux | grep '[s]leep 1000'

# Keep the script running so you can intercept ctrl+c signal to kill
#    this script and trigger trap command:
wait
