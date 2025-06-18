#!/usr/bin/env bash -x

echo Hello, I am sahil.

if [ "$SHELL" = "/bin/zsh" ]; then
    echo "✅Shell is /bin/zsh"
else
    echo "❤️SHELL is $SHELL"
fi
# Output (in zsh shell in macos):
#    ✅Shell is /bin/zsh
