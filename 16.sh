#!/usr/bin/env bash

echo

# time sleep 1
# Output (MACOS):
# real    0m1.007s
# user    0m0.001s
# sys     0m0.002s

# time bash -c 'sleep 1; sleep 1'
# Output (MACOS):
# real    0m2.026s
# user    0m0.007s
# sys     0m0.010s

# Learn: Its necessary to use braces {} around so that we can pipe the
#        output of time to grep
echo -n "✅real time: "
{ time sleep 1; } 2>&1 | grep "real" | awk '{print $2}'
# Output: ✅real time: 0m1.013s

echo -n "✅real time: "
{ time bash -c 'sleep 1 && sleep 1'; } 2>&1 | grep "real" | awk '{print $2}'
# Output: ✅real time: 0m2.037s

calculate_time() {
    local cmd="$1"
    time_taken=$({ time bash -c "$cmd"; } 2>&1 | tee /dev/tty | grep "real" | awk '{print $2}')
    echo "✅real time: $time_taken"
}

# Example usage
calculate_time 'sleep 1 && echo boom && sleep 1'
# Output:
# boom
#
# real    0m2.031s
# user    0m0.010s
# sys     0m0.013s
# ✅real time: 0m2.031s
