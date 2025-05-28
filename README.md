# Readme

### Quick Links

- ❤️Learn Bash: [Click here](https://github.com/sahilrajput03/sahilrajput03/blob/main/learn-bash.md)
- Docs Bash - TLDP: https://tldp.org/LDP/abs/html

### Running these scripts

- Use Code Runner (VsCode Extension) - [Google Doc](https://docs.google.com/document/d/1xLXMFJSQide-kGKkkDRA2sjpApDR-eBlddl0cWyZJOE/edit?tab=t.0#heading=h.i48pxvjshf90)
  - ❤️ `ctrl+option+n` to run the currently focussed file.
- Using `bmon` from the `my_bin` repository (or using `bm`)

### Format `.bash` and `.sh` file on save in VsCode

Just install this extension: https://marketplace.visualstudio.com/items?itemName=foxundermoon.shell-format and turn the default format in vsocde setting as 'null', so that appropriate formatters will be chosen for appropriate files.

## Code Generated via AutoDocs

### File - `0.sh`

Simple echo example.

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./0.sh) -->
<!-- The below code snippet is automatically added from ./0.sh -->
```sh
#!/bin/bash
# set -x
echo Hello, from example.
```
<!-- MARKDOWN-AUTO-DOCS:END -->

### File - `1.1.sh`

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./1.1.sh) -->
<!-- The below code snippet is automatically added from ./1.1.sh -->
```sh
#!/bin/bash
echo Good Command && echo Success✅ || echo Failed❌
# Good Command
# Success✅

BadCommand && echo Success✅ || echo Failed❌
# Output:
# 4: BadCommand: command not found
# Failed❌
```
<!-- MARKDOWN-AUTO-DOCS:END -->

### File - `1.sh`

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./1.sh) -->
<!-- The below code snippet is automatically added from ./1.sh -->
```sh
#!/bin/bash
echo Hello i am sahil.
```
<!-- MARKDOWN-AUTO-DOCS:END -->

### File - `2.sh`

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./2.sh) -->
<!-- The below code snippet is automatically added from ./2.sh -->
```sh
#!/bin/bash
var=~/Desktop
cd $var
ls
```
<!-- MARKDOWN-AUTO-DOCS:END -->

### File - `3.sh`

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./3.sh) -->
<!-- The below code snippet is automatically added from ./3.sh -->
```sh
#/usr/bin/env bash
# Learn:
# 1. If you run the script via 'sudo' prefixed you would see `0` value
#       because that denotes if the program is run with root access
#       or not.
# 2. If the user executing the script has root permissions by default
#       then wihout using `sudo` the output would be `0`.
echo $UID
```
<!-- MARKDOWN-AUTO-DOCS:END -->

### File - `4.sh`

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./4.sh) -->
<!-- The below code snippet is automatically added from ./4.sh -->
```sh
#!/bin/bash

# Learn you can use either `UID` or `EUID`, both performs exactly same in
#     my testing experience. EUID is almost always used by the kernel and
#     most system calls (e.g., open(), chmod(), kill()) to check
#     permissions.

# * Checking if root user at top level (not inside any function)

echo "UID: $UID"
# Output: 0 (Always 0 for "root" user)
# Output: 1000 (for "array" user)

require_root() {
  ROOT_UID=0 # Only users with $UID 0 have root privileges.
  if [ "$UID" -ne "$ROOT_UID" ]; then
    echo "Must be root to run this script."
    return 1
  fi
}

require_root || exit 1
echo Congrats you are root user.
```
<!-- MARKDOWN-AUTO-DOCS:END -->

### File - `5.sh`

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./5.sh) -->
<!-- The below code snippet is automatically added from ./5.sh -->
```sh
#!/bin/bash
ROOT_UID=0
if [ "$UID" = "$ROOT_UID" ]; then
  echo "Yes, you have root permissions!"
fi

if [ "$UID" != "$ROOT_UID" ]; then
  echo "No, you dont have root permissions!"
fi

if [ "$UID" -ne "$ROOT_UID" ]; then # -ne is same as !=
  echo "No, you dont have root permissions! (WITH '-ne')"
fi

if [ "$UID" = 1000 ]; then # POSIX sh
  echo "You are a simple user with UID as '1000'."
fi

if [ "$UID" == 1000 ]; then # bash specific
  echo "You are a simple user with UID as '1000'."
fi

# A phenomenal usage:
# https://stackoverflow.com/a/40431336/10012446
```
<!-- MARKDOWN-AUTO-DOCS:END -->

### File - `6.sh`

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./6.sh) -->
<!-- The below code snippet is automatically added from ./6.sh -->
```sh
#!/bin/bash

echo Read this amazing answer on stackoverflow: https://stackoverflow.com/a/40431336/10012446
echo "There is lots of way to compare value like string and numbers differenctly and using the C way i.e., == operator as well."
```
<!-- MARKDOWN-AUTO-DOCS:END -->

