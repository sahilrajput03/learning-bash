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
