#!/usr/bin/env bash

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
