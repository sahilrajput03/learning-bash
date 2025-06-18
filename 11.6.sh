#!/usr/bin/env bash

# 🚀 Running two while loops in background and killing them `ctrl+c`
# 🚀 Learn: `pgrep` (pgrep -f), `pkill` (pkill -f), `osascript` Cli
#         to show system notifications in macos.

echo "PID of the current shell: $$" # double $ sign [autodocs issue]

# First task in asynchronous mode
while true; do
    osascript -e 'display notification "Message 1" with title "Title 1"'
    sleep 2
done &
PID1=$!
echo "PID1: $PID1"

# Second task (another loop or command) in asynchronous mode
while true; do
    sleep 1 # offsync this loop by 1 second
    osascript -e 'display notification "Message 2" with title "Title 2"'
    sleep 2
done &
PID2=$!
echo "PID2: $PID2"

# Print all background jobs:
echo "Background jobs process ids via 'jobs -p':"
jobs -p

# This is executed when you press ctrl+c
trap "kill $PID1 $PID2; echo '✅Killed background processes: $PID1 $PID2'" EXIT

# ✅ Kill all background jobs on exit via `jobs -p` [TESTED]
# bgProcessIds="$(jobs -p | xargs)"
# trap "kill $bgProcessIds; echo '✅Killed background processes: $bgProcessIds'" EXIT

wait

# * ✅ For manual tracking if it gets orphaned in worst case:
# ps au | grep '[1]1.6'
# apple  5284   0.0  0.0 33742688    712 s024  S+    5:04PM   0:00.02 /bin/bash ./11.6.sh
# apple  5283   0.0  0.0 33743712    724 s024  S+    5:04PM   0:00.01 /bin/bash ./11.6.sh
# apple  5267   0.0  0.0 33728352   1016 s024  S+    5:04PM   0:00.01 /bin/bash ./11.6.sh

# * ✅ Check process in background (all below works):
# pgrep -f 11.6.sh
# pgrep -f 11.6
# pgrep -f ./11.6
# pgrep -f 'bash ./11.6.sh'

# * ✅ Kill process via:
# pkill -f 11.6

# & 🚀 What does -f do in `pgrep` and `pkill` command?
# Consider this process output from `ps au` command:
#       apple 46985   ...   /bin/bash ./11.6.sh
# Here:
#       COMMAND: sh
#       ARGUMENT: ./a.s
#       FULL COMMAND LINE: sh ./a.s
# * 🚀 So, using pgrep -f matches against this full line (sh ./a.s), rather
#   than just the command (sh), allowing for more precise filtering.
