#!/usr/bin/env bash

# 🚀 Run commands on failure of some commands via inline way

echo Good Command && echo Success✅ && echo Success2✅ || echo Failed❌
# Good Command
# Success✅
# Success2✅

BadCommand && echo Success✅ || echo Failed❌ && echo Failed2❌
# Output:
# ./13.1.sh: line 10: BadCommand: command not found
# Failed❌
# Failed2❌
