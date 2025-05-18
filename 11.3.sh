#!/bin/bash -x
# we enable debug mode with above -x

# 🚀 Kill individual processes on exit

# Create two processes with sleep 5 in background and kill them on
#   exit with trap
sleep 1000 &
process1=$!

sleep 1000 &
process2=$!

trap "kill $process1 $process2" EXIT

# In any temrinal you can check if the process is running with:
# ps aux | grep '[s]leep 1000'

# Keep the script running so you can intercept ctrl+c signal to kill
#    this script:
wait
