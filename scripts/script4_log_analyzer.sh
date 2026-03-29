#!/bin/bash
# Script 4: Log File Analyzer
# Author: SAN MARIA JOB | Reg No: 24BCY10086
# Course: Open Source Software
# Purpose: Reads a log file, counts keyword occurrences, shows matching lines
# Usage: ./script4_log_analyzer.sh /path/to/logfile [keyword]

# --- Accept log file path and optional keyword from command-line arguments ---
LOGFILE=$1
KEYWORD=${2:-"error"}    # Default keyword is 'error' if not provided

# --- Counter variable to track keyword matches ---
COUNT=0

# --- Validate that the log file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "[!] Error: File '$LOGFILE' not found."
    echo "    Usage: bash script4_log_analyzer.sh <logfile> [keyword]"
    exit 1
fi

# --- Check if file is empty and retry with a different keyword ---
if [ ! -s "$LOGFILE" ]; then
    echo "[!] Warning: Log file is empty."
    echo "    Retrying with keyword 'info' instead..."
    KEYWORD="info"   # Retry with a broader keyword (do-while style retry)
fi

echo "========================================================"
echo "  Log File Analyzer"
echo "  File    : $LOGFILE"
echo "  Keyword : '$KEYWORD'"
echo "========================================================"

# --- While loop: read file line by line ---
while IFS= read -r LINE; do
    # If line contains the keyword (case-insensitive), increment counter
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- Print summary ---
echo "  Result  : Keyword '$KEYWORD' found $COUNT time(s)."
echo ""

# --- Print last 5 matching lines for context ---
echo "--- Last 5 Matching Lines ---"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo "========================================================"
