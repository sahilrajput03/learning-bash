#!/bin/bash

# * Checking if root user using inside a function

echo "UID: $UID"
# Output: 0 (Always 0 for "root" user)
# Output: 1000 (for "array" user)

require_root() {
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
