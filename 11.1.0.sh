#!/usr/bin/env bash

# 🚀 Send system notifications in macos

# 🚀 You can run a process in background in macos using `air` function
#       from the file ~/.zshrc (Tags: #true background process,
#           #detach process). [✅TESTED]
#   air -l 11.1.0.log bash 11.1.0.sh
echo "PID: $$"

# Also:
#  ✅To view process id do    `pgrep -f 11.1.0.sh`
#  ✅To kill background process then you can use      ```pkill -f 11.1.0.sh```

counter=0
while true; do
    counter=$((counter + 1)) # increment by 1
    # We output counts to stdout to test viewing logs of this process anytime in future:
    echo $counter

    # We send system notifications so we can know that process is runnning anytime in future:
    osascript -e "display notification \"$counter\" with title \"Test\""
    sleep 2
done
