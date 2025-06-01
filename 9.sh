#!/usr/bin/env bash
# * Learn about `return` and `exit` keyword

a() {
    echo "🚀Running function a"
    return 1 # Default return value is 0
}
a
exitCode=$?
echo -e "Return value/Exit code of function a: $exitCode \n"
# OUTPUT: Return value/Exit code of function a: 1

b() {
    echo "🚀Running function b"
    # Learn: We are using `return` to return the exit code of function a
    a || return
    echo "🎉 Function b ends here." # This line is never run.
}
b
exitCode=$?
echo -e "Return value/Exit code of function b: $exitCode \n"
# OUTPUT: Return value/Exit code of function b: 1

c() {
    echo "🚀Running function c"
    a || return 2
    echo "🎉 Function c ends here." # This line is never run.
}
c
exitCode=$?
echo -e "Return value/Exit code of function c: $exitCode \n"
# OUTPUT: Return value/Exit code of function c: 2

# ✅Learn:
#       1. At top level we can only use `exit` because `return` is not
#           valid at top level (i.e, we get error if we use `return`
#           at top level)
#       2. If we use `exit` instead of `exit 3` below then exit code
#           of this script will be 1 because function a returns 1
a || exit 3
echo Program never reaches here✅ # This line is never run.
