#/usr/bin/env bash
echo $UID
echo "If you run the script via 'sudo' prefixed you would see '0' value because
# that denotes if the program is initiaed as root access or not."
echo
echo "If the user executing the script has root permissions by default then wihout
sudo the output would be '0'"
