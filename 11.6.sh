# & 🚀 Runing two while loops in background and killing them `ctrl+c`
# Learn: `wait`, `pgrep`, `pkill` commands.

# Learn: In macos `osascript` is used to show system notifications.

echo "Process ID (PID) of the current shell: $" # double $ sign [autodocs issue]

# First task in asynchronous mode
while true; do
    osascript -e 'display notification "Message 1" with title "Title 1"'
    sleep 2
done &
PID1=$!
echo $PID1

# Second task (another loop or command) in asynchronous mode
while true; do
    sleep 1 # offsync this loop by 1 second
    osascript -e 'display notification "Message 2" with title "Title 2"'
    sleep 2
done &
PID2=$!
echo $PID2

# This is executed when you press ctrl+c
trap "kill $PID1 $PID2; echo 'Killed background operations.'" EXIT

# * The wait command in Bash pauses the execution of a script until all background jobs or a specific job (by PID or job ID) finish.
#   It returns the exit status of the waited-for process.
#   Usage:
#       wait → waits for all background jobs to complete.
#       wait <PID> → waits for a specific process ID to complete.
#       wait %<job_id> → waits for a specific job (e.g., %1) to complete.
wait

# * For manual tracking if it gets orphaned in worst case:
# Check process in background:
# pgrep -f a.sh
# pgrep -f 'sh ./a.sh'

# Kill process via:
# pkill -f a.sh
