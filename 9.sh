#!/bin/bash
# * Learn about `return` and `exit` keyword

a() {
    echo "🚀Running function a"
    return 2 # Default return value is 0
}
a
exitCode=$?
echo -e "Return value/Exit code of function a: $exitCode \n"
# OUTPUT: Return value/Exit code of function a: 2

b() {
    echo "🚀Running function b"
    # Learn: We are using `return` to return the exit code of function a
    a || return
    echo "🎉 Function b ends here." # This line is never run.
}
b
exitCode=$?
echo -e "Return value/Exit code of function b: $exitCode \n"
# OUTPUT: Return value/Exit code of function b: 2

c() {
    echo "🚀Running function c"
    a || return 3
    echo "🎉 Function c ends here." # This line is never run.
}
c
exitCode=$?
echo -e "Return value/Exit code of function c: $exitCode \n"
# OUTPUT: Return value/Exit code of function c: 3

# ✅Learn: At top level we can only use `exit` because `return` is not
#       valid at top level
# ✅Learn: If we use `exit` instead of `exit 1` below then exit code of
#       this script will be 2 because function a returns 2
a || exit 1
echo Program never reaches here✅ # This line is never run.
