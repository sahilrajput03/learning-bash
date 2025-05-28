#!/bin/bash

#  Array / List in bash and zsh (`sh` lacks array support)
array=(item1 item2 item3)

# "${FILES[@]}" safely expands to each element.
for item in "${array[@]}"; do
    echo "$item"
done

echo -e "\n✅All elements of array:"
echo ${array[@]}
echo ${array[*]}

# 🔍 [@] vs [*] — What's the Difference?
# ${array[@]}: Each element is treated as a separate word, preserving spaces.
# ${array[*]}: All elements are treated as one word, especially inside quotes.
