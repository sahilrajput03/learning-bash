#!/bin/bash
ROOT_UID=0 # Only users with $UID 0 have root privileges.

if [ "$UID" -ne "$ROOT_UID" ]; then
  echo "Must be root to run this script."
  exit $E_NOTROOT
fi

echo Congrats you are root user.
