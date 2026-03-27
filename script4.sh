#!/bin/bash
# Script 4: Log Analyzer

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

echo "Analyzing: $LOGFILE"
echo "Keyword: $KEYWORD"

if [ ! -f "$LOGFILE" ]; then
    echo "File not found!"
    exit 1
fi

while read LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Total matches: $COUNT"

echo ""
echo "Last 5 matches:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
