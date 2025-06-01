#!/usr/bin/env bash
ROOT_UID=0
if [ "$UID" = "$ROOT_UID" ]; then
  echo "Yes, you have root permissions!"
fi

if [ "$UID" != "$ROOT_UID" ]; then
  echo "No, you dont have root permissions!"
fi

if [ "$UID" -ne "$ROOT_UID" ]; then # -ne is same as !=
  echo "No, you dont have root permissions! (WITH '-ne')"
fi

if [ "$UID" = 1000 ]; then # POSIX sh
  echo "You are a simple user with UID as '1000'."
fi

if [ "$UID" == 1000 ]; then # bash specific
  echo "You are a simple user with UID as '1000'."
fi

# A phenomenal usage:
# https://stackoverflow.com/a/40431336/10012446
