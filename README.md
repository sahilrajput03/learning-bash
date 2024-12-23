# Readme

**Quick Links:**

- Docs Bash - TLDP: https://tldp.org/LDP/abs/html

**Running these scripts:**

- Use Code Runner (VsCode Extension) - [Google Doc](https://docs.google.com/document/d/1xLXMFJSQide-kGKkkDRA2sjpApDR-eBlddl0cWyZJOE/edit?tab=t.0#heading=h.i48pxvjshf90)
- Using `bmon` from the `my_bin` repository (or using `bm`)

## Format `.bash` and `.sh` file on save in VsCode

Just install this extension: https://marketplace.visualstudio.com/items?itemName=foxundermoon.shell-format and turn the default format in vsocde setting as 'null', so that appropriate formatters will be chosen for appropriate files.

## Code Generated via AutoDocs

### File - `0.sh`

Simple echo example.

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./0.sh) -->
<!-- The below code snippet is automatically added from ./0.sh -->
```sh
#!/bin/bash
# set -x
echo Hello, from example.
```
<!-- MARKDOWN-AUTO-DOCS:END -->

### File - `1.sh`

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./1.sh) -->
<!-- The below code snippet is automatically added from ./1.sh -->
```sh
#!/bin/bash
echo Hello i am sahil.
```
<!-- MARKDOWN-AUTO-DOCS:END -->

### File - `2.sh`

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./2.sh) -->
<!-- The below code snippet is automatically added from ./2.sh -->
```sh
#!/bin/bash
var=~/Desktop
cd $var
ls
```
<!-- MARKDOWN-AUTO-DOCS:END -->

### File - `3.sh`

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./3.sh) -->
<!-- The below code snippet is automatically added from ./3.sh -->
```sh
#/usr/bin/env bash
echo $UID
echo "If you run the script via 'sudo' prefixed you would see '0' value because
# that denotes if the program is initiaed as root access or not."
echo
echo "If the user executing the script has root permissions by default then wihout
sudo the output would be '0'"
```
<!-- MARKDOWN-AUTO-DOCS:END -->

### File - `4.sh`

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./4.sh) -->
<!-- The below code snippet is automatically added from ./4.sh -->
```sh
#!/bin/bash
ROOT_UID=0 # Only users with $UID 0 have root privileges.

if [ "$UID" -ne "$ROOT_UID" ]; then
  echo "Must be root to run this script."
  exit $E_NOTROOT
fi

echo Congrats you are root user.
```
<!-- MARKDOWN-AUTO-DOCS:END -->

### File - `5.sh`

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./5.sh) -->
<!-- The below code snippet is automatically added from ./5.sh -->
```sh
#!/bin/bash
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
```
<!-- MARKDOWN-AUTO-DOCS:END -->

### File - `6.sh`

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./6.sh) -->
<!-- The below code snippet is automatically added from ./6.sh -->
```sh
#!/bin/bash

echo Read this amazing answer on stackoverflow: https://stackoverflow.com/a/40431336/10012446
echo "There is lots of way to compare value like string and numbers differenctly and using the C way i.e., == operator as well."
```
<!-- MARKDOWN-AUTO-DOCS:END -->

### File - `7.sh`

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./7.sh) -->
<!-- The below code snippet is automatically added from ./7.sh -->
```sh
#!/bin/bash
#This file demonstrates simple string manipulation with variables.
echo -----
A="Sahil" 				#Note you should ALWAYS use quotes around text when assigning it to variable.
B="${A} Rajput"  	#This is how we add text to string in bash.

echo $A
echo $B
```
<!-- MARKDOWN-AUTO-DOCS:END -->
