#!/bin/bash

# This improved script handles newline characters correctly.

while IFS= read -r line; do
  # Use parameter expansion to safely remove leading/trailing whitespace
  num=${line%%[[:space:]]*}  
  #Check if it is a number
  if [[ ! "$num" =~ ^-?[0-9]+$ ]]; then
    echo "Invalid Input: $line" >&2
    continue
  fi
  if (( num > 10 )); then
    echo "Number $num is greater than 10"
  fi
  ((count++))
done < "numbers.txt"

echo "Processed $count lines"