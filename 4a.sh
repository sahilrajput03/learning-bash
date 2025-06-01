#!/usr/bin/env bash

# * Checking if root user using inside a function

echo "UID: $UID"
# Output: 0 (Always 0 for "root" user)
# Output: 1000 (for "array" user)

require_root() {
	ROOT_UID=0 # Only users with $UID 0 have root privileges.
	if [ "$UID" -ne 0 ]; then
		echo "Must be root to run this script."
		return 1
	fi
}

b() {
	require_root || return
	echo Congrats you are root user.
}
b
