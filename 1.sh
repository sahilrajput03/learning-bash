#!/usr/bin/env bash

if [ "$SHELL" = "/bin/zsh" ]; then
    echo "✅Shell is /bin/zsh"
else
    echo "❤️SHELL is $SHELL"
fi
# Output (in zsh shell):
#    ✅Shell is /bin/zsh

# Process id of this script:
echo "PID: $$" # double $ sign [autodocs issue]
# Output:
# PID: 8264
