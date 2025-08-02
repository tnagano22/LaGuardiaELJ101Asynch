#!/bin/bash

for file in *.jpg; do
  # Remove the last two digits and extension to get the base
  base=$(echo "$file" | sed -E 's/[0-9]{2}\.jpg$//')
  # Create directory if it doesn't exist
  mkdir -p "$base"
  # Move the file
  mv "$file" "$base/"
done
