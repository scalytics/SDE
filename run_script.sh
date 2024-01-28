#!/bin/bash

# Check if a command-line argument (main class) is provided
if [ -z "$1" ]; then
  echo "Please provide a main class as a command-line argument."
  exit 1
fi

# Execute the provided main class
/app/wayang-0.6.1-SNAPSHOT/bin/wayang-submit "$1"
