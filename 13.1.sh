#!/usr/bin/env bash

# 🚀 Run  commands on failure of some commands via inline way

echo Good Command && echo Success✅ || echo Failed❌
# Good Command
# Success✅

BadCommand && echo Success✅ || echo Failed❌
# Output:
# 4: BadCommand: command not found
# Failed❌
