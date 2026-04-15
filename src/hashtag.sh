#!/bin/bash
source "$(dirname "$0")/../Lib/helpers.sh"

# ============================
# Process the input argument
# ============================

init $FOUR "$@"

# ============================
# Create the header
# ============================

echo   "# $(printf '#%.0s' $(seq 1 $INNER_WIDTH)) #"
printf "# %${PADDING}s%s%$((INNER_WIDTH - INPUT_LENGTH - PADDING))s #\n" "" "$INPUT" ""
echo   "# $(printf '#%.0s' $(seq 1 $INNER_WIDTH)) #"