#!/usr/bin/env bash

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
