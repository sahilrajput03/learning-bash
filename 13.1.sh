#!/usr/bin/env bash

# 🚀 Run commands on failure of some commands via inline way

echo Good Command && echo Success✅ && echo Success2✅ || echo Failed❌
# Good Command
# Success✅
# Success2✅

echo

BadCommand && echo Success✅ || echo Failed❌ && echo Failed2❌
# Output:
# ./13.1.sh: line 10: BadCommand: command not found
# Failed❌
# Failed2❌

echo

# 🚀 Run multiple commands on failure of some commands via using braces way
TEMP_DIR=""
mkdir "$TEMP_DIR" && cd "$TEMP_DIR" || {
    echo "❌Error: Failed to create directory [$TEMP_DIR], aborting early"
    exit 1
}
# Output:
# mkdir: .: No such file or directory
# ❌Error: Failed to create directory [], aborting early

echo

badCmd1 && {
    badCmd2 && echo 'success' || echo 'badCmd2 failed'
} || echo 'cmd1 failed'
# Output:
#   ./13.1.sh: line 16: badCmd1: command not found
#   cmd1 failed

echo

echo "wow" && {
    badCmd2 && echo 'success' || echo 'badCmd2 failed'
} || echo 'cmd1 failed'
# Output:
#   wow
#   ./13.1.sh: line 21: badCmd2: command not found
#   badCmd2 failed
