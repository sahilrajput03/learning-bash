#!/usr/bin/env bash
# * Learn about `return` and `exit` keyword

a() {
    echo "🚀Running function a"
    return 1 # Default returnValue is 0
}
a
exitCode=$?
echo -e "returnValue/exitCode of function a: $exitCode \n"
# OUTPUT: returnValue/exitCode of function a: 1

b() {
    echo "🚀Running function b"
    # Learn: Here command a fails thus return expression is executed
    #       and then the returnCode of function a is returned from
    #       function b.
    a || return
    echo "🎉 Function b ends here." # ❌This line is never run.
}
b
exitCode=$?
echo -e "returnValue/exitCode of function b: $exitCode \n"
# OUTPUT: returnValue/exitCode of function b: 1

c() {
    echo "🚀Running function c"
    a || return 2
    echo "🎉 Function c ends here." # ❌This line is never run.
}
c
exitCode=$?
echo -e "returnValue/exitCode of function c: $exitCode \n"
# OUTPUT: returnValue/exitCode of function c: 2

# ✅Learn:
#       1. At top level we can only use `exit` because `return` is not
#           valid at top level (i.e, we get error if we use `return`
#           at top level)
#       2. If we use `exit` instead of `exit 3` below then exitCode
#           of this script will be 1 because function a returns 1
a || exit 3
echo Program never reaches here✅ # This line is never run.
