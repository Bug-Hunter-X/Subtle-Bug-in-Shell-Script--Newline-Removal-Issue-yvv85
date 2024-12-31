#!/bin/bash

# This script attempts to process a file containing numbers, but it has a subtle bug.

while IFS= read -r line; do
  num=$(echo $line | tr -d '
') # Removing newline but this is not safe
  if [[ $num -gt 10 ]]; then
    echo "Number $num is greater than 10"
  fi
  ((count++))
done < "numbers.txt"

echo "Processed $count lines"