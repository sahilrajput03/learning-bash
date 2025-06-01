#!/usr/bin/env bash
# * Learn about `return`

a() {
    echo "🚀Running function a"
}
a
exitCode=$?
echo -e "Return value/Exit code of function a: $exitCode \n"
# OUTPUT: Return value/Exit code of function a: 0

a() {
    echo "🚀Running function a"
    return
}
a
exitCode=$?
echo -e "Return value/Exit code of function a: $exitCode \n"
# OUTPUT: Return value/Exit code of function a: 0
