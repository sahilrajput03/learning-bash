#/usr/bin/env bash
# Learn:
# 1. If you run the script via 'sudo' prefixed you would see `0` value
#       because that denotes if the program is run with root access
#       or not.
# 2. If the user executing the script has root permissions by default
#       then wihout using `sudo` the output would be `0`.
echo $UID