### File - `7.sh`

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./7.sh) -->
<!-- The below code snippet is automatically added from ./7.sh -->
```sh
#!/bin/bash
#This file demonstrates simple string manipulation with variables.
echo -----
A="Sahil" 				#Note you should ALWAYS use quotes around text when assigning it to variable.
B="${A} Rajput"  	#This is how we add text to string in bash.

echo $A
echo $B
```
<!-- MARKDOWN-AUTO-DOCS:END -->

### File - `8.sh`

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./8.sh) -->
<!-- The below code snippet is automatically added from ./8.sh -->
```sh
#!/bin/bash
# * Learn about `return`

a() {
    echo "🚀Running function a"
}
a
exitCode=$?
echo -e "Return value/Exit code of function a: $exitCode \n"
# OUTPUT: Return value/Exit code of function a: 0

a() {
    echo "🚀Running function a"
    return
}
a
exitCode=$?
echo -e "Return value/Exit code of function a: $exitCode \n"
# OUTPUT: Return value/Exit code of function a: 0
```
<!-- MARKDOWN-AUTO-DOCS:END -->

### File - `9.sh`

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./9.sh) -->
<!-- The below code snippet is automatically added from ./9.sh -->
```sh
#!/bin/bash
# * Learn about `return` and `exit` keyword

a() {
    echo "🚀Running function a"
    return 1 # Default return value is 0
}
a
exitCode=$?
echo -e "Return value/Exit code of function a: $exitCode \n"
# OUTPUT: Return value/Exit code of function a: 1

b() {
    echo "🚀Running function b"
    # Learn: We are using `return` to return the exit code of function a
    a || return
    echo "🎉 Function b ends here." # This line is never run.
}
b
exitCode=$?
echo -e "Return value/Exit code of function b: $exitCode \n"
# OUTPUT: Return value/Exit code of function b: 1

c() {
    echo "🚀Running function c"
    a || return 2
    echo "🎉 Function c ends here." # This line is never run.
}
c
exitCode=$?
echo -e "Return value/Exit code of function c: $exitCode \n"
# OUTPUT: Return value/Exit code of function c: 2

# ✅Learn:
#       1. At top level we can only use `exit` because `return` is not
#           valid at top level (i.e, we get error if we use `return`
#           at top level)
#       2. If we use `exit` instead of `exit 3` below then exit code
#           of this script will be 1 because function a returns 1
a || exit 3
echo Program never reaches here✅ # This line is never run.
```
<!-- MARKDOWN-AUTO-DOCS:END -->

### File - `10.sh`

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./10.sh) -->
<!-- The below code snippet is automatically added from ./10.sh -->
```sh
#!/bin/bash

# -e – file exists (whether regular file, directory, etc.)
# -f – file exists and is a regular file
# -d – file exists and is a directory

if [ -e "10.sh" ]; then
    echo "✅File exists."
else
    echo "❌File does not exist."
fi

if [ -f "10.sh" ]; then
    echo "✅File exists."
else
    echo "❌File does not exist."
fi

if [ -d ".github" ]; then
    echo "✅Directory exists."
else
    echo "❌Directory does not exist."
fi
```
<!-- MARKDOWN-AUTO-DOCS:END -->

### File - `11.1.sh`

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./11.1.sh) -->
<!-- The below code snippet is automatically added from ./11.1.sh -->
```sh
#!/bin/bash -x

# 1. Amazing guide to using trap by linuxjournal.com at https://www.linuxjournal.com/content/bash-trap-command
# 2. Set a function to be executed in the trap commands. Source: https://stackoverflow.com/a/3338302/10012446
# 3. Reset trap command:
#   Source: https://stackoverflow.com/a/31202968/10012446
#   Source2: https://bash.cyberciti.biz/guide/How_to_clear_trap#:~:text=Enter%20number%20(%2D9999%20to%20exit)%20%3A%20999%20999%20is%20an,exit)%20%3A%20%2D9999%20Bye!

# Create file abc.txt
touch abc.txt

COMMAND="rm abc.txt"
# Runs command if:
#   1. program exit natually on its own.
#   2. ctrl+c i.e., [SIGINT (2)]
trap "$COMMAND" exit

sleep 100
```
<!-- MARKDOWN-AUTO-DOCS:END -->

### File - `11.2.sh`

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./11.2.sh) -->
<!-- The below code snippet is automatically added from ./11.2.sh -->
```sh
#!/bin/bash -x
# we enable debug mode with above -x

# 🚀 Run a bash function exit

bye() {
    echo "Bye bye"
}

# Runs function if:
#   1. program exit natually on its own.
#   2. ctrl+c i.e., [SIGINT (2)]
trap bye exit

echo "Hello world"
sleep 100
```
<!-- MARKDOWN-AUTO-DOCS:END -->

### File - `11.3.sh`

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./11.3.sh) -->
<!-- The below code snippet is automatically added from ./11.3.sh -->
```sh
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
```
<!-- MARKDOWN-AUTO-DOCS:END -->

### File - `11.4.sh`

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./11.4.sh) -->
<!-- The below code snippet is automatically added from ./11.4.sh -->
```sh
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
#    this script and trigger trap command:
wait
```
<!-- MARKDOWN-AUTO-DOCS:END -->

