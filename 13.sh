#!/usr/bin/env bash

# 🚀 Run multiple commands on failure of some commands

# setup
TEMP_DIR=""
mkdir "$TEMP_DIR" && cd "$TEMP_DIR" || {
    echo "Error: Failed to create directory [$TEMP_DIR], aborting early"
    echo "Bye bye 👋"
    exit 1
}
