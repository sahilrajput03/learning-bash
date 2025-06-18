#!/usr/bin/env bash -x
# we enable debug mode with above -x

# 🚀 Kill all background jobs using `jobs -p` on exit

# create two processes for 99 seconds in background and kill them on exit with trap
sleep 99 &
sleep 99 &

# ✅ Kill all background jobs on exit via `jobs -p` [TESTED]
bgProcessIds="$(jobs -p | xargs)"
trap "kill $bgProcessIds; echo '✅Killed background processes: $bgProcessIds'" EXIT

# In any temrinal you can check if the process is running with:
# ps aux | grep '[s]leep 1000'

wait
