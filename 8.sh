#!/usr/bin/env bash
# * Learn about `return`

a() {
    echo "🚀Running function a"
}
a
exitCode=$?
echo -e "returnValue/exitCode of function a: $exitCode \n"
# OUTPUT: returnValue/exitCode code of function a: 0

a() {
    echo "🚀Running function a"
    return
}
a
exitCode=$?
echo -e "returnValue/exitCode of function a: $exitCode \n"
# OUTPUT: returnValue/exitCode of function a: 0
