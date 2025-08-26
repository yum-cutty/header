#!/bin/bash

# Check if a title is provided
if [ -z "$1" ]; then
  echo "Usage: ./hashtag.sh <title>"
  exit 1
fi

# Capture the input title
TITLE="$*"

# Calculate padding to center the title
TITLE_LENGTH=${#TITLE}
TOTAL_WIDTH=66 
PADDING=$(( (TOTAL_WIDTH - TITLE_LENGTH - 2) / 2 )) 

# Create the header
echo "# $(printf '#%.0s' {1..64}) #"
printf "# %${PADDING}s%s%$((TOTAL_WIDTH - TITLE_LENGTH - PADDING - 2))s #\n" "" "$TITLE" ""
echo "# $(printf '#%.0s' {1..64}) #"