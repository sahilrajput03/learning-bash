#!/bin/bash -x
# we enable debug mode with above -x

# 🚀 Run a bash function on program exit

bye() {
    echo "Bye bye"
}

# Runs function if:
#   1. program exit natually on its own.
#   2. ctrl+c i.e., [SIGINT (2)]
trap bye exit

echo "Hello world"
# sleep 100

wait
