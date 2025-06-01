#!/usr/bin/env bash

# From ChatGPT: https://chatgpt.com/c/682a21f9-c860-8007-b816-51d90d5438ae

# VARIABLE MEANING
# $$ 	    Process ID (PID) of the current shell.
#   ^ (double $ sign)[#autodocs issue]
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
echo "PID of this script: $$" # double $ sign [autodocs issue]

sleep 5 &
echo "Background process PID: $!"

false
echo "Exit status of 'false' command: $?"