### File - `11.5.sh`

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./11.5.sh) -->
<!-- The below code snippet is automatically added from ./11.5.sh -->
```sh
#!/bin/bash -x
# we enable debug mode with above -x

# 🚀 Kill process using `pkill` to match process name on exit

trap 'pkill -f tailwind' exit

# Run tailwindcss with watch mode and send it to background
tailwindcss -w -i ./app/static/src/main.css -o ./app/static/dist/main.css --minify &

flask run

# Another intersting usage found in cloud-init docs to stop python server on exiting qemu instance shell command:
# Check @ https://github.com/sahilrajput03/config/blob/852bda337a6de7df6e767b01bffa3ee9835e9914/_linode/testing-cloud-init-with-qemu/with-archlinux-cloudimg/SCRIPT_QEMU.sh
```
<!-- MARKDOWN-AUTO-DOCS:END -->

### File - `12.sh`

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./12.sh) -->
<!-- The below code snippet is automatically added from ./12.sh -->
```sh
#!/bin/bash

# From ChatGPT: https://chatgpt.com/c/682a21f9-c860-8007-b816-51d90d5438ae

# VARIABLE	MEANING
# $	    Process ID (PID) of the current shell.
# $?	    Exit status of the last executed command. 0 means success, any other value usually indicates an error.
# $!	    PID of the last background command.
# $0	    Name of the script itself.
# $1 to $9	Positional parameters: the first to ninth arguments passed to the script/function.
# $@	    All positional parameters, as separate words. Preserves quotes.
# $*	    All positional parameters as a single word (may not preserve quotes).
# "$@"	    Preferred when passing arguments to another command/function.
# "$*"	    Treats all arguments as a single string.

echo "Script name: $0"
echo "First arg: $1"
echo "All args: $@"
echo "PID of this script: $"

sleep 5 &
echo "Background process PID: $!"

false
echo "Exit status of 'false' command: $?"
```
<!-- MARKDOWN-AUTO-DOCS:END -->

### File - `13.sh`

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./13.sh) -->
<!-- The below code snippet is automatically added from ./13.sh -->
```sh
#!/bin/bash

# 🚀 Run multiple commands on failure of some commands

# setup
TEMP_DIR=""
mkdir "$TEMP_DIR" && cd "$TEMP_DIR" || {
    echo "Error: Failed to create directory [$TEMP_DIR], aborting early"
    echo "Bye bye 👋"
    exit 1
}
```
<!-- MARKDOWN-AUTO-DOCS:END -->

### File - `14.sh`

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./14.sh) -->
<!-- The below code snippet is automatically added from ./14.sh -->
```sh
#!/bin/bash

# 🚀Create file myfile.txt with content using cat command

# Note: If file already exists, it will be overwritten [TESTED]
cat <<EOF >myfile.txt
Hello world
EOF
```
<!-- MARKDOWN-AUTO-DOCS:END -->

### File - `15.sh`

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./15.sh) -->
<!-- The below code snippet is automatically added from ./15.sh -->
```sh
#!/bin/bash

# * 🚀 Using `&` to run commands in background and switching to them using `fg`

# & ⚠️ NOTE: This script must be sourced (run with 'source' command or
# &          '.') to work properly [TESTED on linux and macos]
# Example: source 15.sh or . ./15.sh

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    echo "Please run this script using 'source' command or '.'"
    exit 1
fi

# Start a Python HTTP server (port 8000) for serving files in current directory
# This runs in background and can be brought to foreground with 'fg' command
python3 -m http.server --directory . &

echo "✅Process started with process ID: $!"

# Also, you can:
#   - get process ID via `pgrep python`
#   - kill process via via `pkill python`

# Now you can switch back to this serve using fg command
# fg
```
<!-- MARKDOWN-AUTO-DOCS:END -->

### File - `16.sh`

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./16.sh) -->
<!-- The below code snippet is automatically added from ./16.sh -->
```sh
#!/bin/bash

echo

# time sleep 1
# Output (MACOS):
# real    0m1.007s
# user    0m0.001s
# sys     0m0.002s

# time bash -c 'sleep 1; sleep 1'
# Output (MACOS):
# real    0m2.026s
# user    0m0.007s
# sys     0m0.010s

# Learn: Its necessary to use braces {} around so that we can pipe the
#        output of time to grep
echo -n "✅real time: "
{ time sleep 1; } 2>&1 | grep "real" | awk '{print $2}'

echo -n "✅real time: "
{ time bash -c 'sleep 1 && sleep 1'; } 2>&1 | grep "real" | awk '{print $2}'

calculate_time() {
    local cmd="$1"
    time_taken=$({ time bash -c "$cmd"; } 2>&1 | tee /dev/tty | grep "real" | awk '{print $2}')
    echo "✅real time: $time_taken"
}

# Example usage
calculate_time 'sleep 1 && echo boom && sleep 1'
```
<!-- MARKDOWN-AUTO-DOCS:END -->