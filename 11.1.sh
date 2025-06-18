#!/usr/bin/env bash -x

# 🚀 Run a command on program exit
# 🚀 Learn `wait`, `sleep` command.

# ✅ Learn: You can use microseconds with sleep command too:
# sleep 0.1

# 1. Amazing guide to using trap by linuxjournal.com at https://www.linuxjournal.com/content/bash-trap-command
# 2. Set a function to be executed in the trap commands. Source: https://stackoverflow.com/a/3338302/10012446
# 3. Reset trap command:
#   Source: https://stackoverflow.com/a/31202968/10012446
#   Source2: https://bash.cyberciti.biz/guide/How_to_clear_trap#:~:text=Enter%20number%20(%2D9999%20to%20exit)%20%3A%20999%20999%20is%20an,exit)%20%3A%20%2D9999%20Bye!

# Create file abc.txt
touch abc.txt

# Learn: `trap` runs command if:
#   1. program exit natually on its own.
#   2. ctrl+c i.e., [SIGINT (2)]
COMMAND="rm abc.txt"
trap "$COMMAND" exit

# Create a background running program --- check it via `pgrep sleep`
sleep 100 &

# ✅ `wait` command
# 1. The wait command in Bash pauses the execution of a script until
#      all background jobs or a specific job (by PID or job ID)
#      finish.
# 2. It returns the exit status of the waited-for process.
# 3. Usage:
#       wait → waits for all background jobs to complete.
#       wait <PID> → waits for a specific process ID to complete.
#       wait %<job_id> → waits for a specific job (e.g., %1) to complete.
# 4. Keep the script running until previous background processes
#    before the wait command are running so you can intercept ctrl+c
#    signal to kill this script and trigger trap command to kill the
#    earlier background processes as well.
wait
