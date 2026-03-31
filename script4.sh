#!/bin/bash
# Script 4: Log File Analyzer
# Author: Sarthak
# Usage: ./log_analyzer.sh /var/log/messages

# Taking input from command-line arguments
LOGFILE=$1                         # First argument → log file path
KEYWORD=${2:-"error"}              # Second argument → keyword (default = error)
COUNT=0                            # Counter to store occurrences

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Retry loop (do-while style) if file is empty
while [ ! -s "$LOGFILE" ]; do
    echo "File is empty. Retrying in 2 seconds..."
    sleep 2
done

# Reading file line by line
while IFS= read -r LINE; do
    # Check if line contains the keyword (case-insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))   # Increment counter
    fi
done < "$LOGFILE"

# Display total count of keyword occurrences
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

echo ""
echo "Last 5 matching lines:"

# Display last 5 lines containing the keyword
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
